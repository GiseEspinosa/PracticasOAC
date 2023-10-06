library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_frec is
	port(
		clk: in std_logic;
		div_clk: out std_logic
	);
end div_frec;

architecture Behavioral of div_frec is
begin
	process(clk) 																	-- Siempre ponemos la entrada que queremos estar viendo
	variable cuenta: std_logic_vector (27 downto 0) := X"0000000";	-- Arreglo de 28 bits, 7 nibbles
	begin
		if rising_edge(clk) then			-- Si hay un flanco de subida
			if cuenta = X"2FAF080" then	-- Si se ha llegado al número "0010 1111 1010 1111 0000 1000 0000"
				cuenta := X"0000000";		--											^
			else									--											|
				cuenta := cuenta + 1;		--											|
			end if;								--											|
		end if;									--											|
		div_clk <= cuenta(0);			-- Tomamos el bit más significativo ^ (25) para la tarjeta. (0) en simulacion
	end process;
end Behavioral;