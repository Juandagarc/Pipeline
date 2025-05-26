

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
    
    --reset: set reg values to zero
    RST <= '0';
    A <= "0000";
    B <= "0000";
    WRITE <= '0';
    DAT <= "00000000";
    W <= "0000";
    wait for 30 ns;
    RST <= '1';
    
    --write 10101010 to register 1 and  00001111 to 2
    DAT <= "10101010";
    WRITE <= '1';
    W <= "0001";
    wait for 10 ns;
    DAT <= "00001111";
    W <= "0010";
    wait for 10 ns;
    
    --read register 1 (via A) and 2 (via B)
    WRITE <= '0';
    A <= "0001";
    B <= "0010";
    wait for 10 ns;
    
    --write 00001100 to register 3 and read 3 at the same time
    WRITE <= '1';
    DAT <= "00001100";
    W <= "0011";
    A <= "0011";
    wait for 10 ns;
    
     --write 00001000 to register 4 and read 4 at the same time
    WRITE <= '1';
    DAT <= "00001000";
    W <= "0100";
    B <= "0100";
    wait for 10 ns;
    
    --write to reg 1 with write set to 0: read should not have changed
    WRITE <= '0';
    W <= "0001";
    wait for 10 ns;
    A <= "0001";
    wait for 100 ns;
    
    end process;

end Behavioral;
