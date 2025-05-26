----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 09:43:49 PM
-- Design Name: 
-- Module Name: tb_unite_de_controle - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_unite_de_controle is
end tb_unite_de_controle;

architecture Behavioral of tb_unite_de_controle is

    component Unite_de_controle is
        Port ( 
            common_clk : in STD_LOGIC;
            pipeline_clk : in STD_LOGIC;
            instruction : in std_logic_vector(31 downto 0);
            inst_curr : out std_logic_vector(31 downto 0); 
            inst_di : out std_logic_vector(7 downto 0);
            inst_ex : out std_logic_vector(7 downto 0);
            inst_me : out std_logic_vector(7 downto 0);
            op2_di : out std_logic_vector(7 downto 0);
            op2_ex : out std_logic_vector(7 downto 0);
            op2_me : out std_logic_vector(7 downto 0);       
            reg_a_in :  out std_logic_vector(3 downto 0);
            reg_a_out :  out std_logic_vector(7 downto 0);
            reg_b_in :  out std_logic_vector(3 downto 0);
            reg_b_out :  out std_logic_vector(7 downto 0);
            reg_data :  out std_logic_vector(7 downto 0);
            reg_write_addr : out std_logic_vector(3 downto 0);
            reg_wr : out STD_LOGIC
        );
    end component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant ClockFrequency_PL : integer := 20e6; -- 20 MHz 
    constant ClockPeriod_PL    : time    := 1000 ms / ClockFrequency_PL;
    signal CLK : STD_LOGIC := '0';
    signal CLK_PL : STD_LOGIC := '0';
    signal curr_instr : std_logic_vector(31 downto 0) := (others => '0');
    
    signal inst_curr : std_logic_vector(31 downto 0) := (others => '0');
    signal inst_di : std_logic_vector(7 downto 0) := (others => '0');
    signal inst_ex : std_logic_vector(7 downto 0) := (others => '0');
    signal inst_me : std_logic_vector(7 downto 0) := (others => '0');
    signal op2_di : std_logic_vector(7 downto 0) := (others => '0');
    signal op2_ex : std_logic_vector(7 downto 0) := (others => '0');
    signal op2_me : std_logic_vector(7 downto 0) := (others => '0');
    signal reg_a_in : std_logic_vector(3 downto 0) := (others => '0');
    signal reg_a_out : std_logic_vector(7 downto 0) := (others => '0');
    signal reg_b_in : std_logic_vector(3 downto 0) := (others => '0');
    signal reg_b_out : std_logic_vector(7 downto 0) := (others => '0');
    signal reg_data : std_logic_vector(7 downto 0) := (others => '0');
    signal reg_write_addr : std_logic_vector(3 downto 0) := (others => '0');
    signal reg_wr : STD_LOGIC := '0';
    
begin

    uut: Unite_de_controle 
    Port map (
        common_clk => CLK,
        pipeline_clk => CLK_PL,
        instruction => curr_instr,
        inst_curr => inst_curr,
        inst_di => inst_di,
        inst_ex => inst_ex,
        inst_me => inst_me,
        op2_di => op2_di,
        op2_ex => op2_ex,
        op2_me => op2_me, 
        reg_a_in => reg_a_in,
        reg_a_out =>  reg_a_out,
        reg_b_in =>  reg_b_in,
        reg_b_out =>  reg_b_out,
        reg_data =>  reg_data,
        reg_write_addr => reg_write_addr,
        reg_wr => reg_wr
    );
  
    CLK <= not CLK after ClockPeriod / 2;
    CLK_PL <= not CLK_PL after ClockPeriod_PL / 2;
    
    process
    begin
    wait for 20ns;
    curr_instr <= "00000110000000110101010100000000"; --sto in reg 3 val 55 = 6 3 55 0
    wait for 100ns;
    
    curr_instr <= "00000110000001000000111100000000"; --sto in reg 4 val  = 6 4 val 0
    wait for 100ns;
    
    curr_instr <= "00000101000001010000010000000000"; --mov val in reg 4 to 5
    wait for 100ns;
    
    curr_instr <= "00000001000001110000010000000011"; --add 7 5 3 = 1 7 5 3
    wait for 100ns;
    
    end process;

end Behavioral;

