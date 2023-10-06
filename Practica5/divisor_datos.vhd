--Listo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	port(
		entrada : in std_logic_vector(14 downto 0);
		prueba : out std_logic_vector(2 downto 0);	-- Necesitamos 2 bits para representar A, B, C y D + 1 bit para Qaux
		vf : out std_logic;
		liga : out std_logic_vector(2 downto 0);		-- Tenemos 7 estados, necesitamos 3 bits para representarlos
		salidaF : out std_logic_vector(3 downto 0);	-- Tenemos 4 salidas, necesitamos 1 bit para cada una
		salidaV : out std_logic_vector(3 downto 0)	-- Tenemos 4 salidas, necesitamos 1 bit para cada una
	);
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	
	process(entrada)
	begin
		prueba <= entrada(14 downto 12);
		vf <= entrada(11);
		liga <= entrada(10 downto 8);
		salidaF <= entrada(7 downto 4);
		salidaV <= entrada(3 downto 0);
	end process;
end Behavioral;