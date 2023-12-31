library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux4 is
	port(
		sel : in std_logic_vector(2 downto 0);
		I0 : in std_logic;	--A
		I1 : in std_logic;	--B
		I2 : in std_logic;	--C
		I3 : in std_logic;	--D
		I4 : in std_logic;	--Qaux
		O : out std_logic
	);
end mux4;

architecture Behavioral of mux4 is
begin
	
	process(sel,I0,I1,I2,I3,I4)
	begin
		if sel = "000" then
			 O <= I0;
		elsif sel = "001" then
			O <= I1;
		elsif sel = "010" then
			O <= I2;
		elsif sel = "011" then
			O <= I3;
		elsif sel = "100" then
			O <= I4;
		end if;
	end process;
end Behavioral;