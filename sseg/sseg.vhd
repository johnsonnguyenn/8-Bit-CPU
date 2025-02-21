LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
    PORT (bcd1, bcd2, bcd3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
        leds1, leds2, leds3, leds4 : OUT STD_LOGIC_VECTOR(0 TO 6) ;
          sign : IN STD_LOGIC) ;
END sseg;

ARCHITECTURE Behavior OF sseg IS
BEGIN
    PROCESS (bcd1, bcd2, bcd3, sign)
    BEGIN

    IF (sign = '0') THEN
                leds4 <= NOT "0000000"; 
          END IF;
             IF (sign = '1') THEN
                leds4 <= NOT "0000001"; 
          END IF;


        CASE bcd1 IS                    --abcdefg
            WHEN "0000" => leds1 <= NOT "1111110" ;
            WHEN "0001" => leds1 <= NOT "0110000" ;
            WHEN "0010" => leds1 <= NOT "1101101" ;
            WHEN "0011" => leds1 <= NOT "1111001" ;
            WHEN "0100" => leds1 <= NOT "0110011" ;
            WHEN "0101" => leds1 <= NOT "1011011" ;
            WHEN "0110" => leds1 <= NOT "1011111" ;
            WHEN "0111" => leds1 <= NOT "1110000" ;
            WHEN "1000" => leds1 <= NOT "1111111" ;
            WHEN "1001" => leds1 <= NOT "1110011" ;
                WHEN "1010" => leds1 <= "0001000" ;
                WHEN "1011" => leds1 <= "1100000" ;
                WHEN "1100" => leds1 <= "0110001" ;
                WHEN "1101" => leds1 <= "1000010" ;
                WHEN "1110" => leds1 <= "0110000" ;
                WHEN "1111" => leds1 <= "0111000" ;
            WHEN OTHERS => leds1 <= "-------" ;
        END CASE ;
		  
		  CASE bcd2 IS                    --abcdefg
            WHEN "0000" => leds2 <= NOT "1111110" ;
            WHEN "0001" => leds2 <= NOT "0110000" ;
            WHEN "0010" => leds2 <= NOT "1101101" ;
            WHEN "0011" => leds2 <= NOT "1111001" ;
            WHEN "0100" => leds2 <= NOT "0110011" ;
            WHEN "0101" => leds2 <= NOT "1011011" ;
            WHEN "0110" => leds2 <= NOT "1011111" ;
            WHEN "0111" => leds2 <= NOT "1110000" ;
            WHEN "1000" => leds2 <= NOT "1111111" ;
            WHEN "1001" => leds2 <= NOT "1110011" ;
                WHEN "1010" => leds2 <= "0001000" ;
                WHEN "1011" => leds2 <= "1100000" ;
                WHEN "1100" => leds2 <= "0110001" ;
                WHEN "1101" => leds2 <= "1000010" ;
                WHEN "1110" => leds2 <= "0110000" ;
                WHEN "1111" => leds2 <= "0111000" ;
            WHEN OTHERS => leds2 <= "-------" ;
        END CASE ;
		  
		  CASE bcd3 IS                    --abcdefg
            WHEN "0000" => leds3 <= NOT "1111110" ;
            WHEN "0001" => leds3 <= NOT "0110000" ;
            WHEN "0010" => leds3 <= NOT "1101101" ;
            WHEN "0011" => leds3 <= NOT "1111001" ;
            WHEN "0100" => leds3 <= NOT "0110011" ;
            WHEN "0101" => leds3 <= NOT "1011011" ;
            WHEN "0110" => leds3 <= NOT "1011111" ;
            WHEN "0111" => leds3 <= NOT "1110000" ;
            WHEN "1000" => leds3 <= NOT "1111111" ;
            WHEN "1001" => leds3 <= NOT "1110011" ;
                WHEN "1010" => leds3 <= "0001000" ;
                WHEN "1011" => leds3 <= "1100000" ;
                WHEN "1100" => leds3 <= "0110001" ;
                WHEN "1101" => leds3 <= "1000010" ;
                WHEN "1110" => leds3 <= "0110000" ;
                WHEN "1111" => leds3 <= "0111000" ;
            WHEN OTHERS => leds3 <= "-------" ;
        END CASE ;
		  
    END PROCESS ;
END Behavior ;