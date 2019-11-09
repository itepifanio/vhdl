-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/09/2019 10:25:57"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio3 IS
    PORT (
	clk : IN std_logic;
	cnt : IN std_logic;
	clr : IN std_logic;
	up_dwn : IN std_logic;
	fc : OUT std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END exercicio3;

-- Design Ports Information
-- clr	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_dwn	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cnt : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_up_dwn : std_logic;
SIGNAL ww_fc : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \up_dwn~input_o\ : std_logic;
SIGNAL \valor[0]~0_combout\ : std_logic;
SIGNAL \cnt~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \fc~0_combout\ : std_logic;
SIGNAL valor : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_up_dwn~input_o\ : std_logic;
SIGNAL ALT_INV_valor : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_cnt <= cnt;
ww_clr <= clr;
ww_up_dwn <= up_dwn;
fc <= ww_fc;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_up_dwn~input_o\ <= NOT \up_dwn~input_o\;
ALT_INV_valor(3) <= NOT valor(3);
ALT_INV_valor(2) <= NOT valor(2);
ALT_INV_valor(1) <= NOT valor(1);
ALT_INV_valor(0) <= NOT valor(0);

-- Location: IOOBUF_X89_Y36_N56
\fc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fc~0_combout\,
	devoe => ww_devoe,
	o => ww_fc);

-- Location: IOOBUF_X89_Y36_N39
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => valor(0),
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y36_N22
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => valor(1),
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y37_N56
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => valor(2),
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y36_N5
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => valor(3),
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N95
\up_dwn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_dwn,
	o => \up_dwn~input_o\);

-- Location: LABCELL_X88_Y36_N51
\valor[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor[0]~0_combout\ = !valor(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_valor(0),
	combout => \valor[0]~0_combout\);

-- Location: IOIBUF_X89_Y35_N78
\cnt~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt,
	o => \cnt~input_o\);

-- Location: FF_X88_Y36_N53
\valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \valor[0]~0_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(0));

-- Location: LABCELL_X88_Y36_N27
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( valor(1) & ( valor(0) & ( !\up_dwn~input_o\ ) ) ) # ( !valor(1) & ( valor(0) & ( \up_dwn~input_o\ ) ) ) # ( valor(1) & ( !valor(0) & ( \up_dwn~input_o\ ) ) ) # ( !valor(1) & ( !valor(0) & ( !\up_dwn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_up_dwn~input_o\,
	datae => ALT_INV_valor(1),
	dataf => ALT_INV_valor(0),
	combout => \Add1~0_combout\);

-- Location: FF_X88_Y36_N29
\valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~0_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(1));

-- Location: LABCELL_X88_Y36_N12
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( valor(2) & ( valor(1) & ( (!\up_dwn~input_o\) # (!valor(0)) ) ) ) # ( !valor(2) & ( valor(1) & ( (\up_dwn~input_o\ & valor(0)) ) ) ) # ( valor(2) & ( !valor(1) & ( (valor(0)) # (\up_dwn~input_o\) ) ) ) # ( !valor(2) & ( !valor(1) & ( 
-- (!\up_dwn~input_o\ & !valor(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010111110101111100000101000001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_up_dwn~input_o\,
	datac => ALT_INV_valor(0),
	datae => ALT_INV_valor(2),
	dataf => ALT_INV_valor(1),
	combout => \Add1~1_combout\);

-- Location: FF_X88_Y36_N14
\valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(2));

-- Location: LABCELL_X88_Y36_N54
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( valor(3) & ( valor(1) & ( (!\up_dwn~input_o\) # ((!valor(0)) # (!valor(2))) ) ) ) # ( !valor(3) & ( valor(1) & ( (\up_dwn~input_o\ & (valor(0) & valor(2))) ) ) ) # ( valor(3) & ( !valor(1) & ( ((valor(2)) # (valor(0))) # 
-- (\up_dwn~input_o\) ) ) ) # ( !valor(3) & ( !valor(1) & ( (!\up_dwn~input_o\ & (!valor(0) & !valor(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000010111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_up_dwn~input_o\,
	datac => ALT_INV_valor(0),
	datad => ALT_INV_valor(2),
	datae => ALT_INV_valor(3),
	dataf => ALT_INV_valor(1),
	combout => \Add1~2_combout\);

-- Location: FF_X88_Y36_N56
\valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~2_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(3));

-- Location: LABCELL_X88_Y36_N48
\fc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fc~0_combout\ = ( valor(2) & ( (!valor(0) & (((!\up_dwn~input_o\ & valor(1))))) # (valor(0) & ((!\up_dwn~input_o\) # ((valor(3) & valor(1))))) ) ) # ( !valor(2) & ( (valor(3) & (!\up_dwn~input_o\ & ((valor(1)) # (valor(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000000110000111100010011000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_valor(3),
	datab => ALT_INV_valor(0),
	datac => \ALT_INV_up_dwn~input_o\,
	datad => ALT_INV_valor(1),
	dataf => ALT_INV_valor(2),
	combout => \fc~0_combout\);

-- Location: IOIBUF_X84_Y81_N35
\clr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LABCELL_X42_Y80_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


