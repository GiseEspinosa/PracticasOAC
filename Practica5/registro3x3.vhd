library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro3x3 is
	Port(
		reloj : in STD_LOGIC;
		reset : in STD_LOGIC;
		entrada : in STD_LOGIC_VECTOR(2 downto 0);
		salida : out STD_LOGIC_VECTOR(2 downto 0)
	);
end registro3x3;

architecture Behavioral of registro3x3 is
signal valor_interno : std_logic_vector (2 downto 0) := B"000";
begin
	process(reloj, reset, entrada)
	begin
		if reset = '0' then
			valor_interno <= B"000";
		elsif rising_edge(reloj) then
			valor_interno <= entrada;
		end if;
	end process;
	
	process(valor_interno)
	begin
		salida <= valor_interno;
	end process;
end Behavioral;