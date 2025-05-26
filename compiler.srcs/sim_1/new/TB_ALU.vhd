library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_ALU is
end tb_ALU;

architecture Behavioral of tb_ALU is

    component ALU
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

    uut: ALU
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
        
        --001 = add
        -- first: basic add
        A_tb <= "00000001"; 
        B_tb <= "00000011"; 
        Ctrl_Alu_tb <= "001"; 
        wait for 10 ns;
        
        -- then: add with overflow/carry
        A_tb <= "00000001"; 
        B_tb <= "11111111"; 
        Ctrl_Alu_tb <= "001"; 
        wait for 10 ns;

        --011 = sub
        -- normal sub
        A_tb <= "00001000";
        B_tb <= "00000111"; 
        Ctrl_Alu_tb <= "011";
        wait for 10 ns;
        
        -- sub with negative result
        A_tb <= "00000111";
        B_tb <= "00001000"; 
        Ctrl_Alu_tb <= "011";
        wait for 10 ns;
        
        -- sub with zero result
        A_tb <= "00000101";
        B_tb <= "00000101"; 
        Ctrl_Alu_tb <= "011";
        wait for 10 ns;
        

        --010 = mul
        A_tb <= "00000100"; 
        B_tb <= "00000010"; 
        Ctrl_Alu_tb <= "010"; 
        wait for 10 ns;

        --mul with overflow
        A_tb <= "01000001"; 
        B_tb <= "00000110"; 
        Ctrl_Alu_tb <= "010"; 
        wait for 10 ns;
        
        --100 = div
        A_tb <= "00001000";
        B_tb <= "00000010";
        Ctrl_Alu_tb <= "100";
        wait for 10 ns;

        --check div by 0
        A_tb <= "00001000";
        B_tb <= "00000000"; 
        Ctrl_Alu_tb <= "100"; 
        wait for 10 ns;

        wait;
    end process;

end Behavioral;