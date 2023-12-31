-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/05/2023 22:58:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica4_vhd_vec_tst IS
END practica4_vhd_vec_tst;
ARCHITECTURE practica4_arch OF practica4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT practica4
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	D : IN STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : practica4
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	clk => clk,
	D => D,
	estado => estado,
	reset => reset,
	salida => salida
	);

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '1';
	WAIT FOR 240000 ps;
	C <= '0';
	WAIT FOR 320000 ps;
	C <= '1';
WAIT;
END PROCESS t_prcs_C;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END practica4_arch;
