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

-- DATE "09/22/2019 11:51:17"

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

ENTITY 	calculadora IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	op : IN std_logic;
	luz1 : OUT std_logic;
	luz2 : OUT std_logic;
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- luz1	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz2	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_luz1 : std_logic;
SIGNAL ww_luz2 : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \op~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a3|i1|cout~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a2|i2|s~combout\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \a3|i2|cout~combout\ : std_logic;
SIGNAL \a2|i2|cout~combout\ : std_logic;
SIGNAL \a1|i2|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a2|i4|s~combout\ : std_logic;
SIGNAL \s~10_combout\ : std_logic;
SIGNAL \a1|i4|cout~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a2|i4|cout~combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a3|i4|cout~combout\ : std_logic;
SIGNAL \s~4_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a2|i6|s~combout\ : std_logic;
SIGNAL \s~6_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a2|i6|cout~combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a1|i6|cout~0_combout\ : std_logic;
SIGNAL \a3|i6|cout~combout\ : std_logic;
SIGNAL \s~5_combout\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op~input_o\ : std_logic;
SIGNAL \a2|i6|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a1|i6|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \a3|i6|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a2|i6|ALT_INV_s~combout\ : std_logic;
SIGNAL \a1|i4|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \a2|i4|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a3|i4|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a2|i4|ALT_INV_s~combout\ : std_logic;
SIGNAL \a1|i2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \a2|i2|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a3|i2|ALT_INV_cout~combout\ : std_logic;
SIGNAL \a2|i2|ALT_INV_s~combout\ : std_logic;
SIGNAL \a3|i1|ALT_INV_cout~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
luz1 <= ww_luz1;
luz2 <= ww_luz2;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_op~input_o\ <= NOT \op~input_o\;
\a2|i6|ALT_INV_cout~combout\ <= NOT \a2|i6|cout~combout\;
\a1|i6|ALT_INV_cout~0_combout\ <= NOT \a1|i6|cout~0_combout\;
\a3|i6|ALT_INV_cout~combout\ <= NOT \a3|i6|cout~combout\;
\a2|i6|ALT_INV_s~combout\ <= NOT \a2|i6|s~combout\;
\a1|i4|ALT_INV_cout~0_combout\ <= NOT \a1|i4|cout~0_combout\;
\a2|i4|ALT_INV_cout~combout\ <= NOT \a2|i4|cout~combout\;
\a3|i4|ALT_INV_cout~combout\ <= NOT \a3|i4|cout~combout\;
\a2|i4|ALT_INV_s~combout\ <= NOT \a2|i4|s~combout\;
\a1|i2|ALT_INV_cout~0_combout\ <= NOT \a1|i2|cout~0_combout\;
\a2|i2|ALT_INV_cout~combout\ <= NOT \a2|i2|cout~combout\;
\a3|i2|ALT_INV_cout~combout\ <= NOT \a3|i2|cout~combout\;
\a2|i2|ALT_INV_s~combout\ <= NOT \a2|i2|s~combout\;
\a3|i1|ALT_INV_cout~combout\ <= NOT \a3|i1|cout~combout\;

-- Location: IOOBUF_X60_Y0_N53
\luz1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op~input_o\,
	devoe => ww_devoe,
	o => ww_luz1);

-- Location: IOOBUF_X60_Y0_N36
\luz2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_op~input_o\,
	devoe => ww_devoe,
	o => ww_luz2);

-- Location: IOOBUF_X66_Y0_N59
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X64_Y0_N53
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~1_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X72_Y0_N19
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~2_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X72_Y0_N2
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~3_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X72_Y0_N53
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~10_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X64_Y0_N36
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~4_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X62_Y0_N2
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~6_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X68_Y0_N19
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~5_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOIBUF_X60_Y0_N1
\op~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op,
	o => \op~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X66_Y1_N36
\s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~0_combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \s~0_combout\);

-- Location: IOIBUF_X64_Y0_N1
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~1_combout\ = ( \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((\b[0]~input_o\ & (!\a[0]~input_o\ $ (\op~input_o\))))) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\b[0]~input_o\) # (!\a[0]~input_o\ $ (!\op~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110111110010000011011111010111110010000011011111001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_op~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \s~1_combout\);

-- Location: IOIBUF_X72_Y0_N35
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X67_Y1_N39
\a3|i1|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a3|i1|cout~combout\ = ( \a[1]~input_o\ & ( ((\b[0]~input_o\ & \a[0]~input_o\)) # (\b[1]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (\b[0]~input_o\ & (\a[0]~input_o\ & \b[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \a3|i1|cout~combout\);

-- Location: IOIBUF_X64_Y0_N18
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X67_Y1_N12
\a2|i2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i2|s~combout\ = ( \b[0]~input_o\ & ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ (((!\a[0]~input_o\ & ((!\a[1]~input_o\) # (\b[1]~input_o\))) # (\a[0]~input_o\ & (!\a[1]~input_o\ & \b[1]~input_o\)))) ) ) ) # ( !\b[0]~input_o\ & ( \b[2]~input_o\ & ( 
-- !\a[2]~input_o\ $ (((!\a[1]~input_o\ & \b[1]~input_o\))) ) ) ) # ( \b[0]~input_o\ & ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ (((!\a[0]~input_o\ & (\a[1]~input_o\ & !\b[1]~input_o\)) # (\a[0]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\))))) ) ) ) # ( 
-- !\b[0]~input_o\ & ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ (((!\b[1]~input_o\) # (\a[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101100101011010100110101010010110100110101001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \a2|i2|s~combout\);

-- Location: LABCELL_X67_Y1_N48
\s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~2_combout\ = ( \a2|i2|s~combout\ & ( (!\op~input_o\) # (!\b[2]~input_o\ $ (!\a3|i1|cout~combout\ $ (\a[2]~input_o\))) ) ) # ( !\a2|i2|s~combout\ & ( (\op~input_o\ & (!\b[2]~input_o\ $ (!\a3|i1|cout~combout\ $ (\a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101001000000000110100111111111011010011111111101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \a3|i1|ALT_INV_cout~combout\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_op~input_o\,
	dataf => \a2|i2|ALT_INV_s~combout\,
	combout => \s~2_combout\);

-- Location: LABCELL_X67_Y1_N54
\a3|i2|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a3|i2|cout~combout\ = ( \b[0]~input_o\ & ( \b[2]~input_o\ & ( ((!\a[0]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\)) # (\a[0]~input_o\ & ((\b[1]~input_o\) # (\a[1]~input_o\)))) # (\a[2]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \b[2]~input_o\ & ( 
-- ((\a[1]~input_o\ & \b[1]~input_o\)) # (\a[2]~input_o\) ) ) ) # ( \b[0]~input_o\ & ( !\b[2]~input_o\ & ( (\a[2]~input_o\ & ((!\a[0]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\)) # (\a[0]~input_o\ & ((\b[1]~input_o\) # (\a[1]~input_o\))))) ) ) ) # ( 
-- !\b[0]~input_o\ & ( !\b[2]~input_o\ & ( (\a[2]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010001010101010101010111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \a3|i2|cout~combout\);

-- Location: LABCELL_X67_Y1_N30
\a2|i2|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i2|cout~combout\ = ( \b[0]~input_o\ & ( \b[2]~input_o\ & ( (\a[2]~input_o\ & ((!\a[0]~input_o\ & (\a[1]~input_o\ & !\b[1]~input_o\)) # (\a[0]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\))))) ) ) ) # ( !\b[0]~input_o\ & ( \b[2]~input_o\ & ( 
-- (\a[2]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\))) ) ) ) # ( \b[0]~input_o\ & ( !\b[2]~input_o\ & ( ((!\a[0]~input_o\ & (\a[1]~input_o\ & !\b[1]~input_o\)) # (\a[0]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\)))) # (\a[2]~input_o\) ) ) ) # ( 
-- !\b[0]~input_o\ & ( !\b[2]~input_o\ & ( (\b[1]~input_o\ & ((\a[1]~input_o\) # (\a[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111011111110101011101010101000001010001010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \a2|i2|cout~combout\);

-- Location: LABCELL_X67_Y1_N51
\a1|i2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a1|i2|cout~0_combout\ = (!\b[2]~input_o\ & (!\b[1]~input_o\ & !\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \a1|i2|cout~0_combout\);

-- Location: IOIBUF_X70_Y0_N52
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X67_Y1_N6
\s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~3_combout\ = ( \b[3]~input_o\ & ( \a[3]~input_o\ & ( (!\op~input_o\ & ((!\a2|i2|cout~combout\ $ (\a1|i2|cout~0_combout\)))) # (\op~input_o\ & (\a3|i2|cout~combout\)) ) ) ) # ( !\b[3]~input_o\ & ( \a[3]~input_o\ & ( (!\op~input_o\ & 
-- ((!\a2|i2|cout~combout\ $ (!\a1|i2|cout~0_combout\)))) # (\op~input_o\ & (!\a3|i2|cout~combout\)) ) ) ) # ( \b[3]~input_o\ & ( !\a[3]~input_o\ & ( (!\op~input_o\ & ((!\a2|i2|cout~combout\ $ (!\a1|i2|cout~0_combout\)))) # (\op~input_o\ & 
-- (!\a3|i2|cout~combout\)) ) ) ) # ( !\b[3]~input_o\ & ( !\a[3]~input_o\ & ( (!\op~input_o\ & ((!\a2|i2|cout~combout\ $ (\a1|i2|cout~0_combout\)))) # (\op~input_o\ & (\a3|i2|cout~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001101010101001111001010101000111100101010101100001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a3|i2|ALT_INV_cout~combout\,
	datab => \a2|i2|ALT_INV_cout~combout\,
	datac => \a1|i2|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_op~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \s~3_combout\);

-- Location: IOIBUF_X70_Y0_N1
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X67_Y1_N42
\a2|i4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i4|s~combout\ = ( \b[3]~input_o\ & ( \a[4]~input_o\ & ( !\b[4]~input_o\ $ (((!\a[3]~input_o\ & ((!\a2|i2|cout~combout\) # (!\a1|i2|cout~0_combout\))) # (\a[3]~input_o\ & (!\a2|i2|cout~combout\ & !\a1|i2|cout~0_combout\)))) ) ) ) # ( !\b[3]~input_o\ & 
-- ( \a[4]~input_o\ & ( !\b[4]~input_o\ $ (((!\a[3]~input_o\ & (!\a2|i2|cout~combout\ & !\a1|i2|cout~0_combout\)) # (\a[3]~input_o\ & (\a2|i2|cout~combout\ & \a1|i2|cout~0_combout\)))) ) ) ) # ( \b[3]~input_o\ & ( !\a[4]~input_o\ & ( !\b[4]~input_o\ $ 
-- (((!\a[3]~input_o\ & (\a2|i2|cout~combout\ & \a1|i2|cout~0_combout\)) # (\a[3]~input_o\ & ((\a1|i2|cout~0_combout\) # (\a2|i2|cout~combout\))))) ) ) ) # ( !\b[3]~input_o\ & ( !\a[4]~input_o\ & ( !\b[4]~input_o\ $ (((!\a[3]~input_o\ & 
-- ((\a1|i2|cout~0_combout\) # (\a2|i2|cout~combout\))) # (\a[3]~input_o\ & ((!\a2|i2|cout~combout\) # (!\a1|i2|cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000101111110111010000001011101111110100000010001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \a2|i2|ALT_INV_cout~combout\,
	datac => \a1|i2|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \a2|i4|s~combout\);

-- Location: LABCELL_X67_Y1_N0
\s~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~10_combout\ = ( !\op~input_o\ & ( (((\a2|i4|s~combout\))) ) ) # ( \op~input_o\ & ( !\b[4]~input_o\ $ (!\a[4]~input_o\ $ (((!\a3|i2|cout~combout\ & (\b[3]~input_o\ & \a[3]~input_o\)) # (\a3|i2|cout~combout\ & ((\a[3]~input_o\) # (\b[3]~input_o\)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001101101100100100001111000011110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a3|i2|ALT_INV_cout~combout\,
	datab => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	datae => \ALT_INV_op~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	datag => \a2|i4|ALT_INV_s~combout\,
	combout => \s~10_combout\);

-- Location: LABCELL_X67_Y1_N21
\a1|i4|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a1|i4|cout~0_combout\ = ( !\b[2]~input_o\ & ( (!\b[3]~input_o\ & (!\b[4]~input_o\ & (!\b[1]~input_o\ & !\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \a1|i4|cout~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LABCELL_X67_Y1_N24
\a2|i4|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i4|cout~combout\ = ( \b[3]~input_o\ & ( \a[4]~input_o\ & ( (!\b[4]~input_o\) # ((!\a[3]~input_o\ & (\a2|i2|cout~combout\ & \a1|i2|cout~0_combout\)) # (\a[3]~input_o\ & ((\a1|i2|cout~0_combout\) # (\a2|i2|cout~combout\)))) ) ) ) # ( !\b[3]~input_o\ & ( 
-- \a[4]~input_o\ & ( (!\a1|i2|cout~0_combout\ & (((!\b[4]~input_o\) # (\a2|i2|cout~combout\)) # (\a[3]~input_o\))) # (\a1|i2|cout~0_combout\ & (((\a[3]~input_o\ & \a2|i2|cout~combout\)) # (\b[4]~input_o\))) ) ) ) # ( \b[3]~input_o\ & ( !\a[4]~input_o\ & ( 
-- (!\b[4]~input_o\ & ((!\a[3]~input_o\ & (\a2|i2|cout~combout\ & \a1|i2|cout~0_combout\)) # (\a[3]~input_o\ & ((\a1|i2|cout~0_combout\) # (\a2|i2|cout~combout\))))) ) ) ) # ( !\b[3]~input_o\ & ( !\a[4]~input_o\ & ( (!\a1|i2|cout~0_combout\ & 
-- (!\b[4]~input_o\ & ((\a2|i2|cout~combout\) # (\a[3]~input_o\)))) # (\a1|i2|cout~0_combout\ & (\a[3]~input_o\ & (\a2|i2|cout~combout\ & \b[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000001000101110000000011110001011111111111111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \a2|i2|ALT_INV_cout~combout\,
	datac => \a1|i2|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \a2|i4|cout~combout\);

-- Location: IOIBUF_X62_Y0_N52
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LABCELL_X67_Y1_N18
\a3|i4|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a3|i4|cout~combout\ = ( \a[4]~input_o\ & ( ((!\b[3]~input_o\ & (\a[3]~input_o\ & \a3|i2|cout~combout\)) # (\b[3]~input_o\ & ((\a3|i2|cout~combout\) # (\a[3]~input_o\)))) # (\b[4]~input_o\) ) ) # ( !\a[4]~input_o\ & ( (\b[4]~input_o\ & ((!\b[3]~input_o\ & 
-- (\a[3]~input_o\ & \a3|i2|cout~combout\)) # (\b[3]~input_o\ & ((\a3|i2|cout~combout\) # (\a[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \a3|i2|ALT_INV_cout~combout\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \a3|i4|cout~combout\);

-- Location: LABCELL_X66_Y1_N42
\s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~4_combout\ = ( \b[5]~input_o\ & ( \a3|i4|cout~combout\ & ( !\a[5]~input_o\ $ (((!\a1|i4|cout~0_combout\ $ (\a2|i4|cout~combout\)) # (\op~input_o\))) ) ) ) # ( !\b[5]~input_o\ & ( \a3|i4|cout~combout\ & ( !\a[5]~input_o\ $ (((!\op~input_o\ & 
-- (!\a1|i4|cout~0_combout\ $ (!\a2|i4|cout~combout\))))) ) ) ) # ( \b[5]~input_o\ & ( !\a3|i4|cout~combout\ & ( !\a[5]~input_o\ $ (((!\op~input_o\ & (!\a1|i4|cout~0_combout\ $ (\a2|i4|cout~combout\))))) ) ) ) # ( !\b[5]~input_o\ & ( !\a3|i4|cout~combout\ & 
-- ( !\a[5]~input_o\ $ (((!\a1|i4|cout~0_combout\ $ (!\a2|i4|cout~combout\)) # (\op~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001101100011011011001001110010011100011011000110001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|i4|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_a[5]~input_o\,
	datac => \ALT_INV_op~input_o\,
	datad => \a2|i4|ALT_INV_cout~combout\,
	datae => \ALT_INV_b[5]~input_o\,
	dataf => \a3|i4|ALT_INV_cout~combout\,
	combout => \s~4_combout\);

-- Location: IOIBUF_X66_Y0_N41
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LABCELL_X66_Y1_N48
\a2|i6|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i6|s~combout\ = ( \a1|i4|cout~0_combout\ & ( \a[6]~input_o\ & ( !\b[6]~input_o\ $ (((!\b[5]~input_o\ & (\a[5]~input_o\ & \a2|i4|cout~combout\)) # (\b[5]~input_o\ & (!\a[5]~input_o\ & !\a2|i4|cout~combout\)))) ) ) ) # ( !\a1|i4|cout~0_combout\ & ( 
-- \a[6]~input_o\ & ( !\b[6]~input_o\ $ (((!\b[5]~input_o\ & (!\a[5]~input_o\ & !\a2|i4|cout~combout\)) # (\b[5]~input_o\ & ((!\a[5]~input_o\) # (!\a2|i4|cout~combout\))))) ) ) ) # ( \a1|i4|cout~0_combout\ & ( !\a[6]~input_o\ & ( !\b[6]~input_o\ $ 
-- (((!\b[5]~input_o\ & ((!\a[5]~input_o\) # (!\a2|i4|cout~combout\))) # (\b[5]~input_o\ & ((\a2|i4|cout~combout\) # (\a[5]~input_o\))))) ) ) ) # ( !\a1|i4|cout~0_combout\ & ( !\a[6]~input_o\ & ( !\b[6]~input_o\ $ (((!\b[5]~input_o\ & ((\a2|i4|cout~combout\) 
-- # (\a[5]~input_o\))) # (\b[5]~input_o\ & (\a[5]~input_o\ & \a2|i4|cout~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001001001011010010110010110100101101101101001011010011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \ALT_INV_a[5]~input_o\,
	datac => \ALT_INV_b[6]~input_o\,
	datad => \a2|i4|ALT_INV_cout~combout\,
	datae => \a1|i4|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_a[6]~input_o\,
	combout => \a2|i6|s~combout\);

-- Location: LABCELL_X66_Y1_N0
\s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~6_combout\ = ( !\op~input_o\ & ( (((\a2|i6|s~combout\))) ) ) # ( \op~input_o\ & ( !\b[6]~input_o\ $ (!\a[6]~input_o\ $ (((!\a[5]~input_o\ & (\b[5]~input_o\ & \a3|i4|cout~combout\)) # (\a[5]~input_o\ & ((\a3|i4|cout~combout\) # (\b[5]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010101100110101000001111000011111010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_a[5]~input_o\,
	datac => \ALT_INV_b[5]~input_o\,
	datad => \a3|i4|ALT_INV_cout~combout\,
	datae => \ALT_INV_op~input_o\,
	dataf => \ALT_INV_a[6]~input_o\,
	datag => \a2|i6|ALT_INV_s~combout\,
	combout => \s~6_combout\);

-- Location: IOIBUF_X66_Y0_N75
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LABCELL_X66_Y1_N30
\a2|i6|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a2|i6|cout~combout\ = ( \a1|i4|cout~0_combout\ & ( \b[5]~input_o\ & ( (!\b[6]~input_o\ & (((\a2|i4|cout~combout\) # (\a[6]~input_o\)) # (\a[5]~input_o\))) # (\b[6]~input_o\ & (\a[6]~input_o\ & ((\a2|i4|cout~combout\) # (\a[5]~input_o\)))) ) ) ) # ( 
-- !\a1|i4|cout~0_combout\ & ( \b[5]~input_o\ & ( (!\b[6]~input_o\ & (((\a[5]~input_o\ & \a2|i4|cout~combout\)) # (\a[6]~input_o\))) # (\b[6]~input_o\ & (\a[5]~input_o\ & (\a[6]~input_o\ & \a2|i4|cout~combout\))) ) ) ) # ( \a1|i4|cout~0_combout\ & ( 
-- !\b[5]~input_o\ & ( (!\b[6]~input_o\ & (\a[5]~input_o\ & (\a[6]~input_o\ & \a2|i4|cout~combout\))) # (\b[6]~input_o\ & (((\a[5]~input_o\ & \a2|i4|cout~combout\)) # (\a[6]~input_o\))) ) ) ) # ( !\a1|i4|cout~0_combout\ & ( !\b[5]~input_o\ & ( 
-- (!\b[6]~input_o\ & (((\a2|i4|cout~combout\) # (\a[6]~input_o\)) # (\a[5]~input_o\))) # (\b[6]~input_o\ & (\a[6]~input_o\ & ((\a2|i4|cout~combout\) # (\a[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110101111000001010001011100001010001010110010101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_a[5]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \a2|i4|ALT_INV_cout~combout\,
	datae => \a1|i4|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \a2|i6|cout~combout\);

-- Location: IOIBUF_X62_Y0_N35
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LABCELL_X66_Y1_N27
\a1|i6|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a1|i6|cout~0_combout\ = (!\b[6]~input_o\ & (!\b[5]~input_o\ & \a1|i4|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datad => \a1|i4|ALT_INV_cout~0_combout\,
	combout => \a1|i6|cout~0_combout\);

-- Location: LABCELL_X66_Y1_N24
\a3|i6|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a3|i6|cout~combout\ = ( \a3|i4|cout~combout\ & ( (!\b[6]~input_o\ & (\a[6]~input_o\ & ((\a[5]~input_o\) # (\b[5]~input_o\)))) # (\b[6]~input_o\ & (((\a[5]~input_o\) # (\a[6]~input_o\)) # (\b[5]~input_o\))) ) ) # ( !\a3|i4|cout~combout\ & ( 
-- (!\b[6]~input_o\ & (\b[5]~input_o\ & (\a[6]~input_o\ & \a[5]~input_o\))) # (\b[6]~input_o\ & (((\b[5]~input_o\ & \a[5]~input_o\)) # (\a[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_a[5]~input_o\,
	dataf => \a3|i4|ALT_INV_cout~combout\,
	combout => \a3|i6|cout~combout\);

-- Location: LABCELL_X66_Y1_N6
\s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~5_combout\ = ( \a1|i6|cout~0_combout\ & ( \a3|i6|cout~combout\ & ( !\b[7]~input_o\ $ (!\a[7]~input_o\ $ (((\op~input_o\) # (\a2|i6|cout~combout\)))) ) ) ) # ( !\a1|i6|cout~0_combout\ & ( \a3|i6|cout~combout\ & ( !\b[7]~input_o\ $ (!\a[7]~input_o\ $ 
-- (((!\a2|i6|cout~combout\) # (\op~input_o\)))) ) ) ) # ( \a1|i6|cout~0_combout\ & ( !\a3|i6|cout~combout\ & ( !\b[7]~input_o\ $ (!\a[7]~input_o\ $ (((\a2|i6|cout~combout\ & !\op~input_o\)))) ) ) ) # ( !\a1|i6|cout~0_combout\ & ( !\a3|i6|cout~combout\ & ( 
-- !\b[7]~input_o\ $ (!\a[7]~input_o\ $ (((!\a2|i6|cout~combout\ & !\op~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001011010011010010101101010010110101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datab => \a2|i6|ALT_INV_cout~combout\,
	datac => \ALT_INV_a[7]~input_o\,
	datad => \ALT_INV_op~input_o\,
	datae => \a1|i6|ALT_INV_cout~0_combout\,
	dataf => \a3|i6|ALT_INV_cout~combout\,
	combout => \s~5_combout\);

-- Location: LABCELL_X66_Y36_N0
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


