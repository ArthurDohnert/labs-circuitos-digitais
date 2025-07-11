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

-- DATE "04/10/2025 11:20:58"

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

ENTITY 	DECOD416 IS
    PORT (
	D : OUT std_logic_vector(15 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0)
	);
END DECOD416;

-- Design Ports Information
-- D[15]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[14]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[12]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DECOD416 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \D[15]~output_o\ : std_logic;
SIGNAL \D[14]~output_o\ : std_logic;
SIGNAL \D[13]~output_o\ : std_logic;
SIGNAL \D[12]~output_o\ : std_logic;
SIGNAL \D[11]~output_o\ : std_logic;
SIGNAL \D[10]~output_o\ : std_logic;
SIGNAL \D[9]~output_o\ : std_logic;
SIGNAL \D[8]~output_o\ : std_logic;
SIGNAL \D[7]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~1_combout\ : std_logic;
SIGNAL \inst5~2_combout\ : std_logic;
SIGNAL \inst5~3_combout\ : std_logic;
SIGNAL \inst5~4_combout\ : std_logic;
SIGNAL \inst5~5_combout\ : std_logic;
SIGNAL \inst5~6_combout\ : std_logic;
SIGNAL \inst5~7_combout\ : std_logic;
SIGNAL \inst5~8_combout\ : std_logic;
SIGNAL \inst5~9_combout\ : std_logic;
SIGNAL \inst5~10_combout\ : std_logic;
SIGNAL \inst5~11_combout\ : std_logic;
SIGNAL \inst5~12_combout\ : std_logic;
SIGNAL \inst5~13_combout\ : std_logic;
SIGNAL \inst5~14_combout\ : std_logic;
SIGNAL \inst5~15_combout\ : std_logic;

BEGIN

D <= ww_D;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\D[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => \D[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~1_combout\,
	devoe => ww_devoe,
	o => \D[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\D[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~2_combout\,
	devoe => ww_devoe,
	o => \D[13]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\D[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~3_combout\,
	devoe => ww_devoe,
	o => \D[12]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\D[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~4_combout\,
	devoe => ww_devoe,
	o => \D[11]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\D[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~5_combout\,
	devoe => ww_devoe,
	o => \D[10]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\D[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~6_combout\,
	devoe => ww_devoe,
	o => \D[9]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\D[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~7_combout\,
	devoe => ww_devoe,
	o => \D[8]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\D[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~8_combout\,
	devoe => ww_devoe,
	o => \D[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\D[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~9_combout\,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\D[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~10_combout\,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\D[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~11_combout\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\D[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~12_combout\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\D[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~13_combout\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\D[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~14_combout\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\D[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~15_combout\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X15_Y3_N8
\inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ & (\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X15_Y3_N18
\inst5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~1_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~1_combout\);

-- Location: LCCOMB_X15_Y3_N12
\inst5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~2_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~2_combout\);

-- Location: LCCOMB_X15_Y3_N30
\inst5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~3_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~3_combout\);

-- Location: LCCOMB_X15_Y3_N16
\inst5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~4_combout\ = (!\A[2]~input_o\ & (\A[1]~input_o\ & (\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~4_combout\);

-- Location: LCCOMB_X15_Y3_N26
\inst5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~5_combout\ = (!\A[2]~input_o\ & (\A[1]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~5_combout\);

-- Location: LCCOMB_X15_Y3_N4
\inst5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~6_combout\ = (!\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~6_combout\);

-- Location: LCCOMB_X15_Y3_N6
\inst5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~7_combout\ = (!\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~7_combout\);

-- Location: LCCOMB_X15_Y3_N0
\inst5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~8_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~8_combout\);

-- Location: LCCOMB_X15_Y3_N2
\inst5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~9_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~9_combout\);

-- Location: LCCOMB_X15_Y3_N28
\inst5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~10_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~10_combout\);

-- Location: LCCOMB_X15_Y3_N14
\inst5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~11_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~11_combout\);

-- Location: LCCOMB_X15_Y3_N24
\inst5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~12_combout\ = (!\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~12_combout\);

-- Location: LCCOMB_X15_Y3_N10
\inst5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~13_combout\ = (!\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~13_combout\);

-- Location: LCCOMB_X15_Y3_N20
\inst5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~14_combout\ = (!\A[2]~input_o\ & (!\A[1]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~14_combout\);

-- Location: LCCOMB_X15_Y3_N22
\inst5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~15_combout\ = (!\A[2]~input_o\ & (!\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5~15_combout\);

ww_D(15) <= \D[15]~output_o\;

ww_D(14) <= \D[14]~output_o\;

ww_D(13) <= \D[13]~output_o\;

ww_D(12) <= \D[12]~output_o\;

ww_D(11) <= \D[11]~output_o\;

ww_D(10) <= \D[10]~output_o\;

ww_D(9) <= \D[9]~output_o\;

ww_D(8) <= \D[8]~output_o\;

ww_D(7) <= \D[7]~output_o\;

ww_D(6) <= \D[6]~output_o\;

ww_D(5) <= \D[5]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(0) <= \D[0]~output_o\;
END structure;


