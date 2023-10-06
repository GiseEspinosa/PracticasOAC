--Listo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux1X2X1 is
	port(
		sel : in std_logic;
		I0 : in std_logic_vector(3 downto 0);	--salidaF
		I1 : in std_logic_vector(3 downto 0);	--salidaV
		O : out std_logic_vector(3 downto 0)
	);
end mux1X2X1;

architecture Behavioral of mux1X2X1 is
begin
	
	process(sel,I0,I1)
	begin
		if sel = '0' then
			 O <= I0;
		elsif sel = '1' then
			O <= I1;
		end if;
	end process;
end Behavioral;