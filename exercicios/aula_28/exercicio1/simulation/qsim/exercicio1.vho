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

-- DATE "11/06/2019 21:54:42"

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
	c : IN std_logic;
	s : IN std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	d : BUFFER std_logic
	);
END exercicio1;

-- Design Ports Information
-- s[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_c : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|d~7_combout\ : std_logic;
SIGNAL \i2|y\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \i2|ALT_INV_d~7_combout\ : std_logic;
SIGNAL \i2|ALT_INV_y\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_c <= c;
ww_s <= s;
ww_a <= a;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\i2|ALT_INV_d~7_combout\ <= NOT \i2|d~7_combout\;
\i2|ALT_INV_y\(1) <= NOT \i2|y\(1);
\i2|ALT_INV_y\(0) <= NOT \i2|y\(0);

-- Location: IOOBUF_X8_Y0_N36
\d~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ALT_INV_d~7_combout\,
	devoe => ww_devoe,
	o => ww_d);

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

-- Location: IOIBUF_X8_Y0_N52
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LABCELL_X9_Y2_N24
\i2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = ( !\i2|y\(1) & ( \i2|y\(0) & ( \c~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c~input_o\,
	datae => \i2|ALT_INV_y\(1),
	dataf => \i2|ALT_INV_y\(0),
	combout => \i2|Mux0~0_combout\);

-- Location: FF_X9_Y2_N26
\i2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(1));

-- Location: LABCELL_X9_Y2_N45
\i2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = ( !\i2|y\(0) & ( \i2|y\(1) ) ) # ( \i2|y\(0) & ( !\i2|y\(1) & ( !\c~input_o\ ) ) ) # ( !\i2|y\(0) & ( !\i2|y\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~input_o\,
	datae => \i2|ALT_INV_y\(0),
	dataf => \i2|ALT_INV_y\(1),
	combout => \i2|Mux1~0_combout\);

-- Location: FF_X9_Y2_N47
\i2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(0));

-- Location: LABCELL_X9_Y2_N39
\i2|d~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|d~7_combout\ = ( !\i2|y\(0) & ( \i2|y\(1) ) ) # ( \i2|y\(0) & ( !\i2|y\(1) ) ) # ( !\i2|y\(0) & ( !\i2|y\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i2|ALT_INV_y\(0),
	dataf => \i2|ALT_INV_y\(1),
	combout => \i2|d~7_combout\);

-- Location: IOIBUF_X36_Y81_N35
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\s[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\s[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(3),
	o => \s[3]~input_o\);

-- Location: IOIBUF_X82_Y81_N92
\s[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(4),
	o => \s[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\s[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(5),
	o => \s[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\s[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(6),
	o => \s[6]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\s[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(7),
	o => \s[7]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X74_Y81_N75
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LABCELL_X51_Y48_N3
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


