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

-- DATE "07/10/2025 03:57:50"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FSM_elevador IS
    PORT (
	disp_D1 : OUT std_logic;
	clk_in : IN std_logic;
	rst : IN std_logic;
	botao_subir : IN std_logic;
	botao_descer : IN std_logic;
	disp_A1 : OUT std_logic;
	disp_E1 : OUT std_logic;
	disp_B1 : OUT std_logic;
	disp_C1 : OUT std_logic;
	disp_F1 : OUT std_logic;
	disp_G1 : OUT std_logic;
	dispPC1_D : OUT std_logic;
	dispPC1_A : OUT std_logic;
	dispPC1_E : OUT std_logic;
	dispPC1_B : OUT std_logic;
	dispPC1_C : OUT std_logic;
	dispPC1_F : OUT std_logic;
	dispPC1_G : OUT std_logic
	);
END FSM_elevador;

-- Design Ports Information
-- disp_D1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_A1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_E1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_B1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_C1	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_F1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_G1	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_D	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_A	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_E	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_B	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_C	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_F	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispPC1_G	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_descer	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_subir	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_elevador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_disp_D1 : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_botao_subir : std_logic;
SIGNAL ww_botao_descer : std_logic;
SIGNAL ww_disp_A1 : std_logic;
SIGNAL ww_disp_E1 : std_logic;
SIGNAL ww_disp_B1 : std_logic;
SIGNAL ww_disp_C1 : std_logic;
SIGNAL ww_disp_F1 : std_logic;
SIGNAL ww_disp_G1 : std_logic;
SIGNAL ww_dispPC1_D : std_logic;
SIGNAL ww_dispPC1_A : std_logic;
SIGNAL ww_dispPC1_E : std_logic;
SIGNAL ww_dispPC1_B : std_logic;
SIGNAL ww_dispPC1_C : std_logic;
SIGNAL ww_dispPC1_F : std_logic;
SIGNAL ww_dispPC1_G : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|inst62~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp_D1~output_o\ : std_logic;
SIGNAL \disp_A1~output_o\ : std_logic;
SIGNAL \disp_E1~output_o\ : std_logic;
SIGNAL \disp_B1~output_o\ : std_logic;
SIGNAL \disp_C1~output_o\ : std_logic;
SIGNAL \disp_F1~output_o\ : std_logic;
SIGNAL \disp_G1~output_o\ : std_logic;
SIGNAL \dispPC1_D~output_o\ : std_logic;
SIGNAL \dispPC1_A~output_o\ : std_logic;
SIGNAL \dispPC1_E~output_o\ : std_logic;
SIGNAL \dispPC1_B~output_o\ : std_logic;
SIGNAL \dispPC1_C~output_o\ : std_logic;
SIGNAL \dispPC1_F~output_o\ : std_logic;
SIGNAL \dispPC1_G~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \inst6|inst25~0_combout\ : std_logic;
SIGNAL \inst6|inst25~feeder_combout\ : std_logic;
SIGNAL \inst6|inst25~q\ : std_logic;
SIGNAL \inst6|inst26~0_combout\ : std_logic;
SIGNAL \inst6|inst26~feeder_combout\ : std_logic;
SIGNAL \inst6|inst26~q\ : std_logic;
SIGNAL \inst6|inst27~0_combout\ : std_logic;
SIGNAL \inst6|inst27~feeder_combout\ : std_logic;
SIGNAL \inst6|inst27~q\ : std_logic;
SIGNAL \inst6|inst28~0_combout\ : std_logic;
SIGNAL \inst6|inst28~feeder_combout\ : std_logic;
SIGNAL \inst6|inst28~q\ : std_logic;
SIGNAL \inst6|inst31~0_combout\ : std_logic;
SIGNAL \inst6|inst31~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31~q\ : std_logic;
SIGNAL \inst6|inst32~0_combout\ : std_logic;
SIGNAL \inst6|inst32~feeder_combout\ : std_logic;
SIGNAL \inst6|inst32~q\ : std_logic;
SIGNAL \inst6|inst33~0_combout\ : std_logic;
SIGNAL \inst6|inst33~feeder_combout\ : std_logic;
SIGNAL \inst6|inst33~q\ : std_logic;
SIGNAL \inst6|inst34~0_combout\ : std_logic;
SIGNAL \inst6|inst34~feeder_combout\ : std_logic;
SIGNAL \inst6|inst34~q\ : std_logic;
SIGNAL \inst6|inst38~0_combout\ : std_logic;
SIGNAL \inst6|inst38~feeder_combout\ : std_logic;
SIGNAL \inst6|inst38~q\ : std_logic;
SIGNAL \inst6|inst39~0_combout\ : std_logic;
SIGNAL \inst6|inst39~feeder_combout\ : std_logic;
SIGNAL \inst6|inst39~q\ : std_logic;
SIGNAL \inst6|inst40~0_combout\ : std_logic;
SIGNAL \inst6|inst40~feeder_combout\ : std_logic;
SIGNAL \inst6|inst40~q\ : std_logic;
SIGNAL \inst6|inst41~0_combout\ : std_logic;
SIGNAL \inst6|inst41~feeder_combout\ : std_logic;
SIGNAL \inst6|inst41~q\ : std_logic;
SIGNAL \inst6|inst45~0_combout\ : std_logic;
SIGNAL \inst6|inst45~feeder_combout\ : std_logic;
SIGNAL \inst6|inst45~q\ : std_logic;
SIGNAL \inst6|inst46~0_combout\ : std_logic;
SIGNAL \inst6|inst46~feeder_combout\ : std_logic;
SIGNAL \inst6|inst46~q\ : std_logic;
SIGNAL \inst6|inst47~0_combout\ : std_logic;
SIGNAL \inst6|inst47~feeder_combout\ : std_logic;
SIGNAL \inst6|inst47~q\ : std_logic;
SIGNAL \inst6|inst48~0_combout\ : std_logic;
SIGNAL \inst6|inst48~feeder_combout\ : std_logic;
SIGNAL \inst6|inst48~q\ : std_logic;
SIGNAL \inst6|inst52~0_combout\ : std_logic;
SIGNAL \inst6|inst52~feeder_combout\ : std_logic;
SIGNAL \inst6|inst52~q\ : std_logic;
SIGNAL \inst6|inst53~0_combout\ : std_logic;
SIGNAL \inst6|inst53~feeder_combout\ : std_logic;
SIGNAL \inst6|inst53~q\ : std_logic;
SIGNAL \inst6|inst54~0_combout\ : std_logic;
SIGNAL \inst6|inst54~feeder_combout\ : std_logic;
SIGNAL \inst6|inst54~q\ : std_logic;
SIGNAL \inst6|inst55~0_combout\ : std_logic;
SIGNAL \inst6|inst55~feeder_combout\ : std_logic;
SIGNAL \inst6|inst55~q\ : std_logic;
SIGNAL \inst6|inst59~0_combout\ : std_logic;
SIGNAL \inst6|inst59~feeder_combout\ : std_logic;
SIGNAL \inst6|inst59~q\ : std_logic;
SIGNAL \inst6|inst60~0_combout\ : std_logic;
SIGNAL \inst6|inst60~feeder_combout\ : std_logic;
SIGNAL \inst6|inst60~q\ : std_logic;
SIGNAL \inst6|inst61~0_combout\ : std_logic;
SIGNAL \inst6|inst61~feeder_combout\ : std_logic;
SIGNAL \inst6|inst61~q\ : std_logic;
SIGNAL \inst6|inst62~0_combout\ : std_logic;
SIGNAL \inst6|inst62~feeder_combout\ : std_logic;
SIGNAL \inst6|inst62~q\ : std_logic;
SIGNAL \inst6|inst62~clkctrl_outclk\ : std_logic;
SIGNAL \botao_subir~input_o\ : std_logic;
SIGNAL \inst24|inst9~combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \botao_descer~input_o\ : std_logic;
SIGNAL \inst3~feeder_combout\ : std_logic;
SIGNAL \inst24|inst11~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst24|inst4~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst24|inst14~q\ : std_logic;
SIGNAL \inst24|inst2~feeder_combout\ : std_logic;
SIGNAL \inst24|inst2~q\ : std_logic;
SIGNAL \inst24|inst13~combout\ : std_logic;
SIGNAL \inst9|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \inst24|ALT_INV_inst13~combout\ : std_logic;

BEGIN

disp_D1 <= ww_disp_D1;
ww_clk_in <= clk_in;
ww_rst <= rst;
ww_botao_subir <= botao_subir;
ww_botao_descer <= botao_descer;
disp_A1 <= ww_disp_A1;
disp_E1 <= ww_disp_E1;
disp_B1 <= ww_disp_B1;
disp_C1 <= ww_disp_C1;
disp_F1 <= ww_disp_F1;
disp_G1 <= ww_disp_G1;
dispPC1_D <= ww_dispPC1_D;
dispPC1_A <= ww_dispPC1_A;
dispPC1_E <= ww_dispPC1_E;
dispPC1_B <= ww_dispPC1_B;
dispPC1_C <= ww_dispPC1_C;
dispPC1_F <= ww_dispPC1_F;
dispPC1_G <= ww_dispPC1_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\inst6|inst62~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|inst62~q\);
\inst24|ALT_INV_inst9~combout\ <= NOT \inst24|inst9~combout\;
\inst24|ALT_INV_inst13~combout\ <= NOT \inst24|inst13~combout\;

-- Location: IOOBUF_X12_Y0_N2
\disp_D1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst2~q\,
	devoe => ww_devoe,
	o => \disp_D1~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\disp_A1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst2~q\,
	devoe => ww_devoe,
	o => \disp_A1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\disp_E1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst2~q\,
	devoe => ww_devoe,
	o => \disp_E1~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\disp_B1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_B1~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\disp_C1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_C1~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\disp_F1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst2~q\,
	devoe => ww_devoe,
	o => \disp_F1~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\disp_G1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp_G1~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\dispPC1_D~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_inst13~combout\,
	devoe => ww_devoe,
	o => \dispPC1_D~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\dispPC1_A~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst11~0_combout\,
	devoe => ww_devoe,
	o => \dispPC1_A~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dispPC1_E~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst3~0_combout\,
	devoe => ww_devoe,
	o => \dispPC1_E~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dispPC1_B~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst3~0_combout\,
	devoe => ww_devoe,
	o => \dispPC1_B~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dispPC1_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dispPC1_C~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\dispPC1_F~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst11~0_combout\,
	devoe => ww_devoe,
	o => \dispPC1_F~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\dispPC1_G~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dispPC1_G~output_o\);

-- Location: IOIBUF_X22_Y31_N8
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: LCCOMB_X22_Y30_N20
\inst6|inst25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst25~0_combout\ = !\inst6|inst25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst25~q\,
	combout => \inst6|inst25~0_combout\);

-- Location: LCCOMB_X22_Y30_N30
\inst6|inst25~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst25~feeder_combout\ = \inst6|inst25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst25~0_combout\,
	combout => \inst6|inst25~feeder_combout\);

-- Location: FF_X22_Y30_N31
\inst6|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \inst6|inst25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst25~q\);

-- Location: LCCOMB_X23_Y30_N28
\inst6|inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst26~0_combout\ = !\inst6|inst26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst26~q\,
	combout => \inst6|inst26~0_combout\);

-- Location: LCCOMB_X23_Y30_N6
\inst6|inst26~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst26~feeder_combout\ = \inst6|inst26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst26~0_combout\,
	combout => \inst6|inst26~feeder_combout\);

-- Location: FF_X23_Y30_N7
\inst6|inst26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst25~q\,
	d => \inst6|inst26~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst26~q\);

-- Location: LCCOMB_X23_Y30_N22
\inst6|inst27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst27~0_combout\ = !\inst6|inst27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst27~q\,
	combout => \inst6|inst27~0_combout\);

-- Location: LCCOMB_X23_Y30_N14
\inst6|inst27~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst27~feeder_combout\ = \inst6|inst27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst27~0_combout\,
	combout => \inst6|inst27~feeder_combout\);

-- Location: FF_X23_Y30_N15
\inst6|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst26~q\,
	d => \inst6|inst27~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst27~q\);

-- Location: LCCOMB_X24_Y30_N30
\inst6|inst28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst28~0_combout\ = !\inst6|inst28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst28~q\,
	combout => \inst6|inst28~0_combout\);

-- Location: LCCOMB_X24_Y30_N6
\inst6|inst28~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst28~feeder_combout\ = \inst6|inst28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst28~0_combout\,
	combout => \inst6|inst28~feeder_combout\);

-- Location: FF_X24_Y30_N7
\inst6|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst27~q\,
	d => \inst6|inst28~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst28~q\);

-- Location: LCCOMB_X24_Y30_N28
\inst6|inst31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst31~0_combout\ = !\inst6|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31~q\,
	combout => \inst6|inst31~0_combout\);

-- Location: LCCOMB_X24_Y30_N14
\inst6|inst31~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst31~feeder_combout\ = \inst6|inst31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31~0_combout\,
	combout => \inst6|inst31~feeder_combout\);

-- Location: FF_X24_Y30_N15
\inst6|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst28~q\,
	d => \inst6|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31~q\);

-- Location: LCCOMB_X25_Y30_N28
\inst6|inst32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst32~0_combout\ = !\inst6|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst32~q\,
	combout => \inst6|inst32~0_combout\);

-- Location: LCCOMB_X25_Y30_N24
\inst6|inst32~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst32~feeder_combout\ = \inst6|inst32~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst32~0_combout\,
	combout => \inst6|inst32~feeder_combout\);

-- Location: FF_X25_Y30_N25
\inst6|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31~q\,
	d => \inst6|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst32~q\);

-- Location: LCCOMB_X25_Y30_N26
\inst6|inst33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst33~0_combout\ = !\inst6|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst33~q\,
	combout => \inst6|inst33~0_combout\);

-- Location: LCCOMB_X25_Y30_N30
\inst6|inst33~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst33~feeder_combout\ = \inst6|inst33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst33~0_combout\,
	combout => \inst6|inst33~feeder_combout\);

-- Location: FF_X25_Y30_N31
\inst6|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst32~q\,
	d => \inst6|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst33~q\);

-- Location: LCCOMB_X26_Y26_N10
\inst6|inst34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst34~0_combout\ = !\inst6|inst34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst34~q\,
	combout => \inst6|inst34~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\inst6|inst34~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst34~feeder_combout\ = \inst6|inst34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst34~0_combout\,
	combout => \inst6|inst34~feeder_combout\);

-- Location: FF_X26_Y26_N21
\inst6|inst34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst33~q\,
	d => \inst6|inst34~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst34~q\);

-- Location: LCCOMB_X26_Y26_N22
\inst6|inst38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst38~0_combout\ = !\inst6|inst38~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst38~q\,
	combout => \inst6|inst38~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\inst6|inst38~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst38~feeder_combout\ = \inst6|inst38~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst38~0_combout\,
	combout => \inst6|inst38~feeder_combout\);

-- Location: FF_X26_Y26_N15
\inst6|inst38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst34~q\,
	d => \inst6|inst38~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst38~q\);

-- Location: LCCOMB_X25_Y26_N24
\inst6|inst39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst39~0_combout\ = !\inst6|inst39~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst39~q\,
	combout => \inst6|inst39~0_combout\);

-- Location: LCCOMB_X25_Y26_N28
\inst6|inst39~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst39~feeder_combout\ = \inst6|inst39~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst39~0_combout\,
	combout => \inst6|inst39~feeder_combout\);

-- Location: FF_X25_Y26_N29
\inst6|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst38~q\,
	d => \inst6|inst39~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst39~q\);

-- Location: LCCOMB_X25_Y26_N30
\inst6|inst40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst40~0_combout\ = !\inst6|inst40~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst40~q\,
	combout => \inst6|inst40~0_combout\);

-- Location: LCCOMB_X25_Y26_N14
\inst6|inst40~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst40~feeder_combout\ = \inst6|inst40~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst40~0_combout\,
	combout => \inst6|inst40~feeder_combout\);

-- Location: FF_X25_Y26_N15
\inst6|inst40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst39~q\,
	d => \inst6|inst40~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst40~q\);

-- Location: LCCOMB_X25_Y22_N10
\inst6|inst41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst41~0_combout\ = !\inst6|inst41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst41~q\,
	combout => \inst6|inst41~0_combout\);

-- Location: LCCOMB_X25_Y22_N20
\inst6|inst41~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst41~feeder_combout\ = \inst6|inst41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst41~0_combout\,
	combout => \inst6|inst41~feeder_combout\);

-- Location: FF_X25_Y22_N21
\inst6|inst41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst40~q\,
	d => \inst6|inst41~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst41~q\);

-- Location: LCCOMB_X25_Y22_N22
\inst6|inst45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst45~0_combout\ = !\inst6|inst45~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst45~q\,
	combout => \inst6|inst45~0_combout\);

-- Location: LCCOMB_X25_Y22_N14
\inst6|inst45~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst45~feeder_combout\ = \inst6|inst45~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst45~0_combout\,
	combout => \inst6|inst45~feeder_combout\);

-- Location: FF_X25_Y22_N15
\inst6|inst45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst41~q\,
	d => \inst6|inst45~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst45~q\);

-- Location: LCCOMB_X24_Y22_N10
\inst6|inst46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst46~0_combout\ = !\inst6|inst46~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst46~q\,
	combout => \inst6|inst46~0_combout\);

-- Location: LCCOMB_X24_Y22_N28
\inst6|inst46~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst46~feeder_combout\ = \inst6|inst46~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst46~0_combout\,
	combout => \inst6|inst46~feeder_combout\);

-- Location: FF_X24_Y22_N29
\inst6|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst45~q\,
	d => \inst6|inst46~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst46~q\);

-- Location: LCCOMB_X24_Y22_N22
\inst6|inst47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst47~0_combout\ = !\inst6|inst47~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst47~q\,
	combout => \inst6|inst47~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\inst6|inst47~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst47~feeder_combout\ = \inst6|inst47~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst47~0_combout\,
	combout => \inst6|inst47~feeder_combout\);

-- Location: FF_X24_Y22_N15
\inst6|inst47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst46~q\,
	d => \inst6|inst47~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst47~q\);

-- Location: LCCOMB_X23_Y22_N20
\inst6|inst48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst48~0_combout\ = !\inst6|inst48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst48~q\,
	combout => \inst6|inst48~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\inst6|inst48~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst48~feeder_combout\ = \inst6|inst48~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst48~0_combout\,
	combout => \inst6|inst48~feeder_combout\);

-- Location: FF_X23_Y22_N29
\inst6|inst48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst47~q\,
	d => \inst6|inst48~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst48~q\);

-- Location: LCCOMB_X23_Y22_N22
\inst6|inst52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst52~0_combout\ = !\inst6|inst52~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst52~q\,
	combout => \inst6|inst52~0_combout\);

-- Location: LCCOMB_X23_Y22_N14
\inst6|inst52~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst52~feeder_combout\ = \inst6|inst52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst52~0_combout\,
	combout => \inst6|inst52~feeder_combout\);

-- Location: FF_X23_Y22_N15
\inst6|inst52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst48~q\,
	d => \inst6|inst52~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst52~q\);

-- Location: LCCOMB_X22_Y22_N24
\inst6|inst53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst53~0_combout\ = !\inst6|inst53~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst53~q\,
	combout => \inst6|inst53~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst6|inst53~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst53~feeder_combout\ = \inst6|inst53~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst53~0_combout\,
	combout => \inst6|inst53~feeder_combout\);

-- Location: FF_X22_Y22_N29
\inst6|inst53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst52~q\,
	d => \inst6|inst53~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst53~q\);

-- Location: LCCOMB_X22_Y22_N30
\inst6|inst54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst54~0_combout\ = !\inst6|inst54~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst54~q\,
	combout => \inst6|inst54~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\inst6|inst54~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst54~feeder_combout\ = \inst6|inst54~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst54~0_combout\,
	combout => \inst6|inst54~feeder_combout\);

-- Location: FF_X22_Y22_N15
\inst6|inst54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst53~q\,
	d => \inst6|inst54~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst54~q\);

-- Location: LCCOMB_X23_Y20_N0
\inst6|inst55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst55~0_combout\ = !\inst6|inst55~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst55~q\,
	combout => \inst6|inst55~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst6|inst55~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst55~feeder_combout\ = \inst6|inst55~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst55~0_combout\,
	combout => \inst6|inst55~feeder_combout\);

-- Location: FF_X23_Y20_N7
\inst6|inst55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst54~q\,
	d => \inst6|inst55~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst55~q\);

-- Location: LCCOMB_X31_Y16_N22
\inst6|inst59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst59~0_combout\ = !\inst6|inst59~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst59~q\,
	combout => \inst6|inst59~0_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst6|inst59~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst59~feeder_combout\ = \inst6|inst59~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst59~0_combout\,
	combout => \inst6|inst59~feeder_combout\);

-- Location: FF_X31_Y16_N17
\inst6|inst59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst55~q\,
	d => \inst6|inst59~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst59~q\);

-- Location: LCCOMB_X31_Y16_N30
\inst6|inst60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst60~0_combout\ = !\inst6|inst60~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst60~q\,
	combout => \inst6|inst60~0_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst6|inst60~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst60~feeder_combout\ = \inst6|inst60~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst60~0_combout\,
	combout => \inst6|inst60~feeder_combout\);

-- Location: FF_X31_Y16_N15
\inst6|inst60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst59~q\,
	d => \inst6|inst60~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst60~q\);

-- Location: LCCOMB_X32_Y16_N12
\inst6|inst61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst61~0_combout\ = !\inst6|inst61~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst61~q\,
	combout => \inst6|inst61~0_combout\);

-- Location: LCCOMB_X32_Y16_N28
\inst6|inst61~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst61~feeder_combout\ = \inst6|inst61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst61~0_combout\,
	combout => \inst6|inst61~feeder_combout\);

-- Location: FF_X32_Y16_N29
\inst6|inst61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst60~q\,
	d => \inst6|inst61~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst61~q\);

-- Location: LCCOMB_X32_Y16_N30
\inst6|inst62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst62~0_combout\ = !\inst6|inst62~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst62~q\,
	combout => \inst6|inst62~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\inst6|inst62~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst62~feeder_combout\ = \inst6|inst62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst62~0_combout\,
	combout => \inst6|inst62~feeder_combout\);

-- Location: FF_X32_Y16_N15
\inst6|inst62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst61~q\,
	d => \inst6|inst62~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst62~q\);

-- Location: CLKCTRL_G7
\inst6|inst62~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|inst62~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|inst62~clkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N1
\botao_subir~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_subir,
	o => \botao_subir~input_o\);

-- Location: LCCOMB_X21_Y1_N14
\inst24|inst9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24|inst9~combout\ = (\inst24|inst2~q\) # (!\inst24|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst14~q\,
	datad => \inst24|inst2~q\,
	combout => \inst24|inst9~combout\);

-- Location: FF_X21_Y1_N15
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst62~clkctrl_outclk\,
	asdata => \botao_subir~input_o\,
	clrn => \inst24|ALT_INV_inst9~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: IOIBUF_X26_Y0_N8
\botao_descer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_descer,
	o => \botao_descer~input_o\);

-- Location: LCCOMB_X22_Y1_N20
\inst3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~feeder_combout\ = \botao_descer~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botao_descer~input_o\,
	combout => \inst3~feeder_combout\);

-- Location: LCCOMB_X22_Y1_N18
\inst24|inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24|inst11~0_combout\ = (\inst24|inst2~q\ & !\inst24|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst2~q\,
	datad => \inst24|inst14~q\,
	combout => \inst24|inst11~0_combout\);

-- Location: FF_X22_Y1_N21
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst62~clkctrl_outclk\,
	d => \inst3~feeder_combout\,
	clrn => \inst24|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X22_Y1_N30
\inst24|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24|inst4~0_combout\ = (\inst24|inst14~q\ & (((\inst3~q\) # (!\inst24|inst2~q\)))) # (!\inst24|inst14~q\ & (\inst~q\ & ((!\inst24|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \inst3~q\,
	datac => \inst24|inst14~q\,
	datad => \inst24|inst2~q\,
	combout => \inst24|inst4~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G17
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X22_Y1_N31
\inst24|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst62~clkctrl_outclk\,
	d => \inst24|inst4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst14~q\);

-- Location: LCCOMB_X22_Y1_N28
\inst24|inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24|inst2~feeder_combout\ = \inst24|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|inst14~q\,
	combout => \inst24|inst2~feeder_combout\);

-- Location: FF_X22_Y1_N29
\inst24|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst62~clkctrl_outclk\,
	d => \inst24|inst2~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst2~q\);

-- Location: LCCOMB_X22_Y1_N12
\inst24|inst13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24|inst13~combout\ = \inst24|inst2~q\ $ (\inst24|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst2~q\,
	datad => \inst24|inst14~q\,
	combout => \inst24|inst13~combout\);

-- Location: LCCOMB_X21_Y1_N28
\inst9|inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst|inst3~0_combout\ = (\inst24|inst14~q\ & !\inst24|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst14~q\,
	datad => \inst24|inst2~q\,
	combout => \inst9|inst|inst3~0_combout\);

ww_disp_D1 <= \disp_D1~output_o\;

ww_disp_A1 <= \disp_A1~output_o\;

ww_disp_E1 <= \disp_E1~output_o\;

ww_disp_B1 <= \disp_B1~output_o\;

ww_disp_C1 <= \disp_C1~output_o\;

ww_disp_F1 <= \disp_F1~output_o\;

ww_disp_G1 <= \disp_G1~output_o\;

ww_dispPC1_D <= \dispPC1_D~output_o\;

ww_dispPC1_A <= \dispPC1_A~output_o\;

ww_dispPC1_E <= \dispPC1_E~output_o\;

ww_dispPC1_B <= \dispPC1_B~output_o\;

ww_dispPC1_C <= \dispPC1_C~output_o\;

ww_dispPC1_F <= \dispPC1_F~output_o\;

ww_dispPC1_G <= \dispPC1_G~output_o\;
END structure;


