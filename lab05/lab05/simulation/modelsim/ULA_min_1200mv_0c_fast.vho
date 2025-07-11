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

-- DATE "04/24/2025 11:47:00"

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

ENTITY 	ULA IS
    PORT (
	flag_N : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	op_sel : IN std_logic_vector(1 DOWNTO 0);
	A0 : IN std_logic_vector(3 DOWNTO 0);
	B0 : IN std_logic_vector(3 DOWNTO 0);
	flag_Z : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- flag_N	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_Z	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_flag_N : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag_Z : std_logic;
SIGNAL \flag_N~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \flag_Z~output_o\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \A0[3]~input_o\ : std_logic;
SIGNAL \B0[3]~input_o\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \inst4|inst6|inst3~3_combout\ : std_logic;
SIGNAL \A0[0]~input_o\ : std_logic;
SIGNAL \B0[0]~input_o\ : std_logic;
SIGNAL \B0[1]~input_o\ : std_logic;
SIGNAL \A0[1]~input_o\ : std_logic;
SIGNAL \inst|inst1|OR1~0_combout\ : std_logic;
SIGNAL \B0[2]~input_o\ : std_logic;
SIGNAL \A0[2]~input_o\ : std_logic;
SIGNAL \inst4|inst6|inst3~2_combout\ : std_logic;
SIGNAL \inst4|inst6|inst3~4_combout\ : std_logic;
SIGNAL \inst4|inst5|inst3~2_combout\ : std_logic;
SIGNAL \inst4|inst5|inst3~3_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3~2_combout\ : std_logic;
SIGNAL \inst4|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst8~0_combout\ : std_logic;

BEGIN

flag_N <= ww_flag_N;
S <= ww_S;
ww_op_sel <= op_sel;
ww_A0 <= A0;
ww_B0 <= B0;
flag_Z <= ww_flag_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst8~0_combout\ <= NOT \inst8~0_combout\;

-- Location: IOOBUF_X8_Y0_N9
\flag_N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|inst3~4_combout\,
	devoe => ww_devoe,
	o => \flag_N~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|inst3~4_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst5|inst3~3_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst3~2_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst3~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\flag_Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst8~0_combout\,
	devoe => ww_devoe,
	o => \flag_Z~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\op_sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\A0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(3),
	o => \A0[3]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\B0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(3),
	o => \B0[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\op_sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N20
\inst4|inst6|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6|inst3~3_combout\ = (\A0[3]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B0[3]~input_o\))))) # (!\A0[3]~input_o\ & ((\op_sel[0]~input_o\ & (\op_sel[1]~input_o\)) # (!\op_sel[0]~input_o\ & ((\B0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \B0[3]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst6|inst3~3_combout\);

-- Location: IOIBUF_X29_Y0_N8
\A0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(0),
	o => \A0[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(0),
	o => \B0[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(1),
	o => \B0[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\A0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(1),
	o => \A0[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\inst|inst1|OR1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|OR1~0_combout\ = (\B0[1]~input_o\ & ((\A0[1]~input_o\) # ((\A0[0]~input_o\ & \B0[0]~input_o\)))) # (!\B0[1]~input_o\ & (\A0[0]~input_o\ & (\B0[0]~input_o\ & \A0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[0]~input_o\,
	datab => \B0[0]~input_o\,
	datac => \B0[1]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \inst|inst1|OR1~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\B0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(2),
	o => \B0[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\A0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(2),
	o => \A0[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N2
\inst4|inst6|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6|inst3~2_combout\ = (\inst|inst1|OR1~0_combout\ & ((\B0[2]~input_o\) # (\A0[2]~input_o\))) # (!\inst|inst1|OR1~0_combout\ & (\B0[2]~input_o\ & \A0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|OR1~0_combout\,
	datac => \B0[2]~input_o\,
	datad => \A0[2]~input_o\,
	combout => \inst4|inst6|inst3~2_combout\);

-- Location: LCCOMB_X23_Y1_N10
\inst4|inst6|inst3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6|inst3~4_combout\ = \inst4|inst6|inst3~3_combout\ $ (((\inst4|inst6|inst3~2_combout\ & (!\op_sel[1]~input_o\ & !\op_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6|inst3~3_combout\,
	datab => \inst4|inst6|inst3~2_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst6|inst3~4_combout\);

-- Location: LCCOMB_X23_Y1_N22
\inst4|inst5|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst5|inst3~2_combout\ = (\A0[2]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B0[2]~input_o\))))) # (!\A0[2]~input_o\ & ((\op_sel[0]~input_o\ & (\op_sel[1]~input_o\)) # (!\op_sel[0]~input_o\ & ((\B0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \A0[2]~input_o\,
	datac => \B0[2]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst5|inst3~2_combout\);

-- Location: LCCOMB_X23_Y1_N28
\inst4|inst5|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst5|inst3~3_combout\ = \inst4|inst5|inst3~2_combout\ $ (((\inst|inst1|OR1~0_combout\ & (!\op_sel[1]~input_o\ & !\op_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|inst3~2_combout\,
	datab => \inst|inst1|OR1~0_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst5|inst3~3_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst4|inst4|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3~1_combout\ = (\op_sel[1]~input_o\) # (\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst4|inst3~1_combout\);

-- Location: LCCOMB_X23_Y1_N0
\inst4|inst4|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3~0_combout\ = (\A0[1]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B0[1]~input_o\))))) # (!\A0[1]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & (\B0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \inst4|inst4|inst3~0_combout\);

-- Location: LCCOMB_X23_Y1_N12
\inst4|inst4|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3~2_combout\ = \inst4|inst4|inst3~0_combout\ $ (((\A0[0]~input_o\ & (\B0[0]~input_o\ & !\inst4|inst4|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[0]~input_o\,
	datab => \B0[0]~input_o\,
	datac => \inst4|inst4|inst3~1_combout\,
	datad => \inst4|inst4|inst3~0_combout\,
	combout => \inst4|inst4|inst3~2_combout\);

-- Location: LCCOMB_X23_Y1_N6
\inst4|inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3~0_combout\ = (\A0[0]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B0[0]~input_o\))))) # (!\A0[0]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & (\B0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[0]~input_o\,
	datab => \B0[0]~input_o\,
	datac => \op_sel[1]~input_o\,
	datad => \op_sel[0]~input_o\,
	combout => \inst4|inst|inst3~0_combout\);

-- Location: LCCOMB_X23_Y1_N8
\inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\inst4|inst4|inst3~2_combout\ & (\inst4|inst5|inst3~3_combout\ & (\inst4|inst|inst3~0_combout\ & \inst4|inst6|inst3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst3~2_combout\,
	datab => \inst4|inst5|inst3~3_combout\,
	datac => \inst4|inst|inst3~0_combout\,
	datad => \inst4|inst6|inst3~4_combout\,
	combout => \inst8~0_combout\);

ww_flag_N <= \flag_N~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_flag_Z <= \flag_Z~output_o\;
END structure;


