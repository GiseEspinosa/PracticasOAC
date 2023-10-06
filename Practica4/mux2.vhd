library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2 is
	port(
		sel : in std_logic;
		I0 : in std_logic_vector(2 downto 0);	--ligaF
		I1 : in std_logic_vector(2 downto 0);	--ligaV
		O : out std_logic_vector(2 downto 0)
	);
end mux2;

architecture Behavioral of mux2 is
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