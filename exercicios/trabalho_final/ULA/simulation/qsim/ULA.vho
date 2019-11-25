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

-- DATE "11/25/2019 12:28:15"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	a : INOUT std_logic_vector(15 DOWNTO 0);
	b : INOUT std_logic_vector(15 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	s : INOUT std_logic_vector(15 DOWNTO 0);
	sd1 : OUT std_logic_vector(6 DOWNTO 0);
	sd2 : OUT std_logic_vector(6 DOWNTO 0);
	sd3 : OUT std_logic_vector(6 DOWNTO 0);
	sd4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- sd1[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[1]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[1]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \s[8]~input_o\ : std_logic;
SIGNAL \s[9]~input_o\ : std_logic;
SIGNAL \s[10]~input_o\ : std_logic;
SIGNAL \s[11]~input_o\ : std_logic;
SIGNAL \s[12]~input_o\ : std_logic;
SIGNAL \s[13]~input_o\ : std_logic;
SIGNAL \s[14]~input_o\ : std_logic;
SIGNAL \s[15]~input_o\ : std_logic;
SIGNAL \a[0]~output_o\ : std_logic;
SIGNAL \a[1]~output_o\ : std_logic;
SIGNAL \a[2]~output_o\ : std_logic;
SIGNAL \a[3]~output_o\ : std_logic;
SIGNAL \a[4]~output_o\ : std_logic;
SIGNAL \a[5]~output_o\ : std_logic;
SIGNAL \a[6]~output_o\ : std_logic;
SIGNAL \a[7]~output_o\ : std_logic;
SIGNAL \a[8]~output_o\ : std_logic;
SIGNAL \a[9]~output_o\ : std_logic;
SIGNAL \a[10]~output_o\ : std_logic;
SIGNAL \a[11]~output_o\ : std_logic;
SIGNAL \a[12]~output_o\ : std_logic;
SIGNAL \a[13]~output_o\ : std_logic;
SIGNAL \a[14]~output_o\ : std_logic;
SIGNAL \a[15]~output_o\ : std_logic;
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \b[2]~output_o\ : std_logic;
SIGNAL \b[3]~output_o\ : std_logic;
SIGNAL \b[4]~output_o\ : std_logic;
SIGNAL \b[5]~output_o\ : std_logic;
SIGNAL \b[6]~output_o\ : std_logic;
SIGNAL \b[7]~output_o\ : std_logic;
SIGNAL \b[8]~output_o\ : std_logic;
SIGNAL \b[9]~output_o\ : std_logic;
SIGNAL \b[10]~output_o\ : std_logic;
SIGNAL \b[11]~output_o\ : std_logic;
SIGNAL \b[12]~output_o\ : std_logic;
SIGNAL \b[13]~output_o\ : std_logic;
SIGNAL \b[14]~output_o\ : std_logic;
SIGNAL \b[15]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \sd1[0]~output_o\ : std_logic;
SIGNAL \sd1[1]~output_o\ : std_logic;
SIGNAL \sd1[2]~output_o\ : std_logic;
SIGNAL \sd1[3]~output_o\ : std_logic;
SIGNAL \sd1[4]~output_o\ : std_logic;
SIGNAL \sd1[5]~output_o\ : std_logic;
SIGNAL \sd1[6]~output_o\ : std_logic;
SIGNAL \sd2[0]~output_o\ : std_logic;
SIGNAL \sd2[1]~output_o\ : std_logic;
SIGNAL \sd2[2]~output_o\ : std_logic;
SIGNAL \sd2[3]~output_o\ : std_logic;
SIGNAL \sd2[4]~output_o\ : std_logic;
SIGNAL \sd2[5]~output_o\ : std_logic;
SIGNAL \sd2[6]~output_o\ : std_logic;
SIGNAL \sd3[0]~output_o\ : std_logic;
SIGNAL \sd3[1]~output_o\ : std_logic;
SIGNAL \sd3[2]~output_o\ : std_logic;
SIGNAL \sd3[3]~output_o\ : std_logic;
SIGNAL \sd3[4]~output_o\ : std_logic;
SIGNAL \sd3[5]~output_o\ : std_logic;
SIGNAL \sd3[6]~output_o\ : std_logic;
SIGNAL \sd4[0]~output_o\ : std_logic;
SIGNAL \sd4[1]~output_o\ : std_logic;
SIGNAL \sd4[2]~output_o\ : std_logic;
SIGNAL \sd4[3]~output_o\ : std_logic;
SIGNAL \sd4[4]~output_o\ : std_logic;
SIGNAL \sd4[5]~output_o\ : std_logic;
SIGNAL \sd4[6]~output_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \a5|Mux6~0_combout\ : std_logic;
SIGNAL \a5|Mux5~0_combout\ : std_logic;
SIGNAL \a5|Mux4~0_combout\ : std_logic;
SIGNAL \a5|Mux3~0_combout\ : std_logic;
SIGNAL \a5|Mux2~0_combout\ : std_logic;
SIGNAL \a5|Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \a5|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_op <= op;
sd1 <= ww_sd1;
sd2 <= ww_sd2;
sd3 <= ww_sd3;
sd4 <= ww_sd4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\a5|ALT_INV_Mux6~0_combout\ <= NOT \a5|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N16
\a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \a[0]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \a[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\a[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\a[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\a[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[6]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\a[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[7]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\a[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[8]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\a[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[9]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\a[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[10]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\a[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\a[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[12]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\a[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\a[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[14]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\a[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a[15]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \b[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[3]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[4]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\b[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[8]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\b[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\b[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\b[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[11]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\b[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\b[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[13]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\b[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[14]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\b[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\s[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\s[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\s[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\s[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\s[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\sd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \sd1[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\sd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \sd1[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \sd1[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \sd1[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\sd1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \sd1[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sd1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \sd1[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\sd1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \sd1[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\sd2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd2[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\sd2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\sd2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[2]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\sd2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd2[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\sd2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd2[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\sd2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd2[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\sd2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[6]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\sd3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd3[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\sd3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\sd3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\sd3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd3[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\sd3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd3[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\sd3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd3[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\sd3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\sd4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd4[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\sd4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\sd4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\sd4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd4[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\sd4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd4[4]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\sd4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sd4[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\sd4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[6]~output_o\);

-- Location: IOIBUF_X7_Y0_N22
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X8_Y1_N22
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\op[2]~input_o\ & (!\op[1]~input_o\)) # (!\op[2]~input_o\ & (\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X8_Y1_N0
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = \op[1]~input_o\ $ (\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X8_Y1_N26
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\op[2]~input_o\ & (\op[1]~input_o\ & \op[0]~input_o\)) # (!\op[2]~input_o\ & ((!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X8_Y1_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op[2]~input_o\ & (\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X8_Y1_N16
\a5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux6~0_combout\ = (\op[1]~input_o\ & ((!\op[0]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux6~0_combout\);

-- Location: LCCOMB_X8_Y1_N10
\a5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux5~0_combout\ = (\op[2]~input_o\ & ((!\op[0]~input_o\) # (!\op[1]~input_o\))) # (!\op[2]~input_o\ & ((\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux5~0_combout\);

-- Location: LCCOMB_X8_Y1_N28
\a5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux4~0_combout\ = \op[1]~input_o\ $ (((\op[2]~input_o\) # (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y1_N6
\a5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux3~0_combout\ = (\op[1]~input_o\ & (!\op[2]~input_o\ & \op[0]~input_o\)) # (!\op[1]~input_o\ & ((!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y1_N24
\a5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux2~0_combout\ = (\op[2]~input_o\ & (\op[1]~input_o\)) # (!\op[2]~input_o\ & (!\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y1_N18
\a5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|Mux1~0_combout\ = (\op[1]~input_o\ & (\op[2]~input_o\ $ (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \a5|Mux1~0_combout\);

-- Location: IOIBUF_X11_Y24_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X32_Y24_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X11_Y24_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X32_Y24_N8
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X5_Y24_N1
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\s[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(2),
	o => \s[2]~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\s[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(3),
	o => \s[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\s[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(4),
	o => \s[4]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\s[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(5),
	o => \s[5]~input_o\);

-- Location: IOIBUF_X11_Y24_N22
\s[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(6),
	o => \s[6]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\s[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(7),
	o => \s[7]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\s[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(8),
	o => \s[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\s[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(9),
	o => \s[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\s[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(10),
	o => \s[10]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\s[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(11),
	o => \s[11]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\s[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(12),
	o => \s[12]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\s[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(13),
	o => \s[13]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\s[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(14),
	o => \s[14]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\s[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(15),
	o => \s[15]~input_o\);

ww_sd1(0) <= \sd1[0]~output_o\;

ww_sd1(1) <= \sd1[1]~output_o\;

ww_sd1(2) <= \sd1[2]~output_o\;

ww_sd1(3) <= \sd1[3]~output_o\;

ww_sd1(4) <= \sd1[4]~output_o\;

ww_sd1(5) <= \sd1[5]~output_o\;

ww_sd1(6) <= \sd1[6]~output_o\;

ww_sd2(0) <= \sd2[0]~output_o\;

ww_sd2(1) <= \sd2[1]~output_o\;

ww_sd2(2) <= \sd2[2]~output_o\;

ww_sd2(3) <= \sd2[3]~output_o\;

ww_sd2(4) <= \sd2[4]~output_o\;

ww_sd2(5) <= \sd2[5]~output_o\;

ww_sd2(6) <= \sd2[6]~output_o\;

ww_sd3(0) <= \sd3[0]~output_o\;

ww_sd3(1) <= \sd3[1]~output_o\;

ww_sd3(2) <= \sd3[2]~output_o\;

ww_sd3(3) <= \sd3[3]~output_o\;

ww_sd3(4) <= \sd3[4]~output_o\;

ww_sd3(5) <= \sd3[5]~output_o\;

ww_sd3(6) <= \sd3[6]~output_o\;

ww_sd4(0) <= \sd4[0]~output_o\;

ww_sd4(1) <= \sd4[1]~output_o\;

ww_sd4(2) <= \sd4[2]~output_o\;

ww_sd4(3) <= \sd4[3]~output_o\;

ww_sd4(4) <= \sd4[4]~output_o\;

ww_sd4(5) <= \sd4[5]~output_o\;

ww_sd4(6) <= \sd4[6]~output_o\;

a(0) <= \a[0]~output_o\;

a(1) <= \a[1]~output_o\;

a(2) <= \a[2]~output_o\;

a(3) <= \a[3]~output_o\;

a(4) <= \a[4]~output_o\;

a(5) <= \a[5]~output_o\;

a(6) <= \a[6]~output_o\;

a(7) <= \a[7]~output_o\;

a(8) <= \a[8]~output_o\;

a(9) <= \a[9]~output_o\;

a(10) <= \a[10]~output_o\;

a(11) <= \a[11]~output_o\;

a(12) <= \a[12]~output_o\;

a(13) <= \a[13]~output_o\;

a(14) <= \a[14]~output_o\;

a(15) <= \a[15]~output_o\;

b(0) <= \b[0]~output_o\;

b(1) <= \b[1]~output_o\;

b(2) <= \b[2]~output_o\;

b(3) <= \b[3]~output_o\;

b(4) <= \b[4]~output_o\;

b(5) <= \b[5]~output_o\;

b(6) <= \b[6]~output_o\;

b(7) <= \b[7]~output_o\;

b(8) <= \b[8]~output_o\;

b(9) <= \b[9]~output_o\;

b(10) <= \b[10]~output_o\;

b(11) <= \b[11]~output_o\;

b(12) <= \b[12]~output_o\;

b(13) <= \b[13]~output_o\;

b(14) <= \b[14]~output_o\;

b(15) <= \b[15]~output_o\;

s(0) <= \s[0]~output_o\;

s(1) <= \s[1]~output_o\;

s(2) <= \s[2]~output_o\;

s(3) <= \s[3]~output_o\;

s(4) <= \s[4]~output_o\;

s(5) <= \s[5]~output_o\;

s(6) <= \s[6]~output_o\;

s(7) <= \s[7]~output_o\;

s(8) <= \s[8]~output_o\;

s(9) <= \s[9]~output_o\;

s(10) <= \s[10]~output_o\;

s(11) <= \s[11]~output_o\;

s(12) <= \s[12]~output_o\;

s(13) <= \s[13]~output_o\;

s(14) <= \s[14]~output_o\;

s(15) <= \s[15]~output_o\;
END structure;


