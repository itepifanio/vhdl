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

-- DATE "11/08/2019 20:24:31"

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

ENTITY 	contador_assincrono_crescente IS
    PORT (
	clk : IN std_logic;
	q0 : OUT std_logic;
	q1 : OUT std_logic
	);
END contador_assincrono_crescente;

-- Design Ports Information
-- q0	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_assincrono_crescente IS
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
SIGNAL ww_q0 : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \sq0~0_combout\ : std_logic;
SIGNAL \sq0~feeder_combout\ : std_logic;
SIGNAL \sq0~q\ : std_logic;
SIGNAL \sq1~q\ : std_logic;
SIGNAL \sq1~0_combout\ : std_logic;
SIGNAL \sq1~feeder_combout\ : std_logic;
SIGNAL \sq1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sq1~0_combout\ : std_logic;
SIGNAL \ALT_INV_sq0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sq1~q\ : std_logic;
SIGNAL \ALT_INV_sq0~q\ : std_logic;

BEGIN

ww_clk <= clk;
q0 <= ww_q0;
q1 <= ww_q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sq1~0_combout\ <= NOT \sq1~0_combout\;
\ALT_INV_sq0~0_combout\ <= NOT \sq0~0_combout\;
\ALT_INV_sq1~q\ <= NOT \sq1~q\;
\ALT_INV_sq0~q\ <= NOT \sq0~q\;

-- Location: IOOBUF_X4_Y0_N36
\q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sq0~q\,
	devoe => ww_devoe,
	o => ww_q0);

-- Location: IOOBUF_X4_Y0_N19
\q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sq1~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_q1);

-- Location: IOIBUF_X4_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X4_Y1_N33
\sq0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sq0~0_combout\ = ( !\sq0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sq0~q\,
	combout => \sq0~0_combout\);

-- Location: LABCELL_X4_Y1_N39
\sq0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sq0~feeder_combout\ = \sq0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sq0~0_combout\,
	combout => \sq0~feeder_combout\);

-- Location: FF_X4_Y1_N41
sq0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sq0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sq0~q\);

-- Location: FF_X4_Y1_N53
sq1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sq0~q\,
	d => \sq1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sq1~q\);

-- Location: LABCELL_X4_Y1_N57
\sq1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sq1~0_combout\ = ( !\sq1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sq1~q\,
	combout => \sq1~0_combout\);

-- Location: LABCELL_X4_Y1_N51
\sq1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sq1~feeder_combout\ = ( \sq1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sq1~0_combout\,
	combout => \sq1~feeder_combout\);

-- Location: FF_X4_Y1_N52
\sq1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sq0~q\,
	d => \sq1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sq1~DUPLICATE_q\);

-- Location: LABCELL_X31_Y32_N0
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


