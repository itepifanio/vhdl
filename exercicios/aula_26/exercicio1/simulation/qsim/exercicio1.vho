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

-- DATE "10/30/2019 23:18:17"

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

ENTITY 	exercicio1 IS
    PORT (
	clk : IN std_logic;
	bt : IN std_logic;
	x : OUT std_logic;
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	l3 : OUT std_logic
	);
END exercicio1;

-- Design Ports Information
-- x	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio1 IS
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
SIGNAL ww_x : std_logic;
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \y[0]~feeder_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \y[1]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \y[2]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \x~reg0_q\ : std_logic;
SIGNAL \l1~reg0_q\ : std_logic;
SIGNAL \l2~reg0_q\ : std_logic;
SIGNAL \l3~reg0_q\ : std_logic;
SIGNAL y : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_bt~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_y : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_bt <= bt;
x <= ww_x;
l1 <= ww_l1;
l2 <= ww_l2;
l3 <= ww_l3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bt~input_o\ <= NOT \bt~input_o\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_y(2) <= NOT y(2);
ALT_INV_y(1) <= NOT y(1);
ALT_INV_y(0) <= NOT y(0);

-- Location: IOOBUF_X89_Y38_N39
\x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x~reg0_q\,
	devoe => ww_devoe,
	o => ww_x);

-- Location: IOOBUF_X89_Y37_N56
\l1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \l1~reg0_q\,
	devoe => ww_devoe,
	o => ww_l1);

-- Location: IOOBUF_X89_Y38_N22
\l2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \l2~reg0_q\,
	devoe => ww_devoe,
	o => ww_l2);

-- Location: IOOBUF_X89_Y38_N5
\l3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \l3~reg0_q\,
	devoe => ww_devoe,
	o => ww_l3);

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

-- Location: IOIBUF_X89_Y38_N55
\bt~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: LABCELL_X88_Y38_N48
\y[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[0]~feeder_combout\ = ( \Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \y[0]~feeder_combout\);

-- Location: FF_X88_Y38_N50
\y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(0));

-- Location: LABCELL_X88_Y38_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !y(2) & ( y(1) & ( (!\bt~input_o\ & !y(0)) ) ) ) # ( y(2) & ( !y(1) & ( (\bt~input_o\ & !y(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datac => ALT_INV_y(0),
	datae => ALT_INV_y(2),
	dataf => ALT_INV_y(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y38_N24
\y[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[1]~feeder_combout\ = ( \Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \y[1]~feeder_combout\);

-- Location: FF_X88_Y38_N26
\y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(1));

-- Location: LABCELL_X88_Y38_N39
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( y(2) & ( !y(1) & ( (!\bt~input_o\ & !y(0)) ) ) ) # ( !y(2) & ( !y(1) & ( (\bt~input_o\ & !y(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datad => ALT_INV_y(0),
	datae => ALT_INV_y(2),
	dataf => ALT_INV_y(1),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y38_N57
\y[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[2]~feeder_combout\ = ( \Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \y[2]~feeder_combout\);

-- Location: FF_X88_Y38_N59
\y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(2));

-- Location: LABCELL_X88_Y38_N21
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !y(2) & ( y(1) & ( (\bt~input_o\ & !y(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datad => ALT_INV_y(0),
	datae => ALT_INV_y(2),
	dataf => ALT_INV_y(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y38_N23
\x~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~reg0_q\);

-- Location: FF_X88_Y38_N40
\l1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1~reg0_q\);

-- Location: FF_X88_Y38_N43
\l2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2~reg0_q\);

-- Location: FF_X88_Y38_N19
\l3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l3~reg0_q\);

-- Location: MLABCELL_X72_Y69_N0
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


