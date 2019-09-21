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

-- DATE "09/21/2019 16:08:45"

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

ENTITY 	comparador_3_numeros IS
    PORT (
	n1 : IN std_logic_vector(7 DOWNTO 0);
	n2 : IN std_logic_vector(7 DOWNTO 0);
	n3 : IN std_logic_vector(7 DOWNTO 0);
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END comparador_3_numeros;

-- Design Ports Information
-- s[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_3_numeros IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \n3[7]~input_o\ : std_logic;
SIGNAL \n1[6]~input_o\ : std_logic;
SIGNAL \n3[5]~input_o\ : std_logic;
SIGNAL \n1[7]~input_o\ : std_logic;
SIGNAL \n3[6]~input_o\ : std_logic;
SIGNAL \n1[5]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \n1[4]~input_o\ : std_logic;
SIGNAL \n3[4]~input_o\ : std_logic;
SIGNAL \n3[3]~input_o\ : std_logic;
SIGNAL \n1[3]~input_o\ : std_logic;
SIGNAL \n3[2]~input_o\ : std_logic;
SIGNAL \n1[2]~input_o\ : std_logic;
SIGNAL \n3[1]~input_o\ : std_logic;
SIGNAL \n1[1]~input_o\ : std_logic;
SIGNAL \n3[0]~input_o\ : std_logic;
SIGNAL \n1[0]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \n2[6]~input_o\ : std_logic;
SIGNAL \n2[7]~input_o\ : std_logic;
SIGNAL \n2[5]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \n2[4]~input_o\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \n2[3]~input_o\ : std_logic;
SIGNAL \n2[2]~input_o\ : std_logic;
SIGNAL \n2[0]~input_o\ : std_logic;
SIGNAL \n2[1]~input_o\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \s~4_combout\ : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \s~5_combout\ : std_logic;
SIGNAL \s~6_combout\ : std_logic;
SIGNAL \s~7_combout\ : std_logic;
SIGNAL \s~8_combout\ : std_logic;
SIGNAL \s~9_combout\ : std_logic;
SIGNAL \s~10_combout\ : std_logic;
SIGNAL \s~11_combout\ : std_logic;
SIGNAL \s~12_combout\ : std_logic;
SIGNAL \ALT_INV_n3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_s~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_s~2_combout\ : std_logic;
SIGNAL \ALT_INV_s~1_combout\ : std_logic;
SIGNAL \ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_n1 <= n1;
ww_n2 <= n2;
ww_n3 <= n3;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_n3[1]~input_o\ <= NOT \n3[1]~input_o\;
\ALT_INV_n3[5]~input_o\ <= NOT \n3[5]~input_o\;
\ALT_INV_n3[6]~input_o\ <= NOT \n3[6]~input_o\;
\ALT_INV_n3[7]~input_o\ <= NOT \n3[7]~input_o\;
\ALT_INV_n3[2]~input_o\ <= NOT \n3[2]~input_o\;
\ALT_INV_n3[3]~input_o\ <= NOT \n3[3]~input_o\;
\ALT_INV_n3[4]~input_o\ <= NOT \n3[4]~input_o\;
\ALT_INV_n2[1]~input_o\ <= NOT \n2[1]~input_o\;
\ALT_INV_n1[1]~input_o\ <= NOT \n1[1]~input_o\;
\ALT_INV_n2[2]~input_o\ <= NOT \n2[2]~input_o\;
\ALT_INV_n2[3]~input_o\ <= NOT \n2[3]~input_o\;
\ALT_INV_n1[2]~input_o\ <= NOT \n1[2]~input_o\;
\ALT_INV_n1[3]~input_o\ <= NOT \n1[3]~input_o\;
\ALT_INV_n2[5]~input_o\ <= NOT \n2[5]~input_o\;
\ALT_INV_n2[6]~input_o\ <= NOT \n2[6]~input_o\;
\ALT_INV_n2[7]~input_o\ <= NOT \n2[7]~input_o\;
\ALT_INV_n1[5]~input_o\ <= NOT \n1[5]~input_o\;
\ALT_INV_n1[6]~input_o\ <= NOT \n1[6]~input_o\;
\ALT_INV_n1[7]~input_o\ <= NOT \n1[7]~input_o\;
\ALT_INV_n2[4]~input_o\ <= NOT \n2[4]~input_o\;
\ALT_INV_n1[4]~input_o\ <= NOT \n1[4]~input_o\;
\ALT_INV_n2[0]~input_o\ <= NOT \n2[0]~input_o\;
\ALT_INV_n3[0]~input_o\ <= NOT \n3[0]~input_o\;
\ALT_INV_n1[0]~input_o\ <= NOT \n1[0]~input_o\;
\ALT_INV_s~4_combout\ <= NOT \s~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_s~3_combout\ <= NOT \s~3_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_s~2_combout\ <= NOT \s~2_combout\;
\ALT_INV_s~1_combout\ <= NOT \s~1_combout\;
\ALT_INV_s~0_combout\ <= NOT \s~0_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X89_Y8_N5
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~5_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y8_N56
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~6_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y6_N5
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~7_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y4_N96
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~8_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y4_N62
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~9_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X70_Y0_N2
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~10_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y36_N39
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~11_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X89_Y37_N56
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~12_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOIBUF_X89_Y37_N4
\n3[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(7),
	o => \n3[7]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\n1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(6),
	o => \n1[6]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\n3[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(5),
	o => \n3[5]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\n1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(7),
	o => \n1[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\n3[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(6),
	o => \n3[6]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\n1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(5),
	o => \n1[5]~input_o\);

-- Location: LABCELL_X83_Y31_N0
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \n3[6]~input_o\ & ( \n1[5]~input_o\ & ( (\n1[6]~input_o\ & (\n3[5]~input_o\ & (!\n3[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) ) # ( !\n3[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n1[6]~input_o\ & (\n3[5]~input_o\ & (!\n3[7]~input_o\ $ 
-- (\n1[7]~input_o\)))) ) ) ) # ( \n3[6]~input_o\ & ( !\n1[5]~input_o\ & ( (\n1[6]~input_o\ & (!\n3[5]~input_o\ & (!\n3[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) ) # ( !\n3[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n1[6]~input_o\ & (!\n3[5]~input_o\ & 
-- (!\n3[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[7]~input_o\,
	datab => \ALT_INV_n1[6]~input_o\,
	datac => \ALT_INV_n3[5]~input_o\,
	datad => \ALT_INV_n1[7]~input_o\,
	datae => \ALT_INV_n3[6]~input_o\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X89_Y4_N44
\n1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(4),
	o => \n1[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\n3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(4),
	o => \n3[4]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\n3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(3),
	o => \n3[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\n1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(3),
	o => \n1[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\n3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(2),
	o => \n3[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\n1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(2),
	o => \n1[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\n3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(1),
	o => \n3[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\n1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(1),
	o => \n1[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\n3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(0),
	o => \n3[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\n1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(0),
	o => \n1[0]~input_o\);

-- Location: LABCELL_X83_Y14_N18
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \n1[0]~input_o\ & ( (!\n3[1]~input_o\ & ((!\n3[0]~input_o\) # (\n1[1]~input_o\))) # (\n3[1]~input_o\ & (\n1[1]~input_o\ & !\n3[0]~input_o\)) ) ) # ( !\n1[0]~input_o\ & ( (!\n3[1]~input_o\ & \n1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[1]~input_o\,
	datab => \ALT_INV_n1[1]~input_o\,
	datac => \ALT_INV_n3[0]~input_o\,
	dataf => \ALT_INV_n1[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X83_Y14_N51
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (!\n3[3]~input_o\ & (((!\n3[2]~input_o\) # (\n1[2]~input_o\)) # (\n1[3]~input_o\))) # (\n3[3]~input_o\ & (\n1[3]~input_o\ & ((!\n3[2]~input_o\) # (\n1[2]~input_o\)))) ) ) # ( !\LessThan1~0_combout\ & ( 
-- (!\n3[3]~input_o\ & (((!\n3[2]~input_o\ & \n1[2]~input_o\)) # (\n1[3]~input_o\))) # (\n3[3]~input_o\ & (\n1[3]~input_o\ & (!\n3[2]~input_o\ & \n1[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110111011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[3]~input_o\,
	datab => \ALT_INV_n1[3]~input_o\,
	datac => \ALT_INV_n3[2]~input_o\,
	datad => \ALT_INV_n1[2]~input_o\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X83_Y31_N6
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \n3[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n3[7]~input_o\ & (((\n1[6]~input_o\ & !\n3[5]~input_o\)) # (\n1[7]~input_o\))) # (\n3[7]~input_o\ & (\n1[6]~input_o\ & (!\n3[5]~input_o\ & \n1[7]~input_o\))) ) ) ) # ( !\n3[6]~input_o\ & 
-- ( \n1[5]~input_o\ & ( (!\n3[7]~input_o\ & (((!\n3[5]~input_o\) # (\n1[7]~input_o\)) # (\n1[6]~input_o\))) # (\n3[7]~input_o\ & (\n1[7]~input_o\ & ((!\n3[5]~input_o\) # (\n1[6]~input_o\)))) ) ) ) # ( \n3[6]~input_o\ & ( !\n1[5]~input_o\ & ( 
-- (!\n3[7]~input_o\ & \n1[7]~input_o\) ) ) ) # ( !\n3[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n3[7]~input_o\ & ((\n1[7]~input_o\) # (\n1[6]~input_o\))) # (\n3[7]~input_o\ & (\n1[6]~input_o\ & \n1[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011000000001010101010100010111110110010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[7]~input_o\,
	datab => \ALT_INV_n1[6]~input_o\,
	datac => \ALT_INV_n3[5]~input_o\,
	datad => \ALT_INV_n1[7]~input_o\,
	datae => \ALT_INV_n3[6]~input_o\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X83_Y16_N12
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !\LessThan1~2_combout\ & ( (!\Equal2~0_combout\) # ((!\n1[4]~input_o\ & ((!\LessThan1~1_combout\) # (\n3[4]~input_o\))) # (\n1[4]~input_o\ & (\n3[4]~input_o\ & !\LessThan1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101110111011111010111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_n1[4]~input_o\,
	datac => \ALT_INV_n3[4]~input_o\,
	datad => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X83_Y14_N12
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \n1[2]~input_o\ & ( (\n3[2]~input_o\ & (!\n3[3]~input_o\ $ (\n1[3]~input_o\))) ) ) # ( !\n1[2]~input_o\ & ( (!\n3[2]~input_o\ & (!\n3[3]~input_o\ $ (\n1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n3[2]~input_o\,
	datac => \ALT_INV_n3[3]~input_o\,
	datad => \ALT_INV_n1[3]~input_o\,
	dataf => \ALT_INV_n1[2]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X83_Y14_N9
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( \n1[1]~input_o\ & ( (\n3[1]~input_o\ & (!\n1[0]~input_o\ $ (\n3[0]~input_o\))) ) ) # ( !\n1[1]~input_o\ & ( (!\n3[1]~input_o\ & (!\n1[0]~input_o\ $ (\n3[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[1]~input_o\,
	datac => \ALT_INV_n1[0]~input_o\,
	datad => \ALT_INV_n3[0]~input_o\,
	dataf => \ALT_INV_n1[1]~input_o\,
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X83_Y16_N15
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( \n3[4]~input_o\ & ( (\Equal2~0_combout\ & (\n1[4]~input_o\ & (\Equal2~1_combout\ & \Equal2~2_combout\))) ) ) # ( !\n3[4]~input_o\ & ( (\Equal2~0_combout\ & (!\n1[4]~input_o\ & (\Equal2~1_combout\ & \Equal2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_n1[4]~input_o\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	dataf => \ALT_INV_n3[4]~input_o\,
	combout => \Equal2~3_combout\);

-- Location: IOIBUF_X89_Y36_N55
\n2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(6),
	o => \n2[6]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\n2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(7),
	o => \n2[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\n2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(5),
	o => \n2[5]~input_o\);

-- Location: LABCELL_X83_Y31_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (\n2[6]~input_o\ & (\n2[5]~input_o\ & (!\n2[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) ) # ( !\n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n2[6]~input_o\ & (\n2[5]~input_o\ & (!\n2[7]~input_o\ $ 
-- (\n1[7]~input_o\)))) ) ) ) # ( \n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( (\n2[6]~input_o\ & (!\n2[5]~input_o\ & (!\n2[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) ) # ( !\n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n2[6]~input_o\ & (!\n2[5]~input_o\ & 
-- (!\n2[7]~input_o\ $ (\n1[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[6]~input_o\,
	datab => \ALT_INV_n2[7]~input_o\,
	datac => \ALT_INV_n2[5]~input_o\,
	datad => \ALT_INV_n1[7]~input_o\,
	datae => \ALT_INV_n1[6]~input_o\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X89_Y38_N38
\n2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(4),
	o => \n2[4]~input_o\);

-- Location: LABCELL_X83_Y31_N36
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( \n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n2[7]~input_o\ & ((!\n2[6]~input_o\) # ((!\n2[5]~input_o\) # (\n1[7]~input_o\)))) # (\n2[7]~input_o\ & (\n1[7]~input_o\ & ((!\n2[6]~input_o\) # (!\n2[5]~input_o\)))) ) ) ) # ( 
-- !\n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n2[7]~input_o\ & (((!\n2[6]~input_o\ & !\n2[5]~input_o\)) # (\n1[7]~input_o\))) # (\n2[7]~input_o\ & (!\n2[6]~input_o\ & (!\n2[5]~input_o\ & \n1[7]~input_o\))) ) ) ) # ( \n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( 
-- (!\n2[6]~input_o\ & ((!\n2[7]~input_o\) # (\n1[7]~input_o\))) # (\n2[6]~input_o\ & (!\n2[7]~input_o\ & \n1[7]~input_o\)) ) ) ) # ( !\n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n2[7]~input_o\ & \n1[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100100010001110111010000000111011001100100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[6]~input_o\,
	datab => \ALT_INV_n2[7]~input_o\,
	datac => \ALT_INV_n2[5]~input_o\,
	datad => \ALT_INV_n1[7]~input_o\,
	datae => \ALT_INV_n1[6]~input_o\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \LessThan3~2_combout\);

-- Location: IOIBUF_X89_Y38_N21
\n2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(3),
	o => \n2[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\n2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(2),
	o => \n2[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\n2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(0),
	o => \n2[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\n2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(1),
	o => \n2[1]~input_o\);

-- Location: LABCELL_X83_Y14_N30
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( \n1[0]~input_o\ & ( (!\n1[1]~input_o\ & (!\n2[0]~input_o\ & !\n2[1]~input_o\)) # (\n1[1]~input_o\ & ((!\n2[0]~input_o\) # (!\n2[1]~input_o\))) ) ) # ( !\n1[0]~input_o\ & ( (\n1[1]~input_o\ & !\n2[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011110011001100001111001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n1[1]~input_o\,
	datac => \ALT_INV_n2[0]~input_o\,
	datad => \ALT_INV_n2[1]~input_o\,
	dataf => \ALT_INV_n1[0]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X83_Y14_N39
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( \n1[2]~input_o\ & ( (!\n2[3]~input_o\ & ((!\n2[2]~input_o\) # ((\n1[3]~input_o\) # (\LessThan3~0_combout\)))) # (\n2[3]~input_o\ & (\n1[3]~input_o\ & ((!\n2[2]~input_o\) # (\LessThan3~0_combout\)))) ) ) # ( !\n1[2]~input_o\ & ( 
-- (!\n2[3]~input_o\ & (((!\n2[2]~input_o\ & \LessThan3~0_combout\)) # (\n1[3]~input_o\))) # (\n2[3]~input_o\ & (!\n2[2]~input_o\ & (\LessThan3~0_combout\ & \n1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000010001010111010001010111011111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[3]~input_o\,
	datab => \ALT_INV_n2[2]~input_o\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datad => \ALT_INV_n1[3]~input_o\,
	dataf => \ALT_INV_n1[2]~input_o\,
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X83_Y16_N30
\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ( \LessThan3~1_combout\ & ( (!\LessThan3~2_combout\ & ((!\Equal0~0_combout\) # ((\n2[4]~input_o\ & !\n1[4]~input_o\)))) ) ) # ( !\LessThan3~1_combout\ & ( (!\LessThan3~2_combout\ & ((!\Equal0~0_combout\) # ((!\n1[4]~input_o\) # 
-- (\n2[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000111100001011000010110000101000001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_n2[4]~input_o\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_n1[4]~input_o\,
	dataf => \ALT_INV_LessThan3~1_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LABCELL_X83_Y31_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \n3[7]~input_o\ & ( \n2[6]~input_o\ & ( (\n2[7]~input_o\ & (\n3[6]~input_o\ & (!\n2[5]~input_o\ $ (\n3[5]~input_o\)))) ) ) ) # ( !\n3[7]~input_o\ & ( \n2[6]~input_o\ & ( (!\n2[7]~input_o\ & (\n3[6]~input_o\ & (!\n2[5]~input_o\ $ 
-- (\n3[5]~input_o\)))) ) ) ) # ( \n3[7]~input_o\ & ( !\n2[6]~input_o\ & ( (\n2[7]~input_o\ & (!\n3[6]~input_o\ & (!\n2[5]~input_o\ $ (\n3[5]~input_o\)))) ) ) ) # ( !\n3[7]~input_o\ & ( !\n2[6]~input_o\ & ( (!\n2[7]~input_o\ & (!\n3[6]~input_o\ & 
-- (!\n2[5]~input_o\ $ (\n3[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[5]~input_o\,
	datab => \ALT_INV_n2[7]~input_o\,
	datac => \ALT_INV_n3[6]~input_o\,
	datad => \ALT_INV_n3[5]~input_o\,
	datae => \ALT_INV_n3[7]~input_o\,
	dataf => \ALT_INV_n2[6]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X83_Y14_N15
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \n2[3]~input_o\ & ( (\n3[3]~input_o\ & (!\n3[2]~input_o\ $ (\n2[2]~input_o\))) ) ) # ( !\n2[3]~input_o\ & ( (!\n3[3]~input_o\ & (!\n3[2]~input_o\ $ (\n2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[3]~input_o\,
	datab => \ALT_INV_n3[2]~input_o\,
	datac => \ALT_INV_n2[2]~input_o\,
	dataf => \ALT_INV_n2[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X83_Y14_N21
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \n2[0]~input_o\ & ( (\n3[0]~input_o\ & (!\n3[1]~input_o\ $ (\n2[1]~input_o\))) ) ) # ( !\n2[0]~input_o\ & ( (!\n3[0]~input_o\ & (!\n3[1]~input_o\ $ (\n2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[1]~input_o\,
	datac => \ALT_INV_n2[1]~input_o\,
	datad => \ALT_INV_n3[0]~input_o\,
	dataf => \ALT_INV_n2[0]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X83_Y16_N6
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \n3[4]~input_o\ & ( \n2[4]~input_o\ & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)) ) ) ) # ( !\n3[4]~input_o\ & ( !\n2[4]~input_o\ & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_n3[4]~input_o\,
	dataf => \ALT_INV_n2[4]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X83_Y31_N48
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (\n2[7]~input_o\ & !\n1[7]~input_o\) ) ) ) # ( !\n1[6]~input_o\ & ( \n1[5]~input_o\ & ( (!\n2[6]~input_o\ & (\n2[7]~input_o\ & !\n1[7]~input_o\)) # (\n2[6]~input_o\ & ((!\n1[7]~input_o\) # 
-- (\n2[7]~input_o\))) ) ) ) # ( \n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n2[7]~input_o\ & (\n2[6]~input_o\ & (\n2[5]~input_o\ & !\n1[7]~input_o\))) # (\n2[7]~input_o\ & ((!\n1[7]~input_o\) # ((\n2[6]~input_o\ & \n2[5]~input_o\)))) ) ) ) # ( 
-- !\n1[6]~input_o\ & ( !\n1[5]~input_o\ & ( (!\n2[7]~input_o\ & (!\n1[7]~input_o\ & ((\n2[5]~input_o\) # (\n2[6]~input_o\)))) # (\n2[7]~input_o\ & (((!\n1[7]~input_o\) # (\n2[5]~input_o\)) # (\n2[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010011001101110000000101110111000100010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[6]~input_o\,
	datab => \ALT_INV_n2[7]~input_o\,
	datac => \ALT_INV_n2[5]~input_o\,
	datad => \ALT_INV_n1[7]~input_o\,
	datae => \ALT_INV_n1[6]~input_o\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X83_Y16_N33
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( \n2[4]~input_o\ & ( (!\LessThan2~3_combout\ & ((!\Equal0~0_combout\) # (\n1[4]~input_o\))) ) ) # ( !\n2[4]~input_o\ & ( !\LessThan2~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_n1[4]~input_o\,
	datad => \ALT_INV_LessThan2~3_combout\,
	dataf => \ALT_INV_n2[4]~input_o\,
	combout => \LessThan2~4_combout\);

-- Location: LABCELL_X83_Y31_N24
\s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~0_combout\ = ( \n3[7]~input_o\ & ( \n2[6]~input_o\ & ( (\n2[7]~input_o\ & ((!\n3[6]~input_o\) # ((\n2[5]~input_o\ & !\n3[5]~input_o\)))) ) ) ) # ( !\n3[7]~input_o\ & ( \n2[6]~input_o\ & ( ((!\n3[6]~input_o\) # ((\n2[5]~input_o\ & !\n3[5]~input_o\))) # 
-- (\n2[7]~input_o\) ) ) ) # ( \n3[7]~input_o\ & ( !\n2[6]~input_o\ & ( (\n2[5]~input_o\ & (\n2[7]~input_o\ & (!\n3[6]~input_o\ & !\n3[5]~input_o\))) ) ) ) # ( !\n3[7]~input_o\ & ( !\n2[6]~input_o\ & ( ((\n2[5]~input_o\ & (!\n3[6]~input_o\ & 
-- !\n3[5]~input_o\))) # (\n2[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011000100000000000011110111111100110011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[5]~input_o\,
	datab => \ALT_INV_n2[7]~input_o\,
	datac => \ALT_INV_n3[6]~input_o\,
	datad => \ALT_INV_n3[5]~input_o\,
	datae => \ALT_INV_n3[7]~input_o\,
	dataf => \ALT_INV_n2[6]~input_o\,
	combout => \s~0_combout\);

-- Location: LABCELL_X83_Y16_N3
\s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~1_combout\ = ( \n2[4]~input_o\ & ( (!\s~0_combout\ & ((!\Equal1~1_combout\) # (\n3[4]~input_o\))) ) ) # ( !\n2[4]~input_o\ & ( !\s~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_n3[4]~input_o\,
	datac => \ALT_INV_s~0_combout\,
	dataf => \ALT_INV_n2[4]~input_o\,
	combout => \s~1_combout\);

-- Location: LABCELL_X83_Y14_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \n2[3]~input_o\ & ( (\n1[3]~input_o\ & (!\n1[2]~input_o\ $ (\n2[2]~input_o\))) ) ) # ( !\n2[3]~input_o\ & ( (!\n1[3]~input_o\ & (!\n1[2]~input_o\ $ (\n2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n1[3]~input_o\,
	datab => \ALT_INV_n1[2]~input_o\,
	datad => \ALT_INV_n2[2]~input_o\,
	dataf => \ALT_INV_n2[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X83_Y14_N3
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \n1[0]~input_o\ & ( (\n2[0]~input_o\ & (!\n2[1]~input_o\ $ (\n1[1]~input_o\))) ) ) # ( !\n1[0]~input_o\ & ( (!\n2[0]~input_o\ & (!\n2[1]~input_o\ $ (\n1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[0]~input_o\,
	datab => \ALT_INV_n2[1]~input_o\,
	datac => \ALT_INV_n1[1]~input_o\,
	dataf => \ALT_INV_n1[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X83_Y16_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (!\n2[4]~input_o\ $ (\n1[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[4]~input_o\,
	datab => \ALT_INV_n1[4]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X83_Y14_N36
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \n3[2]~input_o\ & ( (\n2[3]~input_o\ & !\n3[3]~input_o\) ) ) # ( !\n3[2]~input_o\ & ( (!\n2[3]~input_o\ & (\n2[2]~input_o\ & !\n3[3]~input_o\)) # (\n2[3]~input_o\ & ((!\n3[3]~input_o\) # (\n2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[3]~input_o\,
	datab => \ALT_INV_n2[2]~input_o\,
	datac => \ALT_INV_n3[3]~input_o\,
	dataf => \ALT_INV_n3[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X83_Y14_N42
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \n2[0]~input_o\ & ( (!\n3[1]~input_o\ & ((!\n3[0]~input_o\) # (\n2[1]~input_o\))) # (\n3[1]~input_o\ & (\n2[1]~input_o\ & !\n3[0]~input_o\)) ) ) # ( !\n2[0]~input_o\ & ( (!\n3[1]~input_o\ & \n2[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[1]~input_o\,
	datab => \ALT_INV_n2[1]~input_o\,
	datac => \ALT_INV_n3[0]~input_o\,
	dataf => \ALT_INV_n2[0]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X83_Y16_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~0_combout\ & ( \n2[4]~input_o\ & ( (\Equal1~1_combout\ & (\n3[4]~input_o\ & ((\Equal1~0_combout\) # (\LessThan0~1_combout\)))) ) ) ) # ( !\LessThan0~0_combout\ & ( \n2[4]~input_o\ & ( (\LessThan0~1_combout\ & 
-- (\Equal1~1_combout\ & \n3[4]~input_o\)) ) ) ) # ( \LessThan0~0_combout\ & ( !\n2[4]~input_o\ & ( (\Equal1~1_combout\ & (!\n3[4]~input_o\ & ((\Equal1~0_combout\) # (\LessThan0~1_combout\)))) ) ) ) # ( !\LessThan0~0_combout\ & ( !\n2[4]~input_o\ & ( 
-- (\LessThan0~1_combout\ & (\Equal1~1_combout\ & !\n3[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001110000000000000000000001010000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_n3[4]~input_o\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_n2[4]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X83_Y14_N27
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \n2[3]~input_o\ & ( (!\n1[3]~input_o\) # ((!\n1[2]~input_o\ & \n2[2]~input_o\)) ) ) # ( !\n2[3]~input_o\ & ( (!\n1[3]~input_o\ & (!\n1[2]~input_o\ & \n2[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n1[3]~input_o\,
	datab => \ALT_INV_n1[2]~input_o\,
	datac => \ALT_INV_n2[2]~input_o\,
	dataf => \ALT_INV_n2[3]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X83_Y14_N6
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \n2[1]~input_o\ & ( (!\n1[1]~input_o\) # ((\n2[0]~input_o\ & !\n1[0]~input_o\)) ) ) # ( !\n2[1]~input_o\ & ( (!\n1[1]~input_o\ & (\n2[0]~input_o\ & !\n1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n1[1]~input_o\,
	datac => \ALT_INV_n2[0]~input_o\,
	datad => \ALT_INV_n1[0]~input_o\,
	dataf => \ALT_INV_n2[1]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X83_Y16_N48
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( \Equal0~0_combout\ & ( \n2[4]~input_o\ & ( (\n1[4]~input_o\ & (((\LessThan2~0_combout\ & \Equal0~1_combout\)) # (\LessThan2~1_combout\))) ) ) ) # ( \Equal0~0_combout\ & ( !\n2[4]~input_o\ & ( (!\n1[4]~input_o\ & 
-- (((\LessThan2~0_combout\ & \Equal0~1_combout\)) # (\LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000111000000000000000000000000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => \ALT_INV_n1[4]~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_n2[4]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X83_Y16_N36
\s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~2_combout\ = ( !\LessThan0~2_combout\ & ( \LessThan2~2_combout\ & ( (\s~1_combout\ & ((!\Equal1~3_combout\) # (\Equal0~3_combout\))) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan2~2_combout\ & ( \LessThan2~4_combout\ ) ) ) # ( !\LessThan0~2_combout\ & 
-- ( !\LessThan2~2_combout\ & ( ((\s~1_combout\ & ((!\Equal1~3_combout\) # (\Equal0~3_combout\)))) # (\LessThan2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011111010101010101010100001100000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~4_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_s~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \s~2_combout\);

-- Location: LABCELL_X83_Y16_N24
\s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~4_combout\ = ( \s~2_combout\ & ( \Equal0~3_combout\ & ( !\LessThan1~3_combout\ ) ) ) # ( !\s~2_combout\ & ( \Equal0~3_combout\ & ( (!\LessThan1~3_combout\ & !\LessThan3~3_combout\) ) ) ) # ( \s~2_combout\ & ( !\Equal0~3_combout\ & ( 
-- ((!\LessThan3~3_combout\ & ((!\LessThan1~3_combout\) # (\Equal2~3_combout\)))) # (\Equal1~3_combout\) ) ) ) # ( !\s~2_combout\ & ( !\Equal0~3_combout\ & ( (!\LessThan1~3_combout\ & !\LessThan3~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101100001111111110100000101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~3_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_s~2_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \s~4_combout\);

-- Location: LABCELL_X83_Y16_N18
\s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~3_combout\ = ( \s~2_combout\ & ( \Equal0~3_combout\ ) ) # ( \s~2_combout\ & ( !\Equal0~3_combout\ & ( ((!\LessThan3~3_combout\) # (!\Equal2~3_combout\)) # (\Equal1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => \ALT_INV_Equal2~3_combout\,
	datae => \ALT_INV_s~2_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \s~3_combout\);

-- Location: LABCELL_X83_Y14_N54
\s~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~5_combout\ = ( \n2[0]~input_o\ & ( (!\s~4_combout\ & ((!\s~3_combout\) # ((\n3[0]~input_o\)))) # (\s~4_combout\ & (((\n1[0]~input_o\)))) ) ) # ( !\n2[0]~input_o\ & ( (!\s~4_combout\ & (\s~3_combout\ & (\n3[0]~input_o\))) # (\s~4_combout\ & 
-- (((\n1[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~4_combout\,
	datab => \ALT_INV_s~3_combout\,
	datac => \ALT_INV_n3[0]~input_o\,
	datad => \ALT_INV_n1[0]~input_o\,
	dataf => \ALT_INV_n2[0]~input_o\,
	combout => \s~5_combout\);

-- Location: LABCELL_X83_Y14_N45
\s~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~6_combout\ = ( \s~3_combout\ & ( (!\s~4_combout\ & (\n3[1]~input_o\)) # (\s~4_combout\ & ((\n1[1]~input_o\))) ) ) # ( !\s~3_combout\ & ( (!\s~4_combout\ & (\n2[1]~input_o\)) # (\s~4_combout\ & ((\n1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[1]~input_o\,
	datab => \ALT_INV_n2[1]~input_o\,
	datac => \ALT_INV_n1[1]~input_o\,
	datad => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_s~3_combout\,
	combout => \s~6_combout\);

-- Location: LABCELL_X83_Y14_N57
\s~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~7_combout\ = ( \n1[2]~input_o\ & ( ((!\s~3_combout\ & ((\n2[2]~input_o\))) # (\s~3_combout\ & (\n3[2]~input_o\))) # (\s~4_combout\) ) ) # ( !\n1[2]~input_o\ & ( (!\s~4_combout\ & ((!\s~3_combout\ & ((\n2[2]~input_o\))) # (\s~3_combout\ & 
-- (\n3[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~4_combout\,
	datab => \ALT_INV_s~3_combout\,
	datac => \ALT_INV_n3[2]~input_o\,
	datad => \ALT_INV_n2[2]~input_o\,
	dataf => \ALT_INV_n1[2]~input_o\,
	combout => \s~7_combout\);

-- Location: LABCELL_X83_Y14_N48
\s~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~8_combout\ = ( \s~3_combout\ & ( (!\s~4_combout\ & (\n3[3]~input_o\)) # (\s~4_combout\ & ((\n1[3]~input_o\))) ) ) # ( !\s~3_combout\ & ( (!\s~4_combout\ & ((\n2[3]~input_o\))) # (\s~4_combout\ & (\n1[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[3]~input_o\,
	datab => \ALT_INV_n1[3]~input_o\,
	datac => \ALT_INV_n2[3]~input_o\,
	datad => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_s~3_combout\,
	combout => \s~8_combout\);

-- Location: LABCELL_X83_Y16_N45
\s~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~9_combout\ = ( \s~3_combout\ & ( (!\s~4_combout\ & ((\n3[4]~input_o\))) # (\s~4_combout\ & (\n1[4]~input_o\)) ) ) # ( !\s~3_combout\ & ( (!\s~4_combout\ & (\n2[4]~input_o\)) # (\s~4_combout\ & ((\n1[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[4]~input_o\,
	datab => \ALT_INV_n1[4]~input_o\,
	datac => \ALT_INV_n3[4]~input_o\,
	datad => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_s~3_combout\,
	combout => \s~9_combout\);

-- Location: LABCELL_X83_Y31_N12
\s~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~10_combout\ = ( \s~4_combout\ & ( \n1[5]~input_o\ ) ) # ( !\s~4_combout\ & ( \n1[5]~input_o\ & ( (!\s~3_combout\ & (\n2[5]~input_o\)) # (\s~3_combout\ & ((\n3[5]~input_o\))) ) ) ) # ( !\s~4_combout\ & ( !\n1[5]~input_o\ & ( (!\s~3_combout\ & 
-- (\n2[5]~input_o\)) # (\s~3_combout\ & ((\n3[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000000000001000111010001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n2[5]~input_o\,
	datab => \ALT_INV_s~3_combout\,
	datac => \ALT_INV_n3[5]~input_o\,
	datae => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_n1[5]~input_o\,
	combout => \s~10_combout\);

-- Location: LABCELL_X83_Y31_N21
\s~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~11_combout\ = ( \s~4_combout\ & ( \n2[6]~input_o\ & ( \n1[6]~input_o\ ) ) ) # ( !\s~4_combout\ & ( \n2[6]~input_o\ & ( (!\s~3_combout\) # (\n3[6]~input_o\) ) ) ) # ( \s~4_combout\ & ( !\n2[6]~input_o\ & ( \n1[6]~input_o\ ) ) ) # ( !\s~4_combout\ & ( 
-- !\n2[6]~input_o\ & ( (\n3[6]~input_o\ & \s~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100110011001111110101111101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n3[6]~input_o\,
	datab => \ALT_INV_n1[6]~input_o\,
	datac => \ALT_INV_s~3_combout\,
	datae => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_n2[6]~input_o\,
	combout => \s~11_combout\);

-- Location: LABCELL_X83_Y31_N54
\s~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~12_combout\ = ( \s~4_combout\ & ( \n1[7]~input_o\ ) ) # ( !\s~4_combout\ & ( \n1[7]~input_o\ & ( (!\s~3_combout\ & ((\n2[7]~input_o\))) # (\s~3_combout\ & (\n3[7]~input_o\)) ) ) ) # ( !\s~4_combout\ & ( !\n1[7]~input_o\ & ( (!\s~3_combout\ & 
-- ((\n2[7]~input_o\))) # (\s~3_combout\ & (\n3[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000000000000000000011110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s~3_combout\,
	datac => \ALT_INV_n3[7]~input_o\,
	datad => \ALT_INV_n2[7]~input_o\,
	datae => \ALT_INV_s~4_combout\,
	dataf => \ALT_INV_n1[7]~input_o\,
	combout => \s~12_combout\);

-- Location: MLABCELL_X65_Y36_N0
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


