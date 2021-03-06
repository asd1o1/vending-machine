LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE Ieee.numeric_std.all;


ENTITY tb_toBCD IS
END tb_toBCD;

ARCHITECTURE Simulation OF tb_toBCD IS

COMPONENT toBCD IS
PORT (binaryIn 	  : IN UNSIGNED(7 DOWNTO 0);
		decimal0		  : OUT UNSIGNED(3 DOWNTO 0);
		decimal1		  : OUT UNSIGNED(3 DOWNTO 0);
		decimal2		  : OUT UNSIGNED(3 DOWNTO 0));
END COMPONENT;

SIGNAL binaryInSig : UNSIGNED(7 DOWNTO 0);
SIGNAL decimal0Sig, decimal1Sig, decimal2Sig : UNSIGNED(3 DOWNTO 0);

BEGIN
DUT : toBCD
PORT MAP(binaryIn => binaryInSig, decimal0 => decimal0Sig, decimal1 => decimal1Sig, decimal2 => decimal2Sig);

PROCESS IS
BEGIN

binaryInSig <= "00000000";wait for 10 ns;
binaryInSig <= "00000001";wait for 10 ns;
binaryInSig <= "00000010";wait for 10 ns;
binaryInSig <= "00000011";wait for 10 ns;
binaryInSig <= "00000100";wait for 10 ns;
binaryInSig <= "00000101";wait for 10 ns;
binaryInSig <= "00000110";wait for 10 ns;
binaryInSig <= "00000111";wait for 10 ns;
binaryInSig <= "00001000";wait for 10 ns;
binaryInSig <= "00001001";wait for 10 ns;
binaryInSig <= "00001010";wait for 10 ns;
binaryInSig <= "00001011";wait for 10 ns;
binaryInSig <= "00001100";wait for 10 ns;
binaryInSig <= "00001101";wait for 10 ns;
binaryInSig <= "00001110";wait for 10 ns;
binaryInSig <= "00001111";wait for 10 ns;
binaryInSig <= "00010000";wait for 10 ns;
binaryInSig <= "00010001";wait for 10 ns;
binaryInSig <= "00010010";wait for 10 ns;
binaryInSig <= "00010011";wait for 10 ns;
binaryInSig <= "00010100";wait for 10 ns;
binaryInSig <= "00010101";wait for 10 ns;
binaryInSig <= "00010110";wait for 10 ns;
binaryInSig <= "00010111";wait for 10 ns;
binaryInSig <= "00011000";wait for 10 ns;
binaryInSig <= "00011001";wait for 10 ns;
binaryInSig <= "00011010";wait for 10 ns;
binaryInSig <= "00011011";wait for 10 ns;
binaryInSig <= "00011100";wait for 10 ns;
binaryInSig <= "00011101";wait for 10 ns;
binaryInSig <= "00011110";wait for 10 ns;
binaryInSig <= "00011111";wait for 10 ns;
binaryInSig <= "00100000";wait for 10 ns;
binaryInSig <= "00100001";wait for 10 ns;
binaryInSig <= "00100010";wait for 10 ns;
binaryInSig <= "00100011";wait for 10 ns;
binaryInSig <= "00100100";wait for 10 ns;
binaryInSig <= "00100101";wait for 10 ns;
binaryInSig <= "00100110";wait for 10 ns;
binaryInSig <= "00100111";wait for 10 ns;
binaryInSig <= "00101000";wait for 10 ns;
binaryInSig <= "00101001";wait for 10 ns;
binaryInSig <= "00101010";wait for 10 ns;
binaryInSig <= "00101011";wait for 10 ns;
binaryInSig <= "00101100";wait for 10 ns;
binaryInSig <= "00101101";wait for 10 ns;
binaryInSig <= "00101110";wait for 10 ns;
binaryInSig <= "00101111";wait for 10 ns;
binaryInSig <= "00110000";wait for 10 ns;
binaryInSig <= "00110001";wait for 10 ns;
binaryInSig <= "00110010";wait for 10 ns;
binaryInSig <= "00110011";wait for 10 ns;
binaryInSig <= "00110100";wait for 10 ns;
binaryInSig <= "00110101";wait for 10 ns;
binaryInSig <= "00110110";wait for 10 ns;
binaryInSig <= "00110111";wait for 10 ns;
binaryInSig <= "00111000";wait for 10 ns;
binaryInSig <= "00111001";wait for 10 ns;
binaryInSig <= "00111010";wait for 10 ns;
binaryInSig <= "00111011";wait for 10 ns;
binaryInSig <= "00111100";wait for 10 ns;
binaryInSig <= "00111101";wait for 10 ns;
binaryInSig <= "00111110";wait for 10 ns;
binaryInSig <= "00111111";wait for 10 ns;

binaryInSig <= "01000000";wait for 10 ns;
binaryInSig <= "01000001";wait for 10 ns;
binaryInSig <= "01000010";wait for 10 ns;
binaryInSig <= "01000011";wait for 10 ns;
binaryInSig <= "01000100";wait for 10 ns;
binaryInSig <= "01000101";wait for 10 ns;
binaryInSig <= "01000110";wait for 10 ns;
binaryInSig <= "01000111";wait for 10 ns;
binaryInSig <= "01001000";wait for 10 ns;
binaryInSig <= "01001001";wait for 10 ns;
binaryInSig <= "01001010";wait for 10 ns;
binaryInSig <= "01001011";wait for 10 ns;
binaryInSig <= "01001100";wait for 10 ns;
binaryInSig <= "01001101";wait for 10 ns;
binaryInSig <= "01001110";wait for 10 ns;
binaryInSig <= "01001111";wait for 10 ns;
binaryInSig <= "01010000";wait for 10 ns;
binaryInSig <= "01010001";wait for 10 ns;
binaryInSig <= "01010010";wait for 10 ns;
binaryInSig <= "01010011";wait for 10 ns;
binaryInSig <= "01010100";wait for 10 ns;
binaryInSig <= "01010101";wait for 10 ns;
binaryInSig <= "01010110";wait for 10 ns;
binaryInSig <= "01010111";wait for 10 ns;
binaryInSig <= "01011000";wait for 10 ns;
binaryInSig <= "01011001";wait for 10 ns;
binaryInSig <= "01011010";wait for 10 ns;
binaryInSig <= "01011011";wait for 10 ns;
binaryInSig <= "01011100";wait for 10 ns;
binaryInSig <= "01011101";wait for 10 ns;
binaryInSig <= "01011110";wait for 10 ns;
binaryInSig <= "01011111";wait for 10 ns;
binaryInSig <= "01100000";wait for 10 ns;
binaryInSig <= "01100001";wait for 10 ns;
binaryInSig <= "01100010";wait for 10 ns;
binaryInSig <= "01100011";wait for 10 ns;
binaryInSig <= "01100100";wait for 10 ns;
binaryInSig <= "01100101";wait for 10 ns;
binaryInSig <= "01100110";wait for 10 ns;
binaryInSig <= "01100111";wait for 10 ns;
binaryInSig <= "01101000";wait for 10 ns;
binaryInSig <= "01101001";wait for 10 ns;
binaryInSig <= "01101010";wait for 10 ns;
binaryInSig <= "01101011";wait for 10 ns;
binaryInSig <= "01101100";wait for 10 ns;
binaryInSig <= "01101101";wait for 10 ns;
binaryInSig <= "01101110";wait for 10 ns;
binaryInSig <= "01101111";wait for 10 ns;
binaryInSig <= "01110000";wait for 10 ns;
binaryInSig <= "01110001";wait for 10 ns;
binaryInSig <= "01110010";wait for 10 ns;
binaryInSig <= "01110011";wait for 10 ns;
binaryInSig <= "01110100";wait for 10 ns;
binaryInSig <= "01110101";wait for 10 ns;
binaryInSig <= "01110110";wait for 10 ns;
binaryInSig <= "01110111";wait for 10 ns;
binaryInSig <= "01111000";wait for 10 ns;
binaryInSig <= "01111001";wait for 10 ns;
binaryInSig <= "01111010";wait for 10 ns;
binaryInSig <= "01111011";wait for 10 ns;
binaryInSig <= "01111100";wait for 10 ns;
binaryInSig <= "01111101";wait for 10 ns;
binaryInSig <= "01111110";wait for 10 ns;
binaryInSig <= "01111111";wait for 10 ns;

binaryInSig <= "10000000";wait for 10 ns;
binaryInSig <= "10000001";wait for 10 ns;
binaryInSig <= "10000010";wait for 10 ns;
binaryInSig <= "10000011";wait for 10 ns;
binaryInSig <= "10000100";wait for 10 ns;
binaryInSig <= "10000101";wait for 10 ns;
binaryInSig <= "10000110";wait for 10 ns;
binaryInSig <= "10000111";wait for 10 ns;
binaryInSig <= "10001000";wait for 10 ns;
binaryInSig <= "10001001";wait for 10 ns;
binaryInSig <= "10001010";wait for 10 ns;
binaryInSig <= "10001011";wait for 10 ns;
binaryInSig <= "10001100";wait for 10 ns;
binaryInSig <= "10001101";wait for 10 ns;
binaryInSig <= "10001110";wait for 10 ns;
binaryInSig <= "10001111";wait for 10 ns;
binaryInSig <= "10010000";wait for 10 ns;
binaryInSig <= "10010001";wait for 10 ns;
binaryInSig <= "10010010";wait for 10 ns;
binaryInSig <= "10010011";wait for 10 ns;
binaryInSig <= "10010100";wait for 10 ns;
binaryInSig <= "10010101";wait for 10 ns;
binaryInSig <= "10010110";wait for 10 ns;
binaryInSig <= "10010111";wait for 10 ns;
binaryInSig <= "10011000";wait for 10 ns;
binaryInSig <= "10011001";wait for 10 ns;
binaryInSig <= "10011010";wait for 10 ns;
binaryInSig <= "10011011";wait for 10 ns;
binaryInSig <= "10011100";wait for 10 ns;
binaryInSig <= "10011101";wait for 10 ns;
binaryInSig <= "10011110";wait for 10 ns;
binaryInSig <= "10011111";wait for 10 ns;
binaryInSig <= "10100000";wait for 10 ns;
binaryInSig <= "10100001";wait for 10 ns;
binaryInSig <= "10100010";wait for 10 ns;
binaryInSig <= "10100011";wait for 10 ns;
binaryInSig <= "10100100";wait for 10 ns;
binaryInSig <= "10100101";wait for 10 ns;
binaryInSig <= "10100110";wait for 10 ns;
binaryInSig <= "10100111";wait for 10 ns;
binaryInSig <= "10101000";wait for 10 ns;
binaryInSig <= "10101001";wait for 10 ns;
binaryInSig <= "10101010";wait for 10 ns;
binaryInSig <= "10101011";wait for 10 ns;
binaryInSig <= "10101100";wait for 10 ns;
binaryInSig <= "10101101";wait for 10 ns;
binaryInSig <= "10101110";wait for 10 ns;
binaryInSig <= "10101111";wait for 10 ns;
binaryInSig <= "10110000";wait for 10 ns;
binaryInSig <= "10110001";wait for 10 ns;
binaryInSig <= "10110010";wait for 10 ns;
binaryInSig <= "10110011";wait for 10 ns;
binaryInSig <= "10110100";wait for 10 ns;
binaryInSig <= "10110101";wait for 10 ns;
binaryInSig <= "10110110";wait for 10 ns;
binaryInSig <= "10110111";wait for 10 ns;
binaryInSig <= "10111000";wait for 10 ns;
binaryInSig <= "10111001";wait for 10 ns;
binaryInSig <= "10111010";wait for 10 ns;
binaryInSig <= "10111011";wait for 10 ns;
binaryInSig <= "10111100";wait for 10 ns;
binaryInSig <= "10111101";wait for 10 ns;
binaryInSig <= "10111110";wait for 10 ns;
binaryInSig <= "10111111";wait for 10 ns;

binaryInSig <= "11000000";wait for 10 ns;
binaryInSig <= "11000001";wait for 10 ns;
binaryInSig <= "11000010";wait for 10 ns;
binaryInSig <= "11000011";wait for 10 ns;
binaryInSig <= "11000100";wait for 10 ns;
binaryInSig <= "11000101";wait for 10 ns;
binaryInSig <= "11000110";wait for 10 ns;
binaryInSig <= "11000111";wait for 10 ns;
binaryInSig <= "11001000";wait for 10 ns;
binaryInSig <= "11001001";wait for 10 ns;
binaryInSig <= "11001010";wait for 10 ns;
binaryInSig <= "11001011";wait for 10 ns;
binaryInSig <= "11001100";wait for 10 ns;
binaryInSig <= "11001101";wait for 10 ns;
binaryInSig <= "11001110";wait for 10 ns;
binaryInSig <= "11001111";wait for 10 ns;
binaryInSig <= "11010000";wait for 10 ns;
binaryInSig <= "11010001";wait for 10 ns;
binaryInSig <= "11010010";wait for 10 ns;
binaryInSig <= "11010011";wait for 10 ns;
binaryInSig <= "11010100";wait for 10 ns;
binaryInSig <= "11010101";wait for 10 ns;
binaryInSig <= "11010110";wait for 10 ns;
binaryInSig <= "11010111";wait for 10 ns;
binaryInSig <= "11011000";wait for 10 ns;
binaryInSig <= "11011001";wait for 10 ns;
binaryInSig <= "11011010";wait for 10 ns;
binaryInSig <= "11011011";wait for 10 ns;
binaryInSig <= "11011100";wait for 10 ns;
binaryInSig <= "11011101";wait for 10 ns;
binaryInSig <= "11011110";wait for 10 ns;
binaryInSig <= "11011111";wait for 10 ns;
binaryInSig <= "11100000";wait for 10 ns;
binaryInSig <= "11100001";wait for 10 ns;
binaryInSig <= "11100010";wait for 10 ns;
binaryInSig <= "11100011";wait for 10 ns;
binaryInSig <= "11100100";wait for 10 ns;
binaryInSig <= "11100101";wait for 10 ns;
binaryInSig <= "11100110";wait for 10 ns;
binaryInSig <= "11100111";wait for 10 ns;
binaryInSig <= "11101000";wait for 10 ns;
binaryInSig <= "11101001";wait for 10 ns;
binaryInSig <= "11101010";wait for 10 ns;
binaryInSig <= "11101011";wait for 10 ns;
binaryInSig <= "11101100";wait for 10 ns;
binaryInSig <= "11101101";wait for 10 ns;
binaryInSig <= "11101110";wait for 10 ns;
binaryInSig <= "11101111";wait for 10 ns;
binaryInSig <= "11110000";wait for 10 ns;
binaryInSig <= "11110001";wait for 10 ns;
binaryInSig <= "11110010";wait for 10 ns;
binaryInSig <= "11110011";wait for 10 ns;
binaryInSig <= "11110100";wait for 10 ns;
binaryInSig <= "11110101";wait for 10 ns;
binaryInSig <= "11110110";wait for 10 ns;
binaryInSig <= "11110111";wait for 10 ns;
binaryInSig <= "11111000";wait for 10 ns;
binaryInSig <= "11111001";wait for 10 ns;
binaryInSig <= "11111010";wait for 10 ns;
binaryInSig <= "11111011";wait for 10 ns;
binaryInSig <= "11111100";wait for 10 ns;
binaryInSig <= "11111101";wait for 10 ns;
binaryInSig <= "11111110";wait for 10 ns;
binaryInSig <= "11111111";wait for 10 ns;

WAIT;

END PROCESS;
END Simulation;