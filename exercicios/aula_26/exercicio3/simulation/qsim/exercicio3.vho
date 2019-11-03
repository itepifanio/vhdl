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

-- DATE "11/03/2019 20:35:05"

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
	bt : IN std_logic;
	km_par : OUT std_logic;
	km_res : OUT std_logic;
	cons : OUT std_logic;
	km_tot : OUT std_logic
	);
END exercicio3;

-- Design Ports Information
-- km_par	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- km_res	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cons	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- km_tot	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_bt : std_logic;
SIGNAL ww_km_par : std_logic;
SIGNAL ww_km_res : std_logic;
SIGNAL ww_cons : std_logic;
SIGNAL ww_km_tot : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \s[0]~1_combout\ : std_logic;
SIGNAL \prev_bt~feeder_combout\ : std_logic;
SIGNAL \prev_bt~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \s[1]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \km_par~reg0_q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \km_res~reg0_q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \cons~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \km_tot~reg0_q\ : std_logic;
SIGNAL s : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_bt~input_o\ : std_logic;
SIGNAL \ALT_INV_prev_bt~q\ : std_logic;
SIGNAL ALT_INV_s : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_km_tot~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_bt <= bt;
km_par <= ww_km_par;
km_res <= ww_km_res;
cons <= ww_cons;
km_tot <= ww_km_tot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bt~input_o\ <= NOT \bt~input_o\;
\ALT_INV_prev_bt~q\ <= NOT \prev_bt~q\;
ALT_INV_s(1) <= NOT s(1);
ALT_INV_s(0) <= NOT s(0);
\ALT_INV_km_tot~reg0_q\ <= NOT \km_tot~reg0_q\;

-- Location: IOOBUF_X89_Y37_N56
\km_par~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \km_par~reg0_q\,
	devoe => ww_devoe,
	o => ww_km_par);

-- Location: IOOBUF_X89_Y37_N39
\km_res~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \km_res~reg0_q\,
	devoe => ww_devoe,
	o => ww_km_res);

-- Location: IOOBUF_X89_Y37_N5
\cons~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cons~reg0_q\,
	devoe => ww_devoe,
	o => ww_cons);

-- Location: IOOBUF_X89_Y37_N22
\km_tot~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_km_tot~reg0_q\,
	devoe => ww_devoe,
	o => ww_km_tot);

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

-- Location: IOIBUF_X89_Y36_N4
\bt~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: LABCELL_X88_Y37_N45
\s[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~1_combout\ = !s(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_s(0),
	combout => \s[0]~1_combout\);

-- Location: LABCELL_X88_Y37_N6
\prev_bt~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_bt~feeder_combout\ = ( \bt~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_bt~input_o\,
	combout => \prev_bt~feeder_combout\);

-- Location: FF_X88_Y37_N8
prev_bt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_bt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_bt~q\);

-- Location: LABCELL_X88_Y37_N51
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\prev_bt~q\ & ( \bt~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	dataf => \ALT_INV_prev_bt~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X88_Y37_N47
\s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[0]~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(0));

-- Location: LABCELL_X88_Y37_N27
\s[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]~0_combout\ = ( s(1) & ( \prev_bt~q\ ) ) # ( s(1) & ( !\prev_bt~q\ & ( (!\bt~input_o\) # (s(0)) ) ) ) # ( !s(1) & ( !\prev_bt~q\ & ( (\bt~input_o\ & !s(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101011111010111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datac => ALT_INV_s(0),
	datae => ALT_INV_s(1),
	dataf => \ALT_INV_prev_bt~q\,
	combout => \s[1]~0_combout\);

-- Location: FF_X88_Y37_N29
\s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(1));

-- Location: LABCELL_X88_Y37_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !s(0) & ( s(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s(1),
	dataf => ALT_INV_s(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y37_N43
\km_par~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km_par~reg0_q\);

-- Location: LABCELL_X88_Y37_N54
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( s(0) & ( s(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s(1),
	dataf => ALT_INV_s(0),
	combout => \Mux0~1_combout\);

-- Location: FF_X88_Y37_N55
\km_res~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km_res~reg0_q\);

-- Location: LABCELL_X88_Y37_N57
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( !s(1) & ( !s(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s(0),
	dataf => ALT_INV_s(1),
	combout => \Mux0~2_combout\);

-- Location: FF_X88_Y37_N58
\cons~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~2_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cons~reg0_q\);

-- Location: LABCELL_X88_Y37_N48
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( s(0) & ( s(1) ) ) # ( !s(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s(1),
	dataf => ALT_INV_s(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X88_Y37_N49
\km_tot~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km_tot~reg0_q\);

-- Location: MLABCELL_X65_Y10_N3
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


