library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity banc_de_registres is
    Port ( a_a : in STD_LOGIC_VECTOR (3 downto 0);
           a_b : in STD_LOGIC_VECTOR (3 downto 0);
           a_w : in STD_LOGIC_VECTOR (3 downto 0);
           data : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           w : in STD_LOGIC;
           qa : out STD_LOGIC_VECTOR(7 downto 0);
           qb : out STD_LOGIC_VECTOR (7 downto 0));
end banc_de_registres;

architecture Behavioral of banc_de_registres is
    type reg_array is array (0 to 15) of std_logic_vector(7 downto 0);
    signal Regs: reg_array := (others =>(others => '0'));
    
begin

    process(clock)
    begin
    if rising_edge(clock) then
        if reset = '0' then
            Regs <= (others =>(others => '0'));
        else 
            if w = '1' and a_a = a_w  then 
                qa <= data;
            else
                qa <= Regs(to_integer(unsigned(a_a)));
            end if;
            
            if w = '1' and a_b = a_w then
                qb <= data;  
            else
                qb <= Regs(to_integer(unsigned(a_b))); 
            end if; 
   
            if w = '1' then
                Regs(to_integer(unsigned(a_w))) <= data;
            end if;
        end if; 
    end if;     
    end process;


end Behavioral;
