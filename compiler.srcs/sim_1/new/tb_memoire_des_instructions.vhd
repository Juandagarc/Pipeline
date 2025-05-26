library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_memoire_des_instructions is
end tb_memoire_des_instructions;

architecture Behavioral of tb_memoire_des_instructions is
    component memoire_des_instructions
        Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
               clk : in STD_LOGIC;
               out_o : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    signal A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal CLK : STD_LOGIC := '0';
    signal OUT_O : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    
begin
    
    uut: Memoire_des_instructions
            Port map (
                a => A,
                clk => CLK,
                out_o => OUT_O
            );
            
    CLK <= not CLK after ClockPeriod / 2;
    
    process
    begin
    A <= "10101010";
    wait for 20 ns;
    A <= "10101011";
    wait for 20 ns;
    A <= "10101100";
    wait for 20 ns;
    end process;


end Behavioral;
