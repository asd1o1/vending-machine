LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE Ieee.numeric_std.all;


ENTITY tb_programmingUnit IS
END tb_programmingUnit;

ARCHITECTURE Simulation of tb_programmingUnit IS

COMPONENT programmingUnit IS
PORT (clock, reset, set, enable : IN STD_LOGIC;
		product						  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		QDN							  : IN STD_LOGic_VECTOR(2 DOWNTO 0);
		writeEnable					  : OUT STD_LOGIC;
		address						  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		data				           : OUT UNSIGNED(5 DOWNTO 0);
		done							  : OUT STD_LOGIC);
END COMPONENT;

SIGNAL clkSig, resetSig, setSig, enableSig : STD_LOGIC;
SIGNAL productSig, addressSig			  		 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL QDNSig							  			 : STD_LOGic_VECTOR(2 DOWNTO 0);
SIGNAL writeEnableSig							 : STD_LOGIC;
SIGNAL dataSig									    : UNSIGNED(5 DOWNTO 0);
SIGNAL doneSig										 : STD_LOGIC;

BEGIN

	DUT : programmingUnit
	PORT MAP(clock => clkSig, reset => resetSig, set => setSig, enable => enableSig,
				product => productSig, address => addressSig, QDN => QDNSig,
				writeEnable => writeEnableSig, data => dataSig, done => doneSig);

	PROCESS IS
	BEGIN
		clkSig <= '0';wait for 10 ns;
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		enableSig <= '1';productSig <= "10";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		QDNSig <= "101";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		QDNSig <= "001";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		resetSig <= '1';
		QDNSig <= "011";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		resetSig <= '0';
		QDNSig <= "100";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		QDNSig <= "010";
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		QDNSig <= "000";
		setSig <= '1';
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 10 ns;
		enableSig <= '0';
		WAIT;
		
	END PROCESS;
END Simulation;
