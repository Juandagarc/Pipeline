library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memoire_des_instructions is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           out_o : out STD_LOGIC_VECTOR (31 downto 0));
end Memoire_des_instructions;

architecture Behavioral of Memoire_des_instructions is

    type instruction is array (0 to 255) of std_logic_vector(31 downto 0);
    signal ROM : instruction := (others => (others => '0'));  -- Initialize memory 0

begin

    process(clk)
    begin
        if rising_edge(clk) then
            out_o <= ROM(to_integer(unsigned(a))); 
        end if;
    end process;
end Behavioral;
