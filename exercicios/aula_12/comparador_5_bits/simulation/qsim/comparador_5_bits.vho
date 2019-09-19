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

-- DATE "09/18/2019 23:07:40"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparador_5_bits IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	i0 : IN std_logic;
	i1 : IN std_logic;
	i2 : IN std_logic;
	x : OUT std_logic;
	y : OUT std_logic;
	z : OUT std_logic
	);
END comparador_5_bits;

-- Design Ports Information
-- x	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_5_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i0 : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \s4|x~1_combout\ : std_logic;
SIGNAL \i0~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \s4|x~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \s4|x~2_combout\ : std_logic;
SIGNAL \s3|y~1_combout\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \s3|y~0_combout\ : std_logic;
SIGNAL \s4|y~combout\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \s4|z~0_combout\ : std_logic;
SIGNAL \s4|z~1_combout\ : std_logic;
SIGNAL \s4|z~2_combout\ : std_logic;
SIGNAL \ALT_INV_i2~input_o\ : std_logic;
SIGNAL \ALT_INV_i1~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i0~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \s4|ALT_INV_z~1_combout\ : std_logic;
SIGNAL \s4|ALT_INV_z~0_combout\ : std_logic;
SIGNAL \s3|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \s3|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \s4|ALT_INV_x~1_combout\ : std_logic;
SIGNAL \s4|ALT_INV_x~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_i0 <= i0;
ww_i1 <= i1;
ww_i2 <= i2;
x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i2~input_o\ <= NOT \i2~input_o\;
\ALT_INV_i1~input_o\ <= NOT \i1~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_i0~input_o\ <= NOT \i0~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\s4|ALT_INV_z~1_combout\ <= NOT \s4|z~1_combout\;
\s4|ALT_INV_z~0_combout\ <= NOT \s4|z~0_combout\;
\s3|ALT_INV_y~1_combout\ <= NOT \s3|y~1_combout\;
\s3|ALT_INV_y~0_combout\ <= NOT \s3|y~0_combout\;
\s4|ALT_INV_x~1_combout\ <= NOT \s4|x~1_combout\;
\s4|ALT_INV_x~0_combout\ <= NOT \s4|x~0_combout\;

-- Location: IOOBUF_X89_Y35_N62
\x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|x~2_combout\,
	devoe => ww_devoe,
	o => ww_x);

-- Location: IOOBUF_X89_Y38_N5
\y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|y~combout\,
	devoe => ww_devoe,
	o => ww_y);

-- Location: IOOBUF_X89_Y38_N39
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|z~2_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOIBUF_X89_Y37_N55
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y37_N33
\s4|x~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|x~1_combout\ = ( \b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\b[4]~input_o\ $ (!\b[3]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\b[4]~input_o\ $ (\b[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \s4|x~1_combout\);

-- Location: IOIBUF_X89_Y36_N21
\i0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0,
	o => \i0~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X88_Y37_N30
\s4|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|x~0_combout\ = ( \a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\a[0]~input_o\ $ (!\a[3]~input_o\)) ) ) # ( !\a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\a[0]~input_o\ $ (\a[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \s4|x~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X88_Y37_N9
\s4|x~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|x~2_combout\ = ( \s4|x~0_combout\ & ( \a[4]~input_o\ & ( !\s4|x~1_combout\ $ (!\i0~input_o\ $ (\b[0]~input_o\)) ) ) ) # ( !\s4|x~0_combout\ & ( \a[4]~input_o\ & ( !\s4|x~1_combout\ $ (!\i0~input_o\ $ (!\b[0]~input_o\)) ) ) ) # ( \s4|x~0_combout\ & ( 
-- !\a[4]~input_o\ & ( !\s4|x~1_combout\ $ (!\i0~input_o\ $ (!\b[0]~input_o\)) ) ) ) # ( !\s4|x~0_combout\ & ( !\a[4]~input_o\ & ( !\s4|x~1_combout\ $ (!\i0~input_o\ $ (\b[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010100101010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s4|ALT_INV_x~1_combout\,
	datac => \ALT_INV_i0~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \s4|ALT_INV_x~0_combout\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \s4|x~2_combout\);

-- Location: LABCELL_X88_Y37_N45
\s3|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s3|y~1_combout\ = (\a[2]~input_o\ & !\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	combout => \s3|y~1_combout\);

-- Location: IOIBUF_X89_Y38_N21
\i1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: LABCELL_X88_Y37_N42
\s3|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s3|y~0_combout\ = ( \i1~input_o\ & ( (\a[1]~input_o\ & !\b[1]~input_o\) ) ) # ( !\i1~input_o\ & ( (\a[1]~input_o\ & (!\b[1]~input_o\ & ((!\a[0]~input_o\) # (\b[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000001100010000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_i1~input_o\,
	combout => \s3|y~0_combout\);

-- Location: LABCELL_X88_Y37_N18
\s4|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|y~combout\ = ( \a[3]~input_o\ & ( !\b[4]~input_o\ & ( (\a[4]~input_o\ & (((\s3|y~1_combout\ & !\s3|y~0_combout\)) # (\b[3]~input_o\))) ) ) ) # ( !\a[3]~input_o\ & ( !\b[4]~input_o\ & ( \a[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \s3|ALT_INV_y~1_combout\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \s3|ALT_INV_y~0_combout\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \s4|y~combout\);

-- Location: IOIBUF_X89_Y38_N55
\i2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: LABCELL_X88_Y37_N27
\s4|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|z~0_combout\ = ( \a[2]~input_o\ & ( (\i2~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\))) ) ) # ( !\a[2]~input_o\ & ( (\i2~input_o\ & (!\b[2]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000000001000110010001100100011000000000010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_i2~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_a[2]~input_o\,
	combout => \s4|z~0_combout\);

-- Location: LABCELL_X88_Y37_N0
\s4|z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|z~1_combout\ = ( \b[4]~input_o\ & ( (!\a[4]~input_o\) # ((!\a[3]~input_o\ & \b[3]~input_o\)) ) ) # ( !\b[4]~input_o\ & ( (!\a[3]~input_o\ & \b[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \s4|z~1_combout\);

-- Location: LABCELL_X88_Y37_N3
\s4|z~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4|z~2_combout\ = ( \a[0]~input_o\ & ( (\s4|z~0_combout\ & !\s4|z~1_combout\) ) ) # ( !\a[0]~input_o\ & ( (\s4|z~0_combout\ & (!\s4|z~1_combout\ & !\b[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s4|ALT_INV_z~0_combout\,
	datac => \s4|ALT_INV_z~1_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \s4|z~2_combout\);

-- Location: LABCELL_X57_Y32_N0
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


