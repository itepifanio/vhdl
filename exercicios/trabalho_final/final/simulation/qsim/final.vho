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

-- DATE "11/30/2019 17:52:38"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	final IS
    PORT (
	clk : IN std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	bt3 : IN std_logic;
	instrucao : IN std_logic_vector(17 DOWNTO 0);
	sd1 : BUFFER std_logic_vector(6 DOWNTO 0);
	sd2 : BUFFER std_logic_vector(6 DOWNTO 0);
	sd3 : BUFFER std_logic_vector(6 DOWNTO 0);
	sd4 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- clk	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt3	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[8]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[10]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[11]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[12]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[13]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[14]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[15]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[16]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[17]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[4]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[0]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
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
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_bt3 : std_logic;
SIGNAL ww_instrucao : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_sd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sd4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \bt3~input_o\ : std_logic;
SIGNAL \instrucao[0]~input_o\ : std_logic;
SIGNAL \instrucao[1]~input_o\ : std_logic;
SIGNAL \instrucao[2]~input_o\ : std_logic;
SIGNAL \instrucao[3]~input_o\ : std_logic;
SIGNAL \instrucao[4]~input_o\ : std_logic;
SIGNAL \instrucao[5]~input_o\ : std_logic;
SIGNAL \instrucao[6]~input_o\ : std_logic;
SIGNAL \instrucao[7]~input_o\ : std_logic;
SIGNAL \instrucao[8]~input_o\ : std_logic;
SIGNAL \instrucao[9]~input_o\ : std_logic;
SIGNAL \instrucao[10]~input_o\ : std_logic;
SIGNAL \instrucao[11]~input_o\ : std_logic;
SIGNAL \instrucao[12]~input_o\ : std_logic;
SIGNAL \instrucao[13]~input_o\ : std_logic;
SIGNAL \instrucao[14]~input_o\ : std_logic;
SIGNAL \instrucao[15]~input_o\ : std_logic;
SIGNAL \instrucao[16]~input_o\ : std_logic;
SIGNAL \instrucao[17]~input_o\ : std_logic;
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

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_bt3 <= bt3;
ww_instrucao <= instrucao;
sd1 <= ww_sd1;
sd2 <= ww_sd2;
sd3 <= ww_sd3;
sd4 <= ww_sd4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\sd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sd1[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\sd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\sd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\sd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\sd1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\sd1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\sd1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd1[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\sd2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sd2[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X28_Y24_N2
\sd2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\sd2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\sd2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd2[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X34_Y9_N23
\sd3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sd3[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X5_Y24_N9
\sd3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\sd3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\sd3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd3[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
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

-- Location: IOOBUF_X32_Y0_N9
\sd4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sd4[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X13_Y24_N16
\sd4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\sd4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\sd4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd4[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOIBUF_X7_Y0_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\bt1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\bt2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\bt3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt3,
	o => \bt3~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\instrucao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(0),
	o => \instrucao[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\instrucao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(1),
	o => \instrucao[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\instrucao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(2),
	o => \instrucao[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\instrucao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(3),
	o => \instrucao[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\instrucao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(4),
	o => \instrucao[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\instrucao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(5),
	o => \instrucao[5]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\instrucao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(6),
	o => \instrucao[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\instrucao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(7),
	o => \instrucao[7]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\instrucao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(8),
	o => \instrucao[8]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\instrucao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(9),
	o => \instrucao[9]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\instrucao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(10),
	o => \instrucao[10]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\instrucao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(11),
	o => \instrucao[11]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\instrucao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(12),
	o => \instrucao[12]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\instrucao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(13),
	o => \instrucao[13]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\instrucao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(14),
	o => \instrucao[14]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\instrucao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(15),
	o => \instrucao[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\instrucao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(16),
	o => \instrucao[16]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\instrucao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(17),
	o => \instrucao[17]~input_o\);

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
END structure;


