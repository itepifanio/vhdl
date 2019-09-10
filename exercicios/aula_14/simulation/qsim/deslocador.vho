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

-- DATE "09/10/2019 19:45:32"

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

ENTITY 	deslocador IS
    PORT (
	entra : IN std_logic_vector(7 DOWNTO 0);
	desloca : IN std_logic_vector(1 DOWNTO 0);
	direita : OUT std_logic_vector(7 DOWNTO 0);
	esquerda : OUT std_logic_vector(7 DOWNTO 0)
	);
END deslocador;

-- Design Ports Information
-- direita[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desloca[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- desloca[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF deslocador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entra : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_desloca : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_direita : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_esquerda : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \desloca[1]~input_o\ : std_logic;
SIGNAL \entra[1]~input_o\ : std_logic;
SIGNAL \desloca[0]~input_o\ : std_logic;
SIGNAL \direita~0_combout\ : std_logic;
SIGNAL \entra[2]~input_o\ : std_logic;
SIGNAL \direita~1_combout\ : std_logic;
SIGNAL \entra[3]~input_o\ : std_logic;
SIGNAL \direita~2_combout\ : std_logic;
SIGNAL \entra[4]~input_o\ : std_logic;
SIGNAL \direita~3_combout\ : std_logic;
SIGNAL \entra[5]~input_o\ : std_logic;
SIGNAL \direita~4_combout\ : std_logic;
SIGNAL \entra[6]~input_o\ : std_logic;
SIGNAL \direita~5_combout\ : std_logic;
SIGNAL \entra[7]~input_o\ : std_logic;
SIGNAL \direita~6_combout\ : std_logic;
SIGNAL \entra[0]~input_o\ : std_logic;
SIGNAL \esquerda~0_combout\ : std_logic;
SIGNAL \esquerda~1_combout\ : std_logic;
SIGNAL \esquerda~2_combout\ : std_logic;
SIGNAL \esquerda~3_combout\ : std_logic;
SIGNAL \esquerda~4_combout\ : std_logic;
SIGNAL \esquerda~5_combout\ : std_logic;
SIGNAL \esquerda~6_combout\ : std_logic;
SIGNAL \ALT_INV_entra[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_desloca[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_desloca[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entra[1]~input_o\ : std_logic;

BEGIN

ww_entra <= entra;
ww_desloca <= desloca;
direita <= ww_direita;
esquerda <= ww_esquerda;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entra[0]~input_o\ <= NOT \entra[0]~input_o\;
\ALT_INV_entra[7]~input_o\ <= NOT \entra[7]~input_o\;
\ALT_INV_entra[6]~input_o\ <= NOT \entra[6]~input_o\;
\ALT_INV_entra[5]~input_o\ <= NOT \entra[5]~input_o\;
\ALT_INV_entra[4]~input_o\ <= NOT \entra[4]~input_o\;
\ALT_INV_entra[3]~input_o\ <= NOT \entra[3]~input_o\;
\ALT_INV_entra[2]~input_o\ <= NOT \entra[2]~input_o\;
\ALT_INV_desloca[1]~input_o\ <= NOT \desloca[1]~input_o\;
\ALT_INV_desloca[0]~input_o\ <= NOT \desloca[0]~input_o\;
\ALT_INV_entra[1]~input_o\ <= NOT \entra[1]~input_o\;

-- Location: IOOBUF_X89_Y4_N96
\direita[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~0_combout\,
	devoe => ww_devoe,
	o => ww_direita(0));

-- Location: IOOBUF_X89_Y6_N56
\direita[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~1_combout\,
	devoe => ww_devoe,
	o => ww_direita(1));

-- Location: IOOBUF_X89_Y36_N56
\direita[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~2_combout\,
	devoe => ww_devoe,
	o => ww_direita(2));

-- Location: IOOBUF_X89_Y4_N79
\direita[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~3_combout\,
	devoe => ww_devoe,
	o => ww_direita(3));

-- Location: IOOBUF_X89_Y6_N22
\direita[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~4_combout\,
	devoe => ww_devoe,
	o => ww_direita(4));

-- Location: IOOBUF_X89_Y6_N39
\direita[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~5_combout\,
	devoe => ww_devoe,
	o => ww_direita(5));

-- Location: IOOBUF_X70_Y0_N2
\direita[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direita~6_combout\,
	devoe => ww_devoe,
	o => ww_direita(6));

-- Location: IOOBUF_X40_Y81_N36
\direita[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_direita(7));

-- Location: IOOBUF_X72_Y81_N53
\esquerda[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_esquerda(0));

-- Location: IOOBUF_X68_Y0_N19
\esquerda[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~0_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(1));

-- Location: IOOBUF_X89_Y4_N45
\esquerda[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~1_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(2));

-- Location: IOOBUF_X72_Y0_N19
\esquerda[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~2_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(3));

-- Location: IOOBUF_X72_Y0_N36
\esquerda[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~3_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(4));

-- Location: IOOBUF_X89_Y4_N62
\esquerda[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~4_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(5));

-- Location: IOOBUF_X72_Y0_N2
\esquerda[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~5_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(6));

-- Location: IOOBUF_X89_Y8_N5
\esquerda[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \esquerda~6_combout\,
	devoe => ww_devoe,
	o => ww_esquerda(7));

-- Location: IOIBUF_X89_Y9_N21
\desloca[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_desloca(1),
	o => \desloca[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\entra[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(1),
	o => \entra[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\desloca[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_desloca(0),
	o => \desloca[0]~input_o\);

-- Location: LABCELL_X88_Y4_N0
\direita~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~0_combout\ = ( \entra[1]~input_o\ & ( !\desloca[0]~input_o\ & ( \desloca[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_desloca[1]~input_o\,
	datae => \ALT_INV_entra[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\entra[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(2),
	o => \entra[2]~input_o\);

-- Location: LABCELL_X88_Y4_N9
\direita~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~1_combout\ = ( \entra[2]~input_o\ & ( !\desloca[0]~input_o\ & ( \desloca[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_desloca[1]~input_o\,
	datae => \ALT_INV_entra[2]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~1_combout\);

-- Location: IOIBUF_X70_Y0_N18
\entra[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(3),
	o => \entra[3]~input_o\);

-- Location: LABCELL_X88_Y4_N12
\direita~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~2_combout\ = ( !\desloca[0]~input_o\ & ( (\desloca[1]~input_o\ & \entra[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_desloca[1]~input_o\,
	datac => \ALT_INV_entra[3]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~2_combout\);

-- Location: IOIBUF_X89_Y8_N21
\entra[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(4),
	o => \entra[4]~input_o\);

-- Location: LABCELL_X88_Y4_N18
\direita~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~3_combout\ = ( !\desloca[0]~input_o\ & ( (\entra[4]~input_o\ & \desloca[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entra[4]~input_o\,
	datab => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~3_combout\);

-- Location: IOIBUF_X89_Y8_N38
\entra[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(5),
	o => \entra[5]~input_o\);

-- Location: LABCELL_X88_Y4_N54
\direita~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~4_combout\ = ( !\desloca[0]~input_o\ & ( (\desloca[1]~input_o\ & \entra[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_desloca[1]~input_o\,
	datab => \ALT_INV_entra[5]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~4_combout\);

-- Location: IOIBUF_X89_Y6_N4
\entra[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(6),
	o => \entra[6]~input_o\);

-- Location: LABCELL_X88_Y4_N30
\direita~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~5_combout\ = ( !\desloca[0]~input_o\ & ( (\entra[6]~input_o\ & \desloca[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entra[6]~input_o\,
	datab => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~5_combout\);

-- Location: IOIBUF_X89_Y8_N55
\entra[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(7),
	o => \entra[7]~input_o\);

-- Location: LABCELL_X88_Y4_N39
\direita~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \direita~6_combout\ = ( !\desloca[0]~input_o\ & ( (\desloca[1]~input_o\ & \entra[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_desloca[1]~input_o\,
	datad => \ALT_INV_entra[7]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \direita~6_combout\);

-- Location: IOIBUF_X70_Y0_N52
\entra[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entra(0),
	o => \entra[0]~input_o\);

-- Location: LABCELL_X88_Y4_N42
\esquerda~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~0_combout\ = ( !\desloca[1]~input_o\ & ( \desloca[0]~input_o\ & ( \entra[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entra[0]~input_o\,
	datae => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~0_combout\);

-- Location: LABCELL_X88_Y4_N51
\esquerda~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~1_combout\ = ( \entra[1]~input_o\ & ( \desloca[0]~input_o\ & ( !\desloca[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_desloca[1]~input_o\,
	datae => \ALT_INV_entra[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~1_combout\);

-- Location: LABCELL_X88_Y4_N36
\esquerda~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~2_combout\ = ( \desloca[0]~input_o\ & ( (!\desloca[1]~input_o\ & \entra[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_desloca[1]~input_o\,
	datad => \ALT_INV_entra[2]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~2_combout\);

-- Location: LABCELL_X88_Y4_N27
\esquerda~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~3_combout\ = ( \desloca[0]~input_o\ & ( (\entra[3]~input_o\ & !\desloca[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entra[3]~input_o\,
	datac => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~3_combout\);

-- Location: LABCELL_X88_Y4_N21
\esquerda~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~4_combout\ = ( \desloca[0]~input_o\ & ( (\entra[4]~input_o\ & !\desloca[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entra[4]~input_o\,
	datab => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~4_combout\);

-- Location: LABCELL_X88_Y4_N57
\esquerda~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~5_combout\ = ( \desloca[0]~input_o\ & ( (!\desloca[1]~input_o\ & \entra[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_desloca[1]~input_o\,
	datab => \ALT_INV_entra[5]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~5_combout\);

-- Location: LABCELL_X88_Y4_N33
\esquerda~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \esquerda~6_combout\ = ( \desloca[0]~input_o\ & ( (\entra[6]~input_o\ & !\desloca[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entra[6]~input_o\,
	datab => \ALT_INV_desloca[1]~input_o\,
	dataf => \ALT_INV_desloca[0]~input_o\,
	combout => \esquerda~6_combout\);

-- Location: LABCELL_X30_Y13_N0
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


