library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
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
end ALU;

architecture Behavioral of ALU is
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
        when "001" => -- Addition
            sum := ("00000000" & a_unsigned) + ("00000000" & b_unsigned);
            C <= sum(8);
            
        when "011" => -- Subtraction
            sum := ("00000000" & a_unsigned) - ("00000000" & b_unsigned);
            result <= sum(7 downto 0) ; 
            C <= '0'; 
                                    
        when "010" => -- Multiplication
            sum := (a_unsigned * b_unsigned);
            C <= '0';
        
        when "100" => -- Division
            if b_unsigned /= 0 then -- Check division by zero
                sum := ("00000000" & a_unsigned) / ("00000000" & b_unsigned);
            else
                sum := (others => '0');
            end if;
            C <= '0';
        
        when others =>
            sum := "0000000000000000" ;
            C <= '0';
    end case;

    -- Flags

    if sum > x"00FF" then
        O <= '1'; -- Overflow
    else
        O <= '0';
    end if; 

    if sum = 0 then
        Z <= '1'; -- Zero result
    else
        Z <= '0';
    end if;   
                                                                                                                                                                                                          
    N <= sum(15); -- Negative result?
    
    S <= std_logic_vector(sum(7 downto 0));
end process;
    --S <= std_logic_vector(result);

end Behavioral;