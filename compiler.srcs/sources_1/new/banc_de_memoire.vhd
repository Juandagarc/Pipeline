----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 06:01:13 PM
-- Design Name: 
-- Module Name: memoire_des_donnes - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoire_des_donnes is
    Port ( a : in STD_LOGIC;
           in : in STD_LOGIC;
           rw : in STD_LOGIC_VECTOR (7 downto 0);
           rst : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC);
end memoire_des_donnes;

architecture Behavioral of memoire_des_donnes is

begin


end Behavioral;
