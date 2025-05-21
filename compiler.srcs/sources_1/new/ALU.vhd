library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UAL is
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
end UAL;

architecture Behavioral of UAL is
    signal result : unsigned(7 downto 0);
    signal a_unsigned : unsigned(7 downto 0);
    signal b_unsigned : unsigned(7 downto 0);
begin

    a_unsigned <= unsigned(A);
    b_unsigned <= unsigned(B);

    process (a_unsigned, b_unsigned, Ctrl_Alu)
    variable sum : unsigned(15 downto 0);
begin
    case Ctrl_Alu is
        when "000" => -- Addition
            sum := ("00000000" & a_unsigned) + ("00000000" & b_unsigned);
            result <= sum(7 downto 0) ; 
            C <= sum(8);
            
        when "001" => -- Subtraction
            sum := ("00000000" & a_unsigned) - ("00000000" & b_unsigned);
            result <= sum(7 downto 0) ; 
            C <= '0';
            N <= sum(15); -- Negative result
        when "010" => -- Multiplication
            sum := (a_unsigned * b_unsigned);
            result <= sum(7 downto 0);
            C <= '0';
        
        when "011" => -- Division
            if b_unsigned /= 0 then -- Check division by zero
                sum := ("00000000" & a_unsigned) / ("00000000" & b_unsigned);
            else
                sum := (others => '0');
            end if;
            result <= sum(7 downto 0);
            C <= '0';
        
        when others =>
            result <= (others => '0');
            C <= '0';
    end case;

    -- Flags

    if result > x"00FF" then
        O <= '1'; -- Overflow
    else
        O <= '0';
    end if;

    if result = 0 then
        Z <= '1'; -- Zero result
    else
        Z <= '0';
    end if;
end process;
    S <= std_logic_vector(result);

end Behavioral;