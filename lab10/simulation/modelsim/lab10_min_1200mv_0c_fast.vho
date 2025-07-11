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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/09/2025 15:41:47"

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

ENTITY 	lab10 IS
    PORT (
	Verde : OUT std_logic;
	clk_in : IN std_logic;
	rst : IN std_logic;
	Vermelho : OUT std_logic;
	Amarelo : OUT std_logic
	);
END lab10;

-- Design Ports Information
-- Verde	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vermelho	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amarelo	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Verde : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Vermelho : std_logic;
SIGNAL ww_Amarelo : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Verde~output_o\ : std_logic;
SIGNAL \Vermelho~output_o\ : std_logic;
SIGNAL \Amarelo~output_o\ : std_logic;
SIGNAL \inst|inst|inst|inst~combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|inst2~q\ : std_logic;
SIGNAL \inst|inst|inst16~combout\ : std_logic;
SIGNAL \inst|inst|inst19|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst17~q\ : std_logic;
SIGNAL \inst2|inst14~2_combout\ : std_logic;
SIGNAL \inst2|inst14~combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|ff2~q\ : std_logic;
SIGNAL \inst2|inst~3_combout\ : std_logic;
SIGNAL \inst2|inst~6_combout\ : std_logic;
SIGNAL \inst|inst|inst11|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst6~q\ : std_logic;
SIGNAL \inst|inst|inst12|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst14~q\ : std_logic;
SIGNAL \inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst2|inst10~combout\ : std_logic;
SIGNAL \inst5|f1~q\ : std_logic;
SIGNAL \inst2|inst11~0_combout\ : std_logic;
SIGNAL \inst3|inst4~combout\ : std_logic;
SIGNAL \inst3|inst3~0_combout\ : std_logic;

BEGIN

Verde <= ww_Verde;
ww_clk_in <= clk_in;
ww_rst <= rst;
Vermelho <= ww_Vermelho;
Amarelo <= ww_Amarelo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

-- Location: IOOBUF_X33_Y28_N9
\Verde~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst11~0_combout\,
	devoe => ww_devoe,
	o => \Verde~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Vermelho~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst4~combout\,
	devoe => ww_devoe,
	o => \Vermelho~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\Amarelo~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst3~0_combout\,
	devoe => ww_devoe,
	o => \Amarelo~output_o\);

-- Location: LCCOMB_X32_Y28_N26
\inst|inst|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst~combout\ = (!\inst|inst|inst2~q\ & !\inst2|inst~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst2~q\,
	datad => \inst2|inst~6_combout\,
	combout => \inst|inst|inst|inst~combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
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

-- Location: FF_X32_Y28_N27
\inst|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \inst|inst|inst|inst~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst2~q\);

-- Location: LCCOMB_X32_Y28_N14
\inst|inst|inst16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst16~combout\ = \inst|inst|inst17~q\ $ (((\inst|inst|inst2~q\ & (\inst|inst|inst6~q\ & \inst|inst|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~q\,
	datab => \inst|inst|inst6~q\,
	datac => \inst|inst|inst17~q\,
	datad => \inst|inst|inst14~q\,
	combout => \inst|inst|inst16~combout\);

-- Location: LCCOMB_X32_Y28_N30
\inst|inst|inst19|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst19|inst~combout\ = (\inst|inst|inst16~combout\ & !\inst2|inst~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst16~combout\,
	datad => \inst2|inst~6_combout\,
	combout => \inst|inst|inst19|inst~combout\);

-- Location: FF_X32_Y28_N31
\inst|inst|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \inst|inst|inst19|inst~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst17~q\);

-- Location: LCCOMB_X32_Y28_N20
\inst2|inst14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst14~2_combout\ = (!\inst|inst|inst2~q\ & (\inst5|f1~q\ & (!\inst|inst|inst14~q\ & !\inst5|ff2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~q\,
	datab => \inst5|f1~q\,
	datac => \inst|inst|inst14~q\,
	datad => \inst5|ff2~q\,
	combout => \inst2|inst14~2_combout\);

-- Location: LCCOMB_X32_Y28_N10
\inst2|inst14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst14~combout\ = (\inst|inst|inst6~q\ & (!\inst|inst|inst17~q\ & \inst2|inst14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6~q\,
	datac => \inst|inst|inst17~q\,
	datad => \inst2|inst14~2_combout\,
	combout => \inst2|inst14~combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G17
\clk_in~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: FF_X32_Y28_N11
\inst5|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rst~inputclkctrl_outclk\,
	d => \inst2|inst14~combout\,
	clrn => \clk_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|ff2~q\);

-- Location: LCCOMB_X32_Y28_N28
\inst2|inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst~3_combout\ = (\inst|inst|inst17~q\ & (!\inst|inst|inst6~q\ & (\inst5|ff2~q\ $ (!\inst5|f1~q\)))) # (!\inst|inst|inst17~q\ & (!\inst5|ff2~q\ & (\inst5|f1~q\ & \inst|inst|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst17~q\,
	datab => \inst5|ff2~q\,
	datac => \inst5|f1~q\,
	datad => \inst|inst|inst6~q\,
	combout => \inst2|inst~3_combout\);

-- Location: LCCOMB_X32_Y28_N18
\inst2|inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst~6_combout\ = (!\inst|inst|inst14~q\ & (!\inst|inst|inst2~q\ & \inst2|inst~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst14~q\,
	datac => \inst|inst|inst2~q\,
	datad => \inst2|inst~3_combout\,
	combout => \inst2|inst~6_combout\);

-- Location: LCCOMB_X32_Y28_N12
\inst|inst|inst11|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst11|inst~combout\ = (!\inst2|inst~6_combout\ & (\inst|inst|inst2~q\ $ (\inst|inst|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~q\,
	datac => \inst|inst|inst6~q\,
	datad => \inst2|inst~6_combout\,
	combout => \inst|inst|inst11|inst~combout\);

-- Location: FF_X32_Y28_N13
\inst|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \inst|inst|inst11|inst~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst6~q\);

-- Location: LCCOMB_X32_Y28_N8
\inst|inst|inst12|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst12|inst~combout\ = (!\inst2|inst~6_combout\ & (\inst|inst|inst14~q\ $ (((\inst|inst|inst2~q\ & \inst|inst|inst6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~q\,
	datab => \inst|inst|inst6~q\,
	datac => \inst|inst|inst14~q\,
	datad => \inst2|inst~6_combout\,
	combout => \inst|inst|inst12|inst~combout\);

-- Location: FF_X32_Y28_N9
\inst|inst|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \inst|inst|inst12|inst~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst14~q\);

-- Location: LCCOMB_X32_Y28_N6
\inst2|inst10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst10~0_combout\ = (\inst|inst|inst17~q\ & (!\inst5|f1~q\ & !\inst|inst|inst6~q\)) # (!\inst|inst|inst17~q\ & (\inst5|f1~q\ & \inst|inst|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst17~q\,
	datac => \inst5|f1~q\,
	datad => \inst|inst|inst6~q\,
	combout => \inst2|inst10~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\inst2|inst10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst10~combout\ = (!\inst5|ff2~q\ & (!\inst|inst|inst14~q\ & (!\inst|inst|inst2~q\ & \inst2|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ff2~q\,
	datab => \inst|inst|inst14~q\,
	datac => \inst|inst|inst2~q\,
	datad => \inst2|inst10~0_combout\,
	combout => \inst2|inst10~combout\);

-- Location: FF_X32_Y28_N5
\inst5|f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rst~inputclkctrl_outclk\,
	d => \inst2|inst10~combout\,
	clrn => \clk_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|f1~q\);

-- Location: LCCOMB_X32_Y28_N24
\inst2|inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst11~0_combout\ = (!\inst5|f1~q\ & !\inst5|ff2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|f1~q\,
	datac => \inst5|ff2~q\,
	combout => \inst2|inst11~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\inst3|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst4~combout\ = (\inst5|f1~q\ & \inst5|ff2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|f1~q\,
	datac => \inst5|ff2~q\,
	combout => \inst3|inst4~combout\);

-- Location: LCCOMB_X32_Y28_N16
\inst3|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3~0_combout\ = (\inst5|f1~q\ & !\inst5|ff2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|f1~q\,
	datac => \inst5|ff2~q\,
	combout => \inst3|inst3~0_combout\);

ww_Verde <= \Verde~output_o\;

ww_Vermelho <= \Vermelho~output_o\;

ww_Amarelo <= \Amarelo~output_o\;
END structure;


