library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register2 is
	Port(
		CLK: in std_logic;
		RESET : in std_logic;
		DATA_IN : in std_logic_vector(2 downto 0);	--Liga
		DATA_OUT : out std_logic_vector(2 downto 0)	--Estado presente
	);
end register2;

architecture Behavioral of register2 is
signal internal_value : std_logic_vector(2 downto 0) := B"000";
begin
	
	process (CLK, RESET, DATA_IN)
	begin
		if RESET = '0' then
			internal_value <= B"000";
		elsif rising_edge(CLK) then
			internal_value <= DATA_IN;
		end if;
	end process;
	
	process (internal_value)
	begin
		DATA_OUT <= internal_value;
	end process;
	
end Behavioral;