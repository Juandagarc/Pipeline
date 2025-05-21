library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_UAL is
end tb_UAL;

architecture Behavioral of tb_UAL is

    component UAL
        Port ( 
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : in STD_LOGIC_VECTOR(7 downto 0);
            Ctrl_Alu : in STD_LOGIC_VECTOR(2 downto 0);
            S : out STD_LOGIC_VECTOR(7 downto 0);
            N : out STD_LOGIC;
            O : out STD_LOGIC;
            Z : out STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;

    signal A_tb : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B_tb : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Ctrl_Alu_tb : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal S_tb : STD_LOGIC_VECTOR(7 downto 0);
    signal N_tb, O_tb, Z_tb, C_tb : STD_LOGIC;

begin

    uut: UAL
        Port map (
            A => A_tb,
            B => B_tb,
            Ctrl_Alu => Ctrl_Alu_tb,
            S => S_tb,
            N => N_tb,
            O => O_tb,
            Z => Z_tb,
            C => C_tb
        );
    process
    begin

        A_tb <= "00000001"; 
        B_tb <= "00000011"; 
        Ctrl_Alu_tb <= "00"; 
        wait for 10 ns;


        A_tb <= "00000101";
        B_tb <= "00000011"; 
        Ctrl_Alu_tb <= "01";
        wait for 10 ns;

        A_tb <= "00000100"; 
        B_tb <= "00000011"; 
        Ctrl_Alu_tb <= "10"; 
        wait for 10 ns;

        A_tb <= "00001000";
        B_tb <= "00000010";
        Ctrl_Alu_tb <= "11";
        wait for 10 ns;

 
        A_tb <= "00001000";
        B_tb <= "00000000"; 
        Ctrl_Alu_tb <= "11"; 
        wait for 10 ns;

        wait;
    end process;

end Behavioral;