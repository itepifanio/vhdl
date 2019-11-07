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

-- DATE "11/06/2019 22:54:15"

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

ENTITY 	exercicio1 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	w : IN std_logic;
	in_i : IN std_logic_vector(15 DOWNTO 0);
	o : OUT std_logic_vector(15 DOWNTO 0)
	);
END exercicio1;

-- Design Ports Information
-- clk	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[10]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[13]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_i[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[13]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[14]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[15]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_in_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \in_i[0]~input_o\ : std_logic;
SIGNAL \in_i[1]~input_o\ : std_logic;
SIGNAL \in_i[2]~input_o\ : std_logic;
SIGNAL \in_i[3]~input_o\ : std_logic;
SIGNAL \in_i[4]~input_o\ : std_logic;
SIGNAL \in_i[5]~input_o\ : std_logic;
SIGNAL \in_i[6]~input_o\ : std_logic;
SIGNAL \in_i[7]~input_o\ : std_logic;
SIGNAL \in_i[8]~input_o\ : std_logic;
SIGNAL \in_i[9]~input_o\ : std_logic;
SIGNAL \in_i[10]~input_o\ : std_logic;
SIGNAL \in_i[11]~input_o\ : std_logic;
SIGNAL \in_i[12]~input_o\ : std_logic;
SIGNAL \in_i[13]~input_o\ : std_logic;
SIGNAL \in_i[14]~input_o\ : std_logic;
SIGNAL \in_i[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_w <= w;
ww_in_i <= in_i;
o <= ww_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X82_Y81_N93
\o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(0));

-- Location: IOOBUF_X89_Y37_N22
\o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(1));

-- Location: IOOBUF_X2_Y0_N59
\o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(2));

-- Location: IOOBUF_X62_Y81_N2
\o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(3));

-- Location: IOOBUF_X30_Y0_N19
\o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(4));

-- Location: IOOBUF_X50_Y0_N59
\o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(5));

-- Location: IOOBUF_X4_Y0_N53
\o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(6));

-- Location: IOOBUF_X64_Y0_N53
\o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(7));

-- Location: IOOBUF_X52_Y0_N53
\o[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(8));

-- Location: IOOBUF_X36_Y81_N53
\o[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(9));

-- Location: IOOBUF_X76_Y81_N2
\o[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(10));

-- Location: IOOBUF_X80_Y81_N53
\o[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(11));

-- Location: IOOBUF_X36_Y81_N36
\o[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(12));

-- Location: IOOBUF_X4_Y0_N19
\o[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(13));

-- Location: IOOBUF_X26_Y81_N42
\o[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(14));

-- Location: IOOBUF_X52_Y0_N19
\o[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o(15));

-- Location: IOIBUF_X64_Y0_N35
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\in_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(0),
	o => \in_i[0]~input_o\);

-- Location: IOIBUF_X62_Y81_N52
\in_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(1),
	o => \in_i[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\in_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(2),
	o => \in_i[2]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\in_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(3),
	o => \in_i[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\in_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(4),
	o => \in_i[4]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\in_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(5),
	o => \in_i[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\in_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(6),
	o => \in_i[6]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\in_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(7),
	o => \in_i[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\in_i[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(8),
	o => \in_i[8]~input_o\);

-- Location: IOIBUF_X70_Y81_N52
\in_i[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(9),
	o => \in_i[9]~input_o\);

-- Location: IOIBUF_X76_Y81_N35
\in_i[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(10),
	o => \in_i[10]~input_o\);

-- Location: IOIBUF_X66_Y81_N41
\in_i[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(11),
	o => \in_i[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\in_i[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(12),
	o => \in_i[12]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\in_i[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(13),
	o => \in_i[13]~input_o\);

-- Location: IOIBUF_X80_Y81_N35
\in_i[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(14),
	o => \in_i[14]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\in_i[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_i(15),
	o => \in_i[15]~input_o\);

-- Location: LABCELL_X50_Y68_N3
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


