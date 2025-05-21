

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_banc_de_registres is
end tb_banc_de_registres;

architecture Behavioral of tb_banc_de_registres is

    component banc_de_registres
        Port ( 
           a_a : in STD_LOGIC_VECTOR (3 downto 0);
           a_b : in STD_LOGIC_VECTOR (3 downto 0);
           a_w : in STD_LOGIC_VECTOR (3 downto 0);
           data : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           w : in STD_LOGIC;
           qa : out STD_LOGIC_VECTOR(7 downto 0);
           qb : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    signal A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal W : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal DAT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal RST : STD_LOGIC;
    signal CLK : STD_LOGIC := '0';
    signal WRITE : STD_LOGIC;
    signal Q_A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Q_B : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
begin
    uut: banc_de_registres
        Port map (
            a_a => A,
            a_b => B,
            a_w => W,
            data => DAT,
            w => WRITE,
            reset => RST,
            clock => CLK,
            qa => Q_A,
            qb => Q_B
        );

    CLK <= not CLK after ClockPeriod / 2;
    
    process
    begin
    
    RST <= '0','1' after 30 ns,'0' after 40 ns;
    DAT <= "10101010", "00001111" after 30 ns;
    A <= "1010", "0110" after 30 ns;
    B <= "0001", "0011" after 30 ns;
    W <= "0011", "0001" after 30 ns, "0011" after 50 ns, "0111" after 60 ns;
    WRITE <= '1', '0' after 30 ns, '1' after 40 ns;
    wait;
    end process;

end Behavioral;
