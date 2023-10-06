-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "09/29/2023 07:12:23"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica4 IS
    PORT (
	estado : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- estado[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_estado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|cuenta[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \estado[2]~output_o\ : std_logic;
SIGNAL \estado[1]~output_o\ : std_logic;
SIGNAL \estado[0]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cuenta~12_combout\ : std_logic;
SIGNAL \inst1|Add0~51\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|Add0~53\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cuenta~11_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|cuenta~10_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|cuenta~9_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|cuenta~8_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|cuenta~7_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|cuenta~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|cuenta~4_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|cuenta~3_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|cuenta~2_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|cuenta~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~9_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|cuenta~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|cuenta~0_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|cuenta[24]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|internal_value[1]~1_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst10|O~0_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst10|O~2_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst10|O~1_combout\ : std_logic;
SIGNAL \inst10|O~3_combout\ : std_logic;
SIGNAL \inst8|O[0]~0_combout\ : std_logic;
SIGNAL \inst2|internal_value[2]~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst9|O[1]~0_combout\ : std_logic;
SIGNAL \inst9|O[1]~1_combout\ : std_logic;
SIGNAL \inst9|O[0]~2_combout\ : std_logic;
SIGNAL \inst2|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cuenta\ : std_logic_vector(27 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

estado <= ww_estado;
ww_clk <= clk;
ww_reset <= reset;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst1|cuenta[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|cuenta\(24));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X49_Y54_N9
\estado[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(2),
	devoe => ww_devoe,
	o => \estado[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\estado[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(1),
	devoe => ww_devoe,
	o => \estado[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\estado[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(0),
	devoe => ww_devoe,
	o => \estado[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|O[0]~2_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y3_N20
\inst1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|cuenta\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|cuenta\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|cuenta\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: LCCOMB_X36_Y3_N22
\inst1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|cuenta\(25) & (!\inst1|Add0~49\)) # (!\inst1|cuenta\(25) & ((\inst1|Add0~49\) # (GND)))
-- \inst1|Add0~51\ = CARRY((!\inst1|Add0~49\) # (!\inst1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(25),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\,
	cout => \inst1|Add0~51\);

-- Location: LCCOMB_X36_Y3_N30
\inst1|cuenta~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~12_combout\ = (\inst1|Add0~50_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~50_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cuenta~12_combout\);

-- Location: FF_X36_Y3_N31
\inst1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(25));

-- Location: LCCOMB_X36_Y3_N24
\inst1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|cuenta\(26) & (\inst1|Add0~51\ $ (GND))) # (!\inst1|cuenta\(26) & (!\inst1|Add0~51\ & VCC))
-- \inst1|Add0~53\ = CARRY((\inst1|cuenta\(26) & !\inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(26),
	datad => VCC,
	cin => \inst1|Add0~51\,
	combout => \inst1|Add0~52_combout\,
	cout => \inst1|Add0~53\);

-- Location: FF_X36_Y3_N25
\inst1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(26));

-- Location: LCCOMB_X36_Y3_N26
\inst1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = \inst1|cuenta\(27) $ (\inst1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(27),
	cin => \inst1|Add0~53\,
	combout => \inst1|Add0~54_combout\);

-- Location: FF_X36_Y3_N27
\inst1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(27));

-- Location: LCCOMB_X35_Y3_N0
\inst1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|cuenta\(27) & (!\inst1|cuenta\(24) & (\inst1|cuenta\(25) & !\inst1|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(27),
	datab => \inst1|cuenta\(24),
	datac => \inst1|cuenta\(25),
	datad => \inst1|cuenta\(26),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y4_N4
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|cuenta\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X36_Y4_N2
\inst1|cuenta~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~11_combout\ = (\inst1|Add0~0_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~9_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~11_combout\);

-- Location: FF_X36_Y4_N3
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(0));

-- Location: LCCOMB_X36_Y4_N6
\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|cuenta\(1) & (!\inst1|Add0~1\)) # (!\inst1|cuenta\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X36_Y4_N7
\inst1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(1));

-- Location: LCCOMB_X36_Y4_N8
\inst1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|cuenta\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|cuenta\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|cuenta\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X36_Y4_N9
\inst1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(2));

-- Location: LCCOMB_X36_Y4_N10
\inst1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|cuenta\(3) & (!\inst1|Add0~5\)) # (!\inst1|cuenta\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X36_Y4_N11
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(3));

-- Location: LCCOMB_X36_Y4_N12
\inst1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|cuenta\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|cuenta\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|cuenta\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X36_Y4_N13
\inst1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(4));

-- Location: LCCOMB_X36_Y4_N14
\inst1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|cuenta\(5) & (!\inst1|Add0~9\)) # (!\inst1|cuenta\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X36_Y4_N15
\inst1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(5));

-- Location: LCCOMB_X36_Y4_N16
\inst1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|cuenta\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|cuenta\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|cuenta\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X36_Y4_N17
\inst1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(6));

-- Location: LCCOMB_X36_Y4_N18
\inst1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|cuenta\(7) & (!\inst1|Add0~13\)) # (!\inst1|cuenta\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X36_Y4_N0
\inst1|cuenta~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~10_combout\ = (\inst1|Add0~14_combout\ & (((!\inst1|Equal0~5_combout\) # (!\inst1|Equal0~9_combout\)) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~4_combout\,
	datab => \inst1|Equal0~9_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|cuenta~10_combout\);

-- Location: FF_X36_Y4_N1
\inst1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(7));

-- Location: LCCOMB_X36_Y4_N20
\inst1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|cuenta\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|cuenta\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|cuenta\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X36_Y4_N21
\inst1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(8));

-- Location: LCCOMB_X36_Y4_N22
\inst1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|cuenta\(9) & (!\inst1|Add0~17\)) # (!\inst1|cuenta\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: FF_X36_Y4_N23
\inst1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(9));

-- Location: LCCOMB_X36_Y4_N24
\inst1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|cuenta\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|cuenta\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|cuenta\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X36_Y4_N25
\inst1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(10));

-- Location: LCCOMB_X36_Y4_N26
\inst1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|cuenta\(11) & (!\inst1|Add0~21\)) # (!\inst1|cuenta\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: FF_X36_Y4_N27
\inst1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(11));

-- Location: LCCOMB_X36_Y4_N28
\inst1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|cuenta\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|cuenta\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|cuenta\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X35_Y4_N10
\inst1|cuenta~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~9_combout\ = (\inst1|Add0~24_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~9_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~9_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|cuenta~9_combout\);

-- Location: FF_X35_Y4_N11
\inst1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(12));

-- Location: LCCOMB_X36_Y4_N30
\inst1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cuenta\(13) & (!\inst1|Add0~25\)) # (!\inst1|cuenta\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X35_Y4_N28
\inst1|cuenta~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~8_combout\ = (\inst1|Add0~26_combout\ & (((!\inst1|Equal0~9_combout\) # (!\inst1|Equal0~4_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|cuenta~8_combout\);

-- Location: FF_X35_Y4_N29
\inst1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(13));

-- Location: LCCOMB_X36_Y3_N0
\inst1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|cuenta\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|cuenta\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|cuenta\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X35_Y4_N14
\inst1|cuenta~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~7_combout\ = (\inst1|Add0~28_combout\ & (((!\inst1|Equal0~9_combout\) # (!\inst1|Equal0~4_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|cuenta~7_combout\);

-- Location: FF_X35_Y4_N15
\inst1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(14));

-- Location: LCCOMB_X36_Y3_N2
\inst1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cuenta\(15) & (!\inst1|Add0~29\)) # (!\inst1|cuenta\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X35_Y4_N20
\inst1|cuenta~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~6_combout\ = (\inst1|Add0~30_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~9_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~9_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|cuenta~6_combout\);

-- Location: FF_X35_Y4_N21
\inst1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(15));

-- Location: LCCOMB_X35_Y4_N26
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|cuenta\(12) & (\inst1|cuenta\(13) & (\inst1|cuenta\(14) & \inst1|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(12),
	datab => \inst1|cuenta\(13),
	datac => \inst1|cuenta\(14),
	datad => \inst1|cuenta\(15),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y4_N18
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cuenta\(4) & (\inst1|cuenta\(7) & (!\inst1|cuenta\(5) & !\inst1|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datab => \inst1|cuenta\(7),
	datac => \inst1|cuenta\(5),
	datad => \inst1|cuenta\(6),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y4_N4
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cuenta\(0) & (!\inst1|cuenta\(2) & (!\inst1|cuenta\(3) & !\inst1|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(0),
	datab => \inst1|cuenta\(2),
	datac => \inst1|cuenta\(3),
	datad => \inst1|cuenta\(1),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y4_N24
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|cuenta\(8) & (!\inst1|cuenta\(9) & (!\inst1|cuenta\(11) & !\inst1|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(8),
	datab => \inst1|cuenta\(9),
	datac => \inst1|cuenta\(11),
	datad => \inst1|cuenta\(10),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y4_N8
\inst1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~3_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~2_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~3_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y3_N4
\inst1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|cuenta\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|cuenta\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|cuenta\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X36_Y3_N5
\inst1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(16));

-- Location: LCCOMB_X36_Y3_N6
\inst1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|cuenta\(17) & (!\inst1|Add0~33\)) # (!\inst1|cuenta\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X36_Y3_N8
\inst1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|cuenta\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|cuenta\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|cuenta\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X36_Y3_N9
\inst1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(18));

-- Location: LCCOMB_X36_Y3_N10
\inst1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cuenta\(19) & (!\inst1|Add0~37\)) # (!\inst1|cuenta\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X35_Y4_N16
\inst1|cuenta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~4_combout\ = (\inst1|Add0~38_combout\ & (((!\inst1|Equal0~9_combout\) # (!\inst1|Equal0~4_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Equal0~9_combout\,
	combout => \inst1|cuenta~4_combout\);

-- Location: FF_X35_Y4_N17
\inst1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(19));

-- Location: LCCOMB_X36_Y3_N12
\inst1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cuenta\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cuenta\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cuenta\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X35_Y3_N16
\inst1|cuenta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~3_combout\ = (\inst1|Add0~40_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cuenta~3_combout\);

-- Location: FF_X35_Y3_N17
\inst1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(20));

-- Location: LCCOMB_X36_Y3_N14
\inst1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cuenta\(21) & (!\inst1|Add0~41\)) # (!\inst1|cuenta\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X35_Y3_N6
\inst1|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~2_combout\ = (\inst1|Add0~42_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cuenta~2_combout\);

-- Location: FF_X35_Y3_N7
\inst1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(21));

-- Location: LCCOMB_X36_Y3_N16
\inst1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|cuenta\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|cuenta\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|cuenta\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X36_Y3_N28
\inst1|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~1_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|cuenta~1_combout\);

-- Location: FF_X36_Y3_N29
\inst1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(22));

-- Location: LCCOMB_X35_Y3_N22
\inst1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|cuenta\(21) & (\inst1|cuenta\(20) & (\inst1|cuenta\(23) & \inst1|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(21),
	datab => \inst1|cuenta\(20),
	datac => \inst1|cuenta\(23),
	datad => \inst1|cuenta\(22),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y4_N2
\inst1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~9_combout\ = (\inst1|Equal0~7_combout\ & \inst1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y4_N30
\inst1|cuenta~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~5_combout\ = (\inst1|Add0~34_combout\ & (((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~9_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~9_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~34_combout\,
	combout => \inst1|cuenta~5_combout\);

-- Location: FF_X35_Y4_N31
\inst1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(17));

-- Location: LCCOMB_X35_Y4_N6
\inst1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|cuenta\(17) & (\inst1|cuenta\(19) & (!\inst1|cuenta\(18) & !\inst1|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datab => \inst1|cuenta\(19),
	datac => \inst1|cuenta\(18),
	datad => \inst1|cuenta\(16),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y4_N12
\inst1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|Equal0~5_combout\ & (\inst1|Equal0~4_combout\ & (\inst1|Equal0~7_combout\ & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y3_N18
\inst1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cuenta\(23) & (!\inst1|Add0~45\)) # (!\inst1|cuenta\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCCOMB_X35_Y3_N12
\inst1|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta~0_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|cuenta~0_combout\);

-- Location: FF_X35_Y3_N13
\inst1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(23));

-- Location: FF_X36_Y3_N21
\inst1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(24));

-- Location: CLKCTRL_G17
\inst1|cuenta[24]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|cuenta[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|cuenta[24]~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N16
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\inst2|internal_value\(1) & !\inst2|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst2|internal_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|internal_value[1]~1_combout\ = (\inst2|internal_value\(2) & ((\inst|Mux5~0_combout\))) # (!\inst2|internal_value\(2) & (\inst2|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(2),
	datac => \inst2|internal_value\(1),
	datad => \inst|Mux5~0_combout\,
	combout => \inst2|internal_value[1]~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\inst2|internal_value\(1) & (!\inst2|internal_value\(0) & !\inst2|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datab => \inst2|internal_value\(0),
	datac => \inst2|internal_value\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\D~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\C~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X51_Y53_N26
\inst10|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|O~0_combout\ = (\inst2|internal_value\(0) & (\D~input_o\)) # (!\inst2|internal_value\(0) & ((\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \C~input_o\,
	datad => \inst2|internal_value\(0),
	combout => \inst10|O~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X51_Y53_N14
\inst10|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|O~2_combout\ = (\inst2|internal_value\(1) & (!\inst2|internal_value\(2) & \inst2|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datac => \inst2|internal_value\(2),
	datad => \inst2|internal_value\(0),
	combout => \inst10|O~2_combout\);

-- Location: IOIBUF_X51_Y54_N1
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X51_Y53_N12
\inst10|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|O~1_combout\ = (\inst2|internal_value\(1) & (!\inst2|internal_value\(2) & ((\B~input_o\) # (!\inst2|internal_value\(0))))) # (!\inst2|internal_value\(1) & ((\inst2|internal_value\(2) $ (\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datab => \B~input_o\,
	datac => \inst2|internal_value\(2),
	datad => \inst2|internal_value\(0),
	combout => \inst10|O~1_combout\);

-- Location: LCCOMB_X51_Y53_N0
\inst10|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|O~3_combout\ = (\inst10|O~2_combout\ & (((\inst10|O~1_combout\)))) # (!\inst10|O~2_combout\ & ((\inst10|O~1_combout\ & (\inst10|O~0_combout\)) # (!\inst10|O~1_combout\ & ((\A~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|O~0_combout\,
	datab => \A~input_o\,
	datac => \inst10|O~2_combout\,
	datad => \inst10|O~1_combout\,
	combout => \inst10|O~3_combout\);

-- Location: FF_X51_Y53_N23
\inst2|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[24]~clkctrl_outclk\,
	d => \inst2|internal_value[1]~1_combout\,
	asdata => \inst|Mux6~0_combout\,
	clrn => \reset~input_o\,
	sload => \inst10|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N24
\inst8|O[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|O[0]~0_combout\ = (\inst10|O~3_combout\ & (\inst2|internal_value\(1) $ (((\inst2|internal_value\(2)) # (\inst2|internal_value\(0)))))) # (!\inst10|O~3_combout\ & ((\inst2|internal_value\(2) $ (!\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datab => \inst2|internal_value\(2),
	datac => \inst2|internal_value\(0),
	datad => \inst10|O~3_combout\,
	combout => \inst8|O[0]~0_combout\);

-- Location: FF_X51_Y53_N25
\inst2|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[24]~clkctrl_outclk\,
	d => \inst8|O[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(0));

-- Location: LCCOMB_X51_Y53_N8
\inst2|internal_value[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|internal_value[2]~0_combout\ = (\inst2|internal_value\(2) & ((\inst|Mux5~0_combout\))) # (!\inst2|internal_value\(2) & (\inst2|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|internal_value\(0),
	datac => \inst2|internal_value\(2),
	datad => \inst|Mux5~0_combout\,
	combout => \inst2|internal_value[2]~0_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst2|internal_value\(2) & (!\inst2|internal_value\(0) & !\inst2|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(2),
	datab => \inst2|internal_value\(0),
	datac => \inst2|internal_value\(1),
	combout => \inst|Mux5~1_combout\);

-- Location: FF_X51_Y53_N9
\inst2|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[24]~clkctrl_outclk\,
	d => \inst2|internal_value[2]~0_combout\,
	asdata => \inst|Mux5~1_combout\,
	clrn => \reset~input_o\,
	sload => \inst10|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N6
\inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = \inst2|internal_value\(1) $ (\inst2|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst2|internal_value\(1)) # ((\inst2|internal_value\(2) & !\inst2|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(2),
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst9|O[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|O[1]~0_combout\ = (\inst2|internal_value\(1)) # ((\A~input_o\ & !\inst2|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datab => \A~input_o\,
	datac => \inst2|internal_value\(0),
	combout => \inst9|O[1]~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst9|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|O[1]~1_combout\ = (\inst2|internal_value\(0) & (!\inst2|internal_value\(2) & ((\B~input_o\) # (!\inst9|O[1]~0_combout\)))) # (!\inst2|internal_value\(0) & (((\inst9|O[1]~0_combout\) # (\inst2|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst2|internal_value\(0),
	datac => \inst9|O[1]~0_combout\,
	datad => \inst2|internal_value\(2),
	combout => \inst9|O[1]~1_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst9|O[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|O[0]~2_combout\ = (\inst10|O~3_combout\ & ((\inst2|internal_value\(0)) # ((\inst2|internal_value\(2))))) # (!\inst10|O~3_combout\ & ((\inst2|internal_value\(1)) # ((\inst2|internal_value\(0) & \inst2|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|O~3_combout\,
	datab => \inst2|internal_value\(0),
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(2),
	combout => \inst9|O[0]~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_estado(2) <= \estado[2]~output_o\;

ww_estado(1) <= \estado[1]~output_o\;

ww_estado(0) <= \estado[0]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


