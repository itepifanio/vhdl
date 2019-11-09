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

-- DATE "11/09/2019 12:32:02"

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

ENTITY 	exercicio2 IS
    PORT (
	clk : IN std_logic;
	c : IN std_logic;
	s : IN std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	d : OUT std_logic;
	troco : OUT std_logic
	);
END exercicio2;

-- Design Ports Information
-- d	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio2 IS
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
SIGNAL ww_c : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic;
SIGNAL ww_troco : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \i1|Add0~29_sumout\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|d~1_combout\ : std_logic;
SIGNAL \i1|Add0~30\ : std_logic;
SIGNAL \i1|Add0~25_sumout\ : std_logic;
SIGNAL \i1|Add0~26\ : std_logic;
SIGNAL \i1|Add0~21_sumout\ : std_logic;
SIGNAL \i1|Add0~22\ : std_logic;
SIGNAL \i1|Add0~17_sumout\ : std_logic;
SIGNAL \i1|Add0~18\ : std_logic;
SIGNAL \i1|Add0~1_sumout\ : std_logic;
SIGNAL \i1|LessThan1~6_combout\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \i1|Add0~2\ : std_logic;
SIGNAL \i1|Add0~13_sumout\ : std_logic;
SIGNAL \i1|Add0~14\ : std_logic;
SIGNAL \i1|Add0~9_sumout\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \i1|Add0~10\ : std_logic;
SIGNAL \i1|Add0~5_sumout\ : std_logic;
SIGNAL \i1|LessThan1~0_combout\ : std_logic;
SIGNAL \i1|LessThan0~2_combout\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \i1|LessThan0~1_combout\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \i1|LessThan1~5_combout\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \i1|LessThan0~3_combout\ : std_logic;
SIGNAL \i2|Mux0~3_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i1|LessThan0~0_combout\ : std_logic;
SIGNAL \i2|Mux0~1_combout\ : std_logic;
SIGNAL \i2|Mux0~2_combout\ : std_logic;
SIGNAL \i2|Mux0~4_combout\ : std_logic;
SIGNAL \i2|d~0_combout\ : std_logic;
SIGNAL \i1|LessThan1~3_combout\ : std_logic;
SIGNAL \i1|LessThan1~1_combout\ : std_logic;
SIGNAL \i1|LessThan1~2_combout\ : std_logic;
SIGNAL \i1|LessThan1~4_combout\ : std_logic;
SIGNAL \i2|y\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i1|tot_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[4]~input_o\ : std_logic;
SIGNAL \i2|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \i1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_d~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_y\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i1|ALT_INV_tot_saida\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_c <= c;
ww_s <= s;
ww_a <= a;
d <= ww_d;
troco <= ww_troco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_s[0]~input_o\ <= NOT \s[0]~input_o\;
\ALT_INV_s[1]~input_o\ <= NOT \s[1]~input_o\;
\ALT_INV_s[2]~input_o\ <= NOT \s[2]~input_o\;
\ALT_INV_s[3]~input_o\ <= NOT \s[3]~input_o\;
\ALT_INV_s[5]~input_o\ <= NOT \s[5]~input_o\;
\ALT_INV_s[6]~input_o\ <= NOT \s[6]~input_o\;
\ALT_INV_s[7]~input_o\ <= NOT \s[7]~input_o\;
\ALT_INV_s[4]~input_o\ <= NOT \s[4]~input_o\;
\i2|ALT_INV_Mux0~3_combout\ <= NOT \i2|Mux0~3_combout\;
\i1|ALT_INV_LessThan0~3_combout\ <= NOT \i1|LessThan0~3_combout\;
\i2|ALT_INV_Mux0~2_combout\ <= NOT \i2|Mux0~2_combout\;
\i2|ALT_INV_Mux0~1_combout\ <= NOT \i2|Mux0~1_combout\;
\i1|ALT_INV_LessThan0~2_combout\ <= NOT \i1|LessThan0~2_combout\;
\i1|ALT_INV_LessThan0~1_combout\ <= NOT \i1|LessThan0~1_combout\;
\i1|ALT_INV_LessThan0~0_combout\ <= NOT \i1|LessThan0~0_combout\;
\i1|ALT_INV_LessThan1~6_combout\ <= NOT \i1|LessThan1~6_combout\;
\i1|ALT_INV_LessThan1~5_combout\ <= NOT \i1|LessThan1~5_combout\;
\i2|ALT_INV_Mux0~0_combout\ <= NOT \i2|Mux0~0_combout\;
\i1|ALT_INV_LessThan1~3_combout\ <= NOT \i1|LessThan1~3_combout\;
\i1|ALT_INV_LessThan1~2_combout\ <= NOT \i1|LessThan1~2_combout\;
\i1|ALT_INV_LessThan1~1_combout\ <= NOT \i1|LessThan1~1_combout\;
\i1|ALT_INV_LessThan1~0_combout\ <= NOT \i1|LessThan1~0_combout\;
\i2|ALT_INV_d~0_combout\ <= NOT \i2|d~0_combout\;
\i2|ALT_INV_y\(1) <= NOT \i2|y\(1);
\i2|ALT_INV_y\(0) <= NOT \i2|y\(0);
\i1|ALT_INV_tot_saida\(0) <= NOT \i1|tot_saida\(0);
\i1|ALT_INV_tot_saida\(1) <= NOT \i1|tot_saida\(1);
\i1|ALT_INV_tot_saida\(2) <= NOT \i1|tot_saida\(2);
\i1|ALT_INV_tot_saida\(3) <= NOT \i1|tot_saida\(3);
\i1|ALT_INV_tot_saida\(5) <= NOT \i1|tot_saida\(5);
\i1|ALT_INV_tot_saida\(6) <= NOT \i1|tot_saida\(6);
\i1|ALT_INV_tot_saida\(7) <= NOT \i1|tot_saida\(7);
\i1|ALT_INV_tot_saida\(4) <= NOT \i1|tot_saida\(4);

-- Location: IOOBUF_X89_Y9_N5
\d~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => ww_d);

-- Location: IOOBUF_X89_Y35_N45
\troco~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|LessThan1~4_combout\,
	devoe => ww_devoe,
	o => ww_troco);

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

-- Location: IOIBUF_X89_Y37_N55
\s[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(4),
	o => \s[4]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: MLABCELL_X87_Y42_N0
\i1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~29_sumout\ = SUM(( \i1|tot_saida\(0) ) + ( \a[0]~input_o\ ) + ( !VCC ))
-- \i1|Add0~30\ = CARRY(( \i1|tot_saida\(0) ) + ( \a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(0),
	cin => GND,
	sumout => \i1|Add0~29_sumout\,
	cout => \i1|Add0~30\);

-- Location: IOIBUF_X89_Y36_N21
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LABCELL_X88_Y42_N3
\i2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = ( !\i2|y\(1) & ( \i2|y\(0) & ( !\c~input_o\ ) ) ) # ( \i2|y\(1) & ( !\i2|y\(0) ) ) # ( !\i2|y\(1) & ( !\i2|y\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~input_o\,
	datae => \i2|ALT_INV_y\(1),
	dataf => \i2|ALT_INV_y\(0),
	combout => \i2|Mux1~0_combout\);

-- Location: FF_X87_Y42_N41
\i2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i2|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(0));

-- Location: MLABCELL_X87_Y42_N51
\i2|d~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|d~1_combout\ = (!\i2|y\(0) & !\i2|y\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2|ALT_INV_y\(0),
	datad => \i2|ALT_INV_y\(1),
	combout => \i2|d~1_combout\);

-- Location: FF_X87_Y42_N2
\i1|tot_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~29_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(0));

-- Location: MLABCELL_X87_Y42_N3
\i1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~25_sumout\ = SUM(( \i1|tot_saida\(1) ) + ( \a[1]~input_o\ ) + ( \i1|Add0~30\ ))
-- \i1|Add0~26\ = CARRY(( \i1|tot_saida\(1) ) + ( \a[1]~input_o\ ) + ( \i1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(1),
	cin => \i1|Add0~30\,
	sumout => \i1|Add0~25_sumout\,
	cout => \i1|Add0~26\);

-- Location: FF_X87_Y42_N5
\i1|tot_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~25_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(1));

-- Location: MLABCELL_X87_Y42_N6
\i1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~21_sumout\ = SUM(( \i1|tot_saida\(2) ) + ( \a[2]~input_o\ ) + ( \i1|Add0~26\ ))
-- \i1|Add0~22\ = CARRY(( \i1|tot_saida\(2) ) + ( \a[2]~input_o\ ) + ( \i1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(2),
	cin => \i1|Add0~26\,
	sumout => \i1|Add0~21_sumout\,
	cout => \i1|Add0~22\);

-- Location: FF_X87_Y42_N8
\i1|tot_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~21_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(2));

-- Location: MLABCELL_X87_Y42_N9
\i1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~17_sumout\ = SUM(( \i1|tot_saida\(3) ) + ( \a[3]~input_o\ ) + ( \i1|Add0~22\ ))
-- \i1|Add0~18\ = CARRY(( \i1|tot_saida\(3) ) + ( \a[3]~input_o\ ) + ( \i1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(3),
	cin => \i1|Add0~22\,
	sumout => \i1|Add0~17_sumout\,
	cout => \i1|Add0~18\);

-- Location: FF_X87_Y42_N11
\i1|tot_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~17_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(3));

-- Location: MLABCELL_X87_Y42_N12
\i1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~1_sumout\ = SUM(( \i1|tot_saida\(4) ) + ( \a[4]~input_o\ ) + ( \i1|Add0~18\ ))
-- \i1|Add0~2\ = CARRY(( \i1|tot_saida\(4) ) + ( \a[4]~input_o\ ) + ( \i1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[4]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(4),
	cin => \i1|Add0~18\,
	sumout => \i1|Add0~1_sumout\,
	cout => \i1|Add0~2\);

-- Location: FF_X87_Y42_N14
\i1|tot_saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~1_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(4));

-- Location: MLABCELL_X87_Y42_N30
\i1|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~6_combout\ = ( \i1|tot_saida\(4) & ( !\s[4]~input_o\ ) ) # ( !\i1|tot_saida\(4) & ( \s[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_s[4]~input_o\,
	dataf => \i1|ALT_INV_tot_saida\(4),
	combout => \i1|LessThan1~6_combout\);

-- Location: IOIBUF_X89_Y37_N4
\s[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(3),
	o => \s[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\s[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(5),
	o => \s[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\s[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(7),
	o => \s[7]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: MLABCELL_X87_Y42_N15
\i1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~13_sumout\ = SUM(( \i1|tot_saida\(5) ) + ( \a[5]~input_o\ ) + ( \i1|Add0~2\ ))
-- \i1|Add0~14\ = CARRY(( \i1|tot_saida\(5) ) + ( \a[5]~input_o\ ) + ( \i1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(5),
	cin => \i1|Add0~2\,
	sumout => \i1|Add0~13_sumout\,
	cout => \i1|Add0~14\);

-- Location: FF_X87_Y42_N17
\i1|tot_saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~13_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(5));

-- Location: MLABCELL_X87_Y42_N18
\i1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~9_sumout\ = SUM(( \i1|tot_saida\(6) ) + ( \a[6]~input_o\ ) + ( \i1|Add0~14\ ))
-- \i1|Add0~10\ = CARRY(( \i1|tot_saida\(6) ) + ( \a[6]~input_o\ ) + ( \i1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[6]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(6),
	cin => \i1|Add0~14\,
	sumout => \i1|Add0~9_sumout\,
	cout => \i1|Add0~10\);

-- Location: FF_X87_Y42_N20
\i1|tot_saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~9_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(6));

-- Location: IOIBUF_X89_Y37_N38
\s[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(6),
	o => \s[6]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: MLABCELL_X87_Y42_N21
\i1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~5_sumout\ = SUM(( \i1|tot_saida\(7) ) + ( \a[7]~input_o\ ) + ( \i1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[7]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(7),
	cin => \i1|Add0~10\,
	sumout => \i1|Add0~5_sumout\);

-- Location: FF_X87_Y42_N23
\i1|tot_saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~5_sumout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(7));

-- Location: MLABCELL_X87_Y42_N54
\i1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~0_combout\ = ( \i1|tot_saida\(7) & ( \i1|tot_saida\(5) & ( (\s[5]~input_o\ & (\s[7]~input_o\ & (!\i1|tot_saida\(6) $ (\s[6]~input_o\)))) ) ) ) # ( !\i1|tot_saida\(7) & ( \i1|tot_saida\(5) & ( (\s[5]~input_o\ & (!\s[7]~input_o\ & 
-- (!\i1|tot_saida\(6) $ (\s[6]~input_o\)))) ) ) ) # ( \i1|tot_saida\(7) & ( !\i1|tot_saida\(5) & ( (!\s[5]~input_o\ & (\s[7]~input_o\ & (!\i1|tot_saida\(6) $ (\s[6]~input_o\)))) ) ) ) # ( !\i1|tot_saida\(7) & ( !\i1|tot_saida\(5) & ( (!\s[5]~input_o\ & 
-- (!\s[7]~input_o\ & (!\i1|tot_saida\(6) $ (\s[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[5]~input_o\,
	datab => \ALT_INV_s[7]~input_o\,
	datac => \i1|ALT_INV_tot_saida\(6),
	datad => \ALT_INV_s[6]~input_o\,
	datae => \i1|ALT_INV_tot_saida\(7),
	dataf => \i1|ALT_INV_tot_saida\(5),
	combout => \i1|LessThan1~0_combout\);

-- Location: MLABCELL_X87_Y42_N33
\i1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan0~2_combout\ = ( \i1|LessThan1~0_combout\ & ( (!\i1|LessThan1~6_combout\ & (\s[3]~input_o\ & !\i1|tot_saida\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_LessThan1~6_combout\,
	datab => \ALT_INV_s[3]~input_o\,
	datac => \i1|ALT_INV_tot_saida\(3),
	dataf => \i1|ALT_INV_LessThan1~0_combout\,
	combout => \i1|LessThan0~2_combout\);

-- Location: IOIBUF_X89_Y35_N78
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: LABCELL_X88_Y42_N15
\i1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan0~1_combout\ = ( !\i1|tot_saida\(1) & ( \s[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i1|ALT_INV_tot_saida\(1),
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \i1|LessThan0~1_combout\);

-- Location: IOIBUF_X89_Y36_N38
\s[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

-- Location: MLABCELL_X87_Y42_N24
\i1|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~5_combout\ = ( \i1|tot_saida\(3) & ( !\s[3]~input_o\ ) ) # ( !\i1|tot_saida\(3) & ( \s[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s[3]~input_o\,
	dataf => \i1|ALT_INV_tot_saida\(3),
	combout => \i1|LessThan1~5_combout\);

-- Location: IOIBUF_X89_Y35_N95
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: LABCELL_X88_Y42_N42
\i1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan0~3_combout\ = ( \i1|tot_saida\(1) & ( (\s[0]~input_o\ & (\s[1]~input_o\ & !\i1|tot_saida\(0))) ) ) # ( !\i1|tot_saida\(1) & ( (\s[0]~input_o\ & (!\s[1]~input_o\ & !\i1|tot_saida\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000100000001000001000000010000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datab => \ALT_INV_s[1]~input_o\,
	datac => \i1|ALT_INV_tot_saida\(0),
	datae => \i1|ALT_INV_tot_saida\(1),
	combout => \i1|LessThan0~3_combout\);

-- Location: LABCELL_X88_Y42_N33
\i2|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~3_combout\ = ( \i1|LessThan1~0_combout\ & ( \i1|LessThan0~3_combout\ & ( (!\i1|LessThan1~5_combout\ & (!\i1|LessThan1~6_combout\ & ((!\i1|tot_saida\(2)) # (\s[2]~input_o\)))) ) ) ) # ( \i1|LessThan1~0_combout\ & ( !\i1|LessThan0~3_combout\ & ( 
-- (\s[2]~input_o\ & (!\i1|tot_saida\(2) & (!\i1|LessThan1~5_combout\ & !\i1|LessThan1~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[2]~input_o\,
	datab => \i1|ALT_INV_tot_saida\(2),
	datac => \i1|ALT_INV_LessThan1~5_combout\,
	datad => \i1|ALT_INV_LessThan1~6_combout\,
	datae => \i1|ALT_INV_LessThan1~0_combout\,
	dataf => \i1|ALT_INV_LessThan0~3_combout\,
	combout => \i2|Mux0~3_combout\);

-- Location: MLABCELL_X87_Y42_N27
\i2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = ( \i2|y\(0) & ( (\c~input_o\ & !\i2|y\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~input_o\,
	datad => \i2|ALT_INV_y\(1),
	dataf => \i2|ALT_INV_y\(0),
	combout => \i2|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y42_N48
\i1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan0~0_combout\ = ( \i1|LessThan1~0_combout\ & ( (!\i1|LessThan1~5_combout\ & (!\i1|LessThan1~6_combout\ & (!\i1|tot_saida\(2) $ (\s[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000001000001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_LessThan1~5_combout\,
	datab => \i1|ALT_INV_tot_saida\(2),
	datac => \i1|ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_s[2]~input_o\,
	dataf => \i1|ALT_INV_LessThan1~0_combout\,
	combout => \i1|LessThan0~0_combout\);

-- Location: LABCELL_X88_Y42_N18
\i2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~1_combout\ = ( \i1|tot_saida\(7) & ( \i1|tot_saida\(6) & ( (\s[7]~input_o\ & (\s[5]~input_o\ & (\s[6]~input_o\ & !\i1|tot_saida\(5)))) ) ) ) # ( !\i1|tot_saida\(7) & ( \i1|tot_saida\(6) & ( ((\s[5]~input_o\ & (\s[6]~input_o\ & 
-- !\i1|tot_saida\(5)))) # (\s[7]~input_o\) ) ) ) # ( \i1|tot_saida\(7) & ( !\i1|tot_saida\(6) & ( (\s[7]~input_o\ & (((\s[5]~input_o\ & !\i1|tot_saida\(5))) # (\s[6]~input_o\))) ) ) ) # ( !\i1|tot_saida\(7) & ( !\i1|tot_saida\(6) & ( (((\s[5]~input_o\ & 
-- !\i1|tot_saida\(5))) # (\s[6]~input_o\)) # (\s[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101011111000101010000010101010111010101010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[7]~input_o\,
	datab => \ALT_INV_s[5]~input_o\,
	datac => \ALT_INV_s[6]~input_o\,
	datad => \i1|ALT_INV_tot_saida\(5),
	datae => \i1|ALT_INV_tot_saida\(7),
	dataf => \i1|ALT_INV_tot_saida\(6),
	combout => \i2|Mux0~1_combout\);

-- Location: MLABCELL_X87_Y42_N42
\i2|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~2_combout\ = ( !\i2|y\(1) & ( !\i2|Mux0~1_combout\ & ( (\i2|y\(0) & ((!\s[4]~input_o\) # ((!\i1|LessThan1~0_combout\) # (\i1|tot_saida\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[4]~input_o\,
	datab => \i1|ALT_INV_tot_saida\(4),
	datac => \i1|ALT_INV_LessThan1~0_combout\,
	datad => \i2|ALT_INV_y\(0),
	datae => \i2|ALT_INV_y\(1),
	dataf => \i2|ALT_INV_Mux0~1_combout\,
	combout => \i2|Mux0~2_combout\);

-- Location: MLABCELL_X87_Y42_N36
\i2|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~4_combout\ = ( \i1|LessThan0~0_combout\ & ( \i2|Mux0~2_combout\ & ( ((!\i1|LessThan0~2_combout\ & (!\i1|LessThan0~1_combout\ & !\i2|Mux0~3_combout\))) # (\i2|Mux0~0_combout\) ) ) ) # ( !\i1|LessThan0~0_combout\ & ( \i2|Mux0~2_combout\ & ( 
-- ((!\i1|LessThan0~2_combout\ & !\i2|Mux0~3_combout\)) # (\i2|Mux0~0_combout\) ) ) ) # ( \i1|LessThan0~0_combout\ & ( !\i2|Mux0~2_combout\ & ( \i2|Mux0~0_combout\ ) ) ) # ( !\i1|LessThan0~0_combout\ & ( !\i2|Mux0~2_combout\ & ( \i2|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110100000111111111000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_LessThan0~2_combout\,
	datab => \i1|ALT_INV_LessThan0~1_combout\,
	datac => \i2|ALT_INV_Mux0~3_combout\,
	datad => \i2|ALT_INV_Mux0~0_combout\,
	datae => \i1|ALT_INV_LessThan0~0_combout\,
	dataf => \i2|ALT_INV_Mux0~2_combout\,
	combout => \i2|Mux0~4_combout\);

-- Location: FF_X87_Y42_N38
\i2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i2|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(1));

-- Location: LABCELL_X88_Y42_N48
\i2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|d~0_combout\ = ( !\i2|y\(1) & ( \i2|y\(0) ) ) # ( \i2|y\(1) & ( !\i2|y\(0) ) ) # ( !\i2|y\(1) & ( !\i2|y\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i2|ALT_INV_y\(1),
	dataf => \i2|ALT_INV_y\(0),
	combout => \i2|d~0_combout\);

-- Location: LABCELL_X88_Y42_N6
\i1|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~3_combout\ = ( \s[7]~input_o\ & ( \i1|tot_saida\(5) & ( (\i1|tot_saida\(7) & ((!\s[6]~input_o\ & ((!\s[5]~input_o\) # (\i1|tot_saida\(6)))) # (\s[6]~input_o\ & (\i1|tot_saida\(6) & !\s[5]~input_o\)))) ) ) ) # ( !\s[7]~input_o\ & ( 
-- \i1|tot_saida\(5) & ( ((!\s[6]~input_o\ & ((!\s[5]~input_o\) # (\i1|tot_saida\(6)))) # (\s[6]~input_o\ & (\i1|tot_saida\(6) & !\s[5]~input_o\))) # (\i1|tot_saida\(7)) ) ) ) # ( \s[7]~input_o\ & ( !\i1|tot_saida\(5) & ( (!\s[6]~input_o\ & 
-- (\i1|tot_saida\(6) & \i1|tot_saida\(7))) ) ) ) # ( !\s[7]~input_o\ & ( !\i1|tot_saida\(5) & ( ((!\s[6]~input_o\ & \i1|tot_saida\(6))) # (\i1|tot_saida\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111000000100000001010111111001011110000101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[6]~input_o\,
	datab => \i1|ALT_INV_tot_saida\(6),
	datac => \i1|ALT_INV_tot_saida\(7),
	datad => \ALT_INV_s[5]~input_o\,
	datae => \ALT_INV_s[7]~input_o\,
	dataf => \i1|ALT_INV_tot_saida\(5),
	combout => \i1|LessThan1~3_combout\);

-- Location: LABCELL_X88_Y42_N54
\i1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~1_combout\ = ( \i1|tot_saida\(0) & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\) # (\i1|tot_saida\(1)))) # (\s[0]~input_o\ & (!\s[1]~input_o\ & \i1|tot_saida\(1))) ) ) # ( !\i1|tot_saida\(0) & ( (!\s[1]~input_o\ & \i1|tot_saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100100011101000111000001100000011001000111010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datab => \ALT_INV_s[1]~input_o\,
	datac => \i1|ALT_INV_tot_saida\(1),
	datae => \i1|ALT_INV_tot_saida\(0),
	combout => \i1|LessThan1~1_combout\);

-- Location: LABCELL_X88_Y42_N39
\i1|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~2_combout\ = ( \s[3]~input_o\ & ( \i1|tot_saida\(2) & ( (\i1|tot_saida\(3) & ((!\s[2]~input_o\) # (\i1|LessThan1~1_combout\))) ) ) ) # ( !\s[3]~input_o\ & ( \i1|tot_saida\(2) & ( ((!\s[2]~input_o\) # (\i1|tot_saida\(3))) # 
-- (\i1|LessThan1~1_combout\) ) ) ) # ( \s[3]~input_o\ & ( !\i1|tot_saida\(2) & ( (\i1|LessThan1~1_combout\ & (\i1|tot_saida\(3) & !\s[2]~input_o\)) ) ) ) # ( !\s[3]~input_o\ & ( !\i1|tot_saida\(2) & ( ((\i1|LessThan1~1_combout\ & !\s[2]~input_o\)) # 
-- (\i1|tot_saida\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011000100000001000011110111111101110011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_LessThan1~1_combout\,
	datab => \i1|ALT_INV_tot_saida\(3),
	datac => \ALT_INV_s[2]~input_o\,
	datae => \ALT_INV_s[3]~input_o\,
	dataf => \i1|ALT_INV_tot_saida\(2),
	combout => \i1|LessThan1~2_combout\);

-- Location: LABCELL_X88_Y42_N24
\i1|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|LessThan1~4_combout\ = ( \i1|tot_saida\(4) & ( \i1|LessThan1~2_combout\ & ( (\i1|LessThan1~0_combout\) # (\i1|LessThan1~3_combout\) ) ) ) # ( !\i1|tot_saida\(4) & ( \i1|LessThan1~2_combout\ & ( ((!\s[4]~input_o\ & \i1|LessThan1~0_combout\)) # 
-- (\i1|LessThan1~3_combout\) ) ) ) # ( \i1|tot_saida\(4) & ( !\i1|LessThan1~2_combout\ & ( ((!\s[4]~input_o\ & \i1|LessThan1~0_combout\)) # (\i1|LessThan1~3_combout\) ) ) ) # ( !\i1|tot_saida\(4) & ( !\i1|LessThan1~2_combout\ & ( \i1|LessThan1~3_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111011101100110011101110110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[4]~input_o\,
	datab => \i1|ALT_INV_LessThan1~3_combout\,
	datad => \i1|ALT_INV_LessThan1~0_combout\,
	datae => \i1|ALT_INV_tot_saida\(4),
	dataf => \i1|ALT_INV_LessThan1~2_combout\,
	combout => \i1|LessThan1~4_combout\);

-- Location: LABCELL_X35_Y34_N0
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


