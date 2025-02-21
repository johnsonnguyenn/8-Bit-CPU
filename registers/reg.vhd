LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity reg IS
PORT (A : in std_logic_vector(7 DOWNTO 0); -- 8-bit A input
        res, clk : in std_logic ;
        Q : out std_logic_vector(7 DOWNTO 0)) ; -- 8-bit output
END reg;

-- A = 37, A(base2)=00100101
-- B = 29, B(base2)=00011101

ARCHITECTURE behavior OF reg IS
BEGIN		
    PROCESS (res, clk)
    BEGIN
        IF res = '0' THEN
            Q <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            Q <= A ;
        END IF ;
    END PROCESS ;
END behavior ;
