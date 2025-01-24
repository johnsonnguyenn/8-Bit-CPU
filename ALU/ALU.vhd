LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
entity ALU is -- ALU unit includes Reg. 3
port ( clk, res : in std_logic ;
 A, B: in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
 opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
 studentID : in std_logic_vector(3 downto 0);
 R1, R2, R3 : out std_logic_vector(3 downto 0); -- 8-bit Result
 neg : out std_logic);
end ALU ;
architecture calculation of ALU is
signal Result: std_logic_vector(7 downto 0);

begin
process ( clk, res )
begin
if res = '0' then
Result <= "00000000" ;
elsif (clk'EVENT AND clk = '1') then
case opcode is
when "00000001" =>
Result <= (A + B);
when "00000010" =>
IF (A>B) THEN
Result <= (A + (NOT B) + 1);
neg <= '0';
ELSIF (B>A) THEN
Result <= (B + (NOT A) + 1);
neg <= '1';
ELSIF (B=A) THEN
Result <= "00000000";
neg <= '0';
END IF;
when "00000100" =>
Result <= NOT A;
neg <= '0';
when "00001000" =>
Result <= NOT(A AND B);
neg <= '0';
when "00010000" =>
Result <= NOT (A OR B);
neg <= '0';
when "00100000" =>
Result <= (A AND B);
neg <= '0';
when "01000000" =>
Result <= (A XOR B);
neg <= '0';
when "10000000" =>
Result <= (A OR B);
when others =>
Result <= "--------";
end case ;

R1 <= Result(7 downto 4);
R2 <= Result(3 downto 0);
R3 <= studentID(3 downto 0);

end if ;
end process ;
end calculation ;
