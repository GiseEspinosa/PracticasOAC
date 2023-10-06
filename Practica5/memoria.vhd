--Listo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
	port(
		dir : in std_logic_vector(2 downto 0);		--Entradas + Estado presente
		data : out std_logic_vector(14 downto 0)	--Prueba + VF + Liga + Salida Falsa + Salida Verdadera
	);
end memoria;

architecture Behavioral of memoria is
	type mem is array(0 to 6) of std_logic_vector(14 downto 0);	--Esto sale de 2^n*m
	signal internal_mem : mem;
	begin
		--internal_mem(x) <= "prueba" & "vf" & "liga" & "salidaf" & "salidav"
		internal_mem(0) <= "000" & "1" & "100" & "0000" & "0010";
		internal_mem(1) <= "011" & "1" & "001" & "1010" & "1011";
		internal_mem(2) <= "010" & "0" & "110" & "0110" & "0111";
		internal_mem(3) <= "100" & "0" & "001" & "1001" & "1001";
		internal_mem(4) <= "010" & "1" & "001" & "1111" & "1110";
		internal_mem(5) <= "001" & "1" & "000" & "0101" & "0111";
		internal_mem(6) <= "100" & "0" & "000" & "1111" & "1111";
	process(dir)
	begin
			data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
		
end Behavioral;