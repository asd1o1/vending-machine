LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE Ieee.numeric_std.all;


ENTITY tb_vendingMachine IS
END tb_vendingMachine;

ARCHITECTURE Simulation of tb_vendingMachine IS

COMPONENT vendingMachine IS
PORT (clock, reset, hardReset, start, set : IN STD_LOGIC;
		funct 										: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		prod 											: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Q, D, N										: IN STD_LOGic;
		change0, change1, change2				: OUT UNSIGNED(3 DOWNTO 0);
		runTotal0, runTotal1, runTotal2		: OUT UNSIGNED(3 DOWNTO 0);
		total0, total1, total2					: OUT UNSIGNED(3 DOWNTO 0));
END COMPONENT;

SIGNAL clkSig, resetSig, hardResetSig, startSig, setSig : STD_LOGIC;
SIGNAL functSig			  		 	  							  : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL prodSig							  							  : STD_LOGic_VECTOR(1 DOWNTO 0);
SIGNAL QSig, DSig, NSig 										  : STD_LOGic;
SIGNAL change0Sig, change1Sig, change2Sig					  : UNSIGNED(3 DOWNTO 0);
SIGNAL runTotal0Sig, runTotal1Sig, runTotal2Sig			  : UNSIGNED(3 DOWNTO 0);
SIGNAL total0Sig, total1Sig, total2Sig						  : UNSIGNED(3 DOWNTO 0);

BEGIN

	DUT : vendingMachine
	PORT MAP(clock => clkSig, reset => resetSig, hardReset => hardResetSig,
				start => startSig, set => setSig, funct => functSig, prod => prodSig,
				Q => QSig, D => Dsig, N => NSig,
				change0 => change0Sig, change1 => change1Sig, change2 => change2Sig,
				runTotal0 => runTotal0Sig, runTotal1 => runTotal1Sig, runTotal2 => runTotal2Sig,
				total0 => total0Sig, total1 => total1Sig, total2 => total2Sig);

	PROCESS IS
	BEGIN
	
		clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Program the price of product 00 as 8 (40 cents)
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "00";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "00";
		QSig <= '1';DSig <= '1';NSig <= '1';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		DSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		setSig <= '1';
		NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait	for 5 ns;
		setSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Display the price of product 00
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "01";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "00";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		resetSig <= '1';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		resetSig <= '0';
		wait for 5 ns;
		
		-- Vend product 00 for free
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "11";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "00";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Program product 11 as 24 (120 cents)
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "00";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "11";
		QSig <= '0';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '0';DSig <= '1';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '1';DSig <= '1';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '0';DSig <= '0';NSig <= '1';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '1';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		setSig <= '1';
		QSig <= '0';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		setSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Vend product 11 for 24 (120 cents)
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "10";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "11";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '0';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '1';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		QSig <= '0';DSig <= '0';NSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Run a hard reset
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		hardResetSig <= '1';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		hardResetSig <= '0';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		wait for 5 ns;
		
		-- Display the price of product 11 (should be 0 after hard reset)
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '1';functSig <= "01";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		startSig <= '0';prodSig <= "11";
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		resetSig <= '1';
		wait for 5 ns;
		
		clkSig <= '1';wait for 10 ns;clkSig <= '0';wait for 5 ns;
		resetSig <= '0';
		wait for 5 ns;
		
		WAIT;
		
	END PROCESS;
END Simulation;

