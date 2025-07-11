-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/29/2025 11:13:34"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab07 IS
    PORT (
	Q : OUT std_logic;
	D : IN std_logic;
	clk : IN std_logic
	);
END lab07;

-- Design Ports Information
-- Q	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|inst2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst2~1_combout\ : std_logic;

BEGIN

Q <= ww_Q;
ww_D <= D;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_inst2~1_combout\ <= NOT \inst|inst2~1_combout\;

-- Location: IOOBUF_X20_Y31_N2
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X10_Y31_N1
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X16_Y30_N8
\inst|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~1_combout\ = (\clk~input_o\ & (!\D~input_o\)) # (!\clk~input_o\ & ((\inst|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \inst|inst2~1_combout\,
	datad => \clk~input_o\,
	combout => \inst|inst2~1_combout\);

ww_Q <= \Q~output_o\;
END structure;


