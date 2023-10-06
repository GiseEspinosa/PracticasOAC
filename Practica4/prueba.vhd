library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador_datos is
	port(
		-- corresponde a N:
		--Entradas: 4->Numero de bits para representar las entradas: 4 bits 
		entradaA: in std_logic_vector(3 downto 0); 
		--Estado presente: 6-> Número de bits para representar los estados: 3 bits 
		entradaB: in std_logic_vector(2 downto 0); 	
		salida: out std_logic_vector(6 downto 0)		--N = 4+3= 7
	);
end concatenador_datos;

architecture Behavioral of concatenador_datos is
begin

	process(entradaA, entradaB)
	begin
 --DIRECCIÓN <= ENTRADAS & ESTADO PRESENTE
		salida <= entradaA & entradaB;
	end process;
	
end Behavioral;