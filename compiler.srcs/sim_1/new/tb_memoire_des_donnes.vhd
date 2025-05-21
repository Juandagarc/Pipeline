library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_memoire_des_donnes is
end tb_memoire_des_donnes;

architecture Behavioral of tb_memoire_des_donnes is

    component memoire_des_donnes
            Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           in_i : in STD_LOGIC_VECTOR (7 downto 0);
           rw : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           out_o : out STD_LOGIC_VECTOR (7 downto 0));
        end component;
        
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    signal A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal IN_I : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal OUT_O : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal RW : STD_LOGIC := '1';
    signal RST : STD_LOGIC := '1';
    signal CLK : STD_LOGIC := '0';

begin
    uut: memoire_des_donnes
        Port map (
            a => A,
            in_i => IN_I,
            out_o => OUT_O,
            rw => RW,
            rst => RST,
            clk => CLK
        );

    CLK <= not CLK after ClockPeriod / 2;
    
    process
    begin
    
    RST <= '1','0' after 10 ns;
    in_i <= "10011111" after 30 ns;
    A <= "11111111";
    RW <= '0', '1' after 50 ns, '0' after 60 ns;
    wait;
    end process;

end Behavioral;
