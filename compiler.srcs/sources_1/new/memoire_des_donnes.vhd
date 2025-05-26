library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memoire_des_donnes is
    Port ( a : in STD_LOGIC_VECTOR(7 downto 0);
           in_i : in STD_LOGIC_VECTOR(7 downto 0);
           rw : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           out_o : out STD_LOGIC_VECTOR (7 downto 0));
end memoire_des_donnes;

architecture Behavioral of memoire_des_donnes is
        type data is array (0 to 255) of std_logic_vector(7 downto 0);
        signal memory : data := (others => (others => '0'));  -- Initialize memory 0
begin

    process(clk)
        begin
        if rising_edge(clk) then
            if rst = '0' then
                  memory <= (others => (others => '0'));
            else
                if rw = '0' then 
                    memory(to_integer(unsigned(a))) <= in_i;  -- Write
                else
                    out_o <= memory(to_integer(unsigned(a))); -- Read
                end if;
             
            end if;  
        end if;     
    end process;

end Behavioral;
