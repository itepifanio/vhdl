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

-- DATE "11/10/2019 12:41:32"

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

ENTITY 	display_7_segmentos IS
    PORT (
	data : IN std_logic_vector(3 DOWNTO 0);
	s0 : OUT std_logic;
	s1 : OUT std_logic;
	s2 : OUT std_logic;
	s3 : OUT std_logic;
	s4 : OUT std_logic;
	s5 : OUT std_logic;
	s6 : OUT std_logic
	);
END display_7_segmentos;

-- Design Ports Information
-- s0	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display_7_segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_data <= data;
s0 <= ww_s0;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
s5 <= ww_s5;
s6 <= ww_s6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X32_Y0_N19
\s0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_s0);

-- Location: IOOBUF_X36_Y0_N19
\s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_s1);

-- Location: IOOBUF_X38_Y0_N19
\s2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_s2);

-- Location: IOOBUF_X34_Y0_N42
\s3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_s3);

-- Location: IOOBUF_X32_Y0_N53
\s4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_s4);

-- Location: IOOBUF_X32_Y0_N36
\s5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_s5);

-- Location: IOOBUF_X34_Y0_N59
\s6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_s6);

-- Location: IOIBUF_X34_Y0_N92
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ ) ) # ( !\data[0]~input_o\ & ( \data[3]~input_o\ & ( (!\data[2]~input_o\) # (\data[1]~input_o\) ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ & ( !\data[2]~input_o\ $ (!\data[1]~input_o\) ) 
-- ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ & ( (\data[1]~input_o\) # (\data[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_data[1]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X34_Y1_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( (!\data[1]~input_o\ & \data[2]~input_o\) ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ & ( (!\data[2]~input_o\) # (\data[1]~input_o\) ) ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ 
-- & ( (\data[1]~input_o\ & !\data[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111101011111010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_data[2]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X34_Y1_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( (!\data[2]~input_o\ & !\data[1]~input_o\) ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ & ( (\data[2]~input_o\ & !\data[1]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_data[1]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X34_Y1_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( (\data[1]~input_o\ & \data[2]~input_o\) ) ) ) # ( !\data[0]~input_o\ & ( \data[3]~input_o\ & ( (\data[1]~input_o\ & !\data[2]~input_o\) ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ & ( 
-- !\data[1]~input_o\ $ (\data[2]~input_o\) ) ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ & ( (!\data[1]~input_o\ & \data[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_data[2]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X34_Y1_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( (\data[2]~input_o\ & \data[1]~input_o\) ) ) ) # ( !\data[0]~input_o\ & ( \data[3]~input_o\ & ( \data[2]~input_o\ ) ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ & ( (!\data[2]~input_o\ & 
-- \data[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_data[1]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X34_Y1_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( \data[1]~input_o\ ) ) ) # ( !\data[0]~input_o\ & ( \data[3]~input_o\ & ( \data[2]~input_o\ ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ & ( (!\data[1]~input_o\ & \data[2]~input_o\) ) ) 
-- ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ & ( (\data[1]~input_o\ & \data[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_data[2]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X34_Y1_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \data[0]~input_o\ & ( \data[3]~input_o\ & ( !\data[2]~input_o\ $ (!\data[1]~input_o\) ) ) ) # ( \data[0]~input_o\ & ( !\data[3]~input_o\ & ( (!\data[2]~input_o\ & !\data[1]~input_o\) ) ) ) # ( !\data[0]~input_o\ & ( !\data[3]~input_o\ 
-- & ( (\data[2]~input_o\ & !\data[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_data[1]~input_o\,
	datae => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X48_Y36_N3
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


