library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux1X2X1_3 is
	Port (
		seleccion : in STD_LOGIC;
		E0 : in STD_LOGIC_VECTOR(2 downto 0);		-- Incremento
		E1 : in STD_LOGIC_VECTOR(2 downto 0);		-- Salto
		salida : out STD_LOGIC_VECTOR(2 downto 0)	-- Estado siguiente
	);
end mux1X2X1_3;

architecture Behavioral of mux1X2X1_3 is
begin
	Process (seleccion, E0, E1)
	begin
		if seleccion = '0' then
			salida <= E0;
		elsif seleccion = '1' then
			salida <= E1;
		end if;
	end process;
end Behavioral;