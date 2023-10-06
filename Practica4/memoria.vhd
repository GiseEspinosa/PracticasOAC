--Listo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
	port(
		dir : in std_logic_vector(2 downto 0);		--Entradas + Estado presente
		data : out std_logic_vector(15 downto 0)	--Liga + Salidas
	);
end memoria;

architecture Behavioral of memoria is
	type mem is array(0 to 6) of std_logic_vector(15 downto 0);	--Esto sale de 2^n*m
	signal internal_mem : mem;
	begin
		-- Ahora solo necesitamos 7 porque es uno para cada estado
	 --internal_mem(x) <= "prueba" & "ligaf" & "ligav" & "salidaf" & "salidav"
		internal_mem(0) <= "00" & "001" & "010" & "0000" & "0010";
		internal_mem(1) <= "11" & "100" & "001" & "1010" & "1011";
		internal_mem(2) <= "10" & "011" & "001" & "1111" & "1110";
		internal_mem(3) <= "01" & "110" & "000" & "0101" & "0111";
		internal_mem(4) <= "10" & "110" & "101" & "0110" & "0111";
		internal_mem(5) <= "00" & "001" & "001" & "1001" & "1001";
		internal_mem(6) <= "00" & "000" & "000" & "1111" & "1111";
	process(dir)
	begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
		
end Behavioral;