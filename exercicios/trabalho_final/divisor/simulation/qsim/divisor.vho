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

-- DATE "11/21/2019 14:48:35"

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

ENTITY 	divisor IS
    PORT (
	clk : IN std_logic;
	bt : IN std_logic;
	num : IN std_logic_vector(15 DOWNTO 0);
	quoc : OUT std_logic_vector(15 DOWNTO 0);
	rest : OUT std_logic_vector(15 DOWNTO 0)
	);
END divisor;

-- Design Ports Information
-- quoc[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[3]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[11]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[14]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quoc[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[11]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[10]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[15]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divisor IS
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
SIGNAL ww_bt : std_logic;
SIGNAL ww_num : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_quoc : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rest : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i0|q[0]~0_combout\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \num[15]~input_o\ : std_logic;
SIGNAL \i1|Equal2~1_combout\ : std_logic;
SIGNAL \num[14]~input_o\ : std_logic;
SIGNAL \num[13]~input_o\ : std_logic;
SIGNAL \num[12]~input_o\ : std_logic;
SIGNAL \num[11]~input_o\ : std_logic;
SIGNAL \num[10]~input_o\ : std_logic;
SIGNAL \num[9]~input_o\ : std_logic;
SIGNAL \num[8]~input_o\ : std_logic;
SIGNAL \num[7]~input_o\ : std_logic;
SIGNAL \num[6]~input_o\ : std_logic;
SIGNAL \num[5]~input_o\ : std_logic;
SIGNAL \num[4]~input_o\ : std_logic;
SIGNAL \num[3]~input_o\ : std_logic;
SIGNAL \num[2]~input_o\ : std_logic;
SIGNAL \num[1]~input_o\ : std_logic;
SIGNAL \num[0]~input_o\ : std_logic;
SIGNAL \i0|Add1~1_sumout\ : std_logic;
SIGNAL \i0|a[0]~feeder_combout\ : std_logic;
SIGNAL \i1|Equal2~0_combout\ : std_logic;
SIGNAL \i0|a[8]~0_combout\ : std_logic;
SIGNAL \i0|Add1~2\ : std_logic;
SIGNAL \i0|Add1~3\ : std_logic;
SIGNAL \i0|Add1~5_sumout\ : std_logic;
SIGNAL \i0|a[1]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~6\ : std_logic;
SIGNAL \i0|Add1~7\ : std_logic;
SIGNAL \i0|Add1~9_sumout\ : std_logic;
SIGNAL \i0|a[2]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~10\ : std_logic;
SIGNAL \i0|Add1~11\ : std_logic;
SIGNAL \i0|Add1~13_sumout\ : std_logic;
SIGNAL \i0|a[3]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~14\ : std_logic;
SIGNAL \i0|Add1~15\ : std_logic;
SIGNAL \i0|Add1~17_sumout\ : std_logic;
SIGNAL \i0|a[4]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~18\ : std_logic;
SIGNAL \i0|Add1~19\ : std_logic;
SIGNAL \i0|Add1~21_sumout\ : std_logic;
SIGNAL \i0|a[5]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~22\ : std_logic;
SIGNAL \i0|Add1~23\ : std_logic;
SIGNAL \i0|Add1~25_sumout\ : std_logic;
SIGNAL \i0|a[6]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~26\ : std_logic;
SIGNAL \i0|Add1~27\ : std_logic;
SIGNAL \i0|Add1~29_sumout\ : std_logic;
SIGNAL \i0|a[7]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~30\ : std_logic;
SIGNAL \i0|Add1~31\ : std_logic;
SIGNAL \i0|Add1~33_sumout\ : std_logic;
SIGNAL \i0|a[8]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~34\ : std_logic;
SIGNAL \i0|Add1~35\ : std_logic;
SIGNAL \i0|Add1~37_sumout\ : std_logic;
SIGNAL \i0|a[9]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~38\ : std_logic;
SIGNAL \i0|Add1~39\ : std_logic;
SIGNAL \i0|Add1~41_sumout\ : std_logic;
SIGNAL \i0|a[10]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~42\ : std_logic;
SIGNAL \i0|Add1~43\ : std_logic;
SIGNAL \i0|Add1~45_sumout\ : std_logic;
SIGNAL \i0|Add1~46\ : std_logic;
SIGNAL \i0|Add1~47\ : std_logic;
SIGNAL \i0|Add1~49_sumout\ : std_logic;
SIGNAL \i0|a[12]~feeder_combout\ : std_logic;
SIGNAL \i0|Add1~50\ : std_logic;
SIGNAL \i0|Add1~51\ : std_logic;
SIGNAL \i0|Add1~53_sumout\ : std_logic;
SIGNAL \i0|Add1~54\ : std_logic;
SIGNAL \i0|Add1~55\ : std_logic;
SIGNAL \i0|Add1~57_sumout\ : std_logic;
SIGNAL \i0|Add1~58\ : std_logic;
SIGNAL \i0|Add1~59\ : std_logic;
SIGNAL \i0|Add1~61_sumout\ : std_logic;
SIGNAL \i0|a[15]~feeder_combout\ : std_logic;
SIGNAL \i0|LessThan0~8_combout\ : std_logic;
SIGNAL \i0|LessThan0~9_combout\ : std_logic;
SIGNAL \i0|LessThan0~11_combout\ : std_logic;
SIGNAL \i0|LessThan0~12_combout\ : std_logic;
SIGNAL \i0|LessThan0~13_combout\ : std_logic;
SIGNAL \i0|LessThan0~2_combout\ : std_logic;
SIGNAL \i0|LessThan0~3_combout\ : std_logic;
SIGNAL \i0|LessThan0~4_combout\ : std_logic;
SIGNAL \i0|LessThan0~5_combout\ : std_logic;
SIGNAL \i0|LessThan0~7_combout\ : std_logic;
SIGNAL \i0|LessThan0~6_combout\ : std_logic;
SIGNAL \i0|LessThan0~0_combout\ : std_logic;
SIGNAL \i0|LessThan0~1_combout\ : std_logic;
SIGNAL \i0|LessThan0~10_combout\ : std_logic;
SIGNAL \i0|LessThan0~14_combout\ : std_logic;
SIGNAL \i1|s[1]~1_combout\ : std_logic;
SIGNAL \i1|s[0]~0_combout\ : std_logic;
SIGNAL \i0|process_0~0_combout\ : std_logic;
SIGNAL \i0|Add0~1_sumout\ : std_logic;
SIGNAL \i0|Add0~2\ : std_logic;
SIGNAL \i0|Add0~5_sumout\ : std_logic;
SIGNAL \i0|Add0~6\ : std_logic;
SIGNAL \i0|Add0~9_sumout\ : std_logic;
SIGNAL \i0|Add0~10\ : std_logic;
SIGNAL \i0|Add0~13_sumout\ : std_logic;
SIGNAL \i0|Add0~14\ : std_logic;
SIGNAL \i0|Add0~17_sumout\ : std_logic;
SIGNAL \i0|Add0~18\ : std_logic;
SIGNAL \i0|Add0~21_sumout\ : std_logic;
SIGNAL \i0|Add0~22\ : std_logic;
SIGNAL \i0|Add0~25_sumout\ : std_logic;
SIGNAL \i0|Add0~26\ : std_logic;
SIGNAL \i0|Add0~29_sumout\ : std_logic;
SIGNAL \i0|Add0~30\ : std_logic;
SIGNAL \i0|Add0~33_sumout\ : std_logic;
SIGNAL \i0|Add0~34\ : std_logic;
SIGNAL \i0|Add0~37_sumout\ : std_logic;
SIGNAL \i0|Add0~38\ : std_logic;
SIGNAL \i0|Add0~41_sumout\ : std_logic;
SIGNAL \i0|Add0~42\ : std_logic;
SIGNAL \i0|Add0~45_sumout\ : std_logic;
SIGNAL \i0|Add0~46\ : std_logic;
SIGNAL \i0|Add0~49_sumout\ : std_logic;
SIGNAL \i0|Add0~50\ : std_logic;
SIGNAL \i0|Add0~53_sumout\ : std_logic;
SIGNAL \i0|Add0~54\ : std_logic;
SIGNAL \i0|Add0~57_sumout\ : std_logic;
SIGNAL \i0|r[0]~1_combout\ : std_logic;
SIGNAL \i0|r[0]~3_combout\ : std_logic;
SIGNAL \i0|r[0]~_emulated_q\ : std_logic;
SIGNAL \i0|r[0]~2_combout\ : std_logic;
SIGNAL \i0|r[1]~5_combout\ : std_logic;
SIGNAL \i0|r[1]~7_combout\ : std_logic;
SIGNAL \i0|r[1]~_emulated_q\ : std_logic;
SIGNAL \i0|r[1]~6_combout\ : std_logic;
SIGNAL \i0|r[2]~9_combout\ : std_logic;
SIGNAL \i0|r[2]~11_combout\ : std_logic;
SIGNAL \i0|r[2]~_emulated_q\ : std_logic;
SIGNAL \i0|r[2]~10_combout\ : std_logic;
SIGNAL \i0|r[3]~13_combout\ : std_logic;
SIGNAL \i0|r[3]~15_combout\ : std_logic;
SIGNAL \i0|r[3]~_emulated_q\ : std_logic;
SIGNAL \i0|r[3]~14_combout\ : std_logic;
SIGNAL \i0|r[4]~17_combout\ : std_logic;
SIGNAL \i0|r[4]~19_combout\ : std_logic;
SIGNAL \i0|r[4]~_emulated_q\ : std_logic;
SIGNAL \i0|r[4]~18_combout\ : std_logic;
SIGNAL \i0|r[5]~21_combout\ : std_logic;
SIGNAL \i0|r[5]~23_combout\ : std_logic;
SIGNAL \i0|r[5]~_emulated_q\ : std_logic;
SIGNAL \i0|r[5]~22_combout\ : std_logic;
SIGNAL \i0|r[6]~25_combout\ : std_logic;
SIGNAL \i0|r[6]~27_combout\ : std_logic;
SIGNAL \i0|r[6]~_emulated_q\ : std_logic;
SIGNAL \i0|r[6]~26_combout\ : std_logic;
SIGNAL \i0|r[7]~29_combout\ : std_logic;
SIGNAL \i0|r[7]~31_combout\ : std_logic;
SIGNAL \i0|r[7]~_emulated_q\ : std_logic;
SIGNAL \i0|r[7]~30_combout\ : std_logic;
SIGNAL \i0|r[8]~33_combout\ : std_logic;
SIGNAL \i0|r[8]~35_combout\ : std_logic;
SIGNAL \i0|r[8]~_emulated_q\ : std_logic;
SIGNAL \i0|r[8]~34_combout\ : std_logic;
SIGNAL \i0|r[9]~37_combout\ : std_logic;
SIGNAL \i0|r[9]~39_combout\ : std_logic;
SIGNAL \i0|r[9]~_emulated_q\ : std_logic;
SIGNAL \i0|r[9]~38_combout\ : std_logic;
SIGNAL \i0|r[10]~41_combout\ : std_logic;
SIGNAL \i0|r[10]~43_combout\ : std_logic;
SIGNAL \i0|r[10]~_emulated_q\ : std_logic;
SIGNAL \i0|r[10]~42_combout\ : std_logic;
SIGNAL \i0|r[11]~45_combout\ : std_logic;
SIGNAL \i0|r[11]~47_combout\ : std_logic;
SIGNAL \i0|r[11]~_emulated_q\ : std_logic;
SIGNAL \i0|r[11]~46_combout\ : std_logic;
SIGNAL \i0|r[12]~49_combout\ : std_logic;
SIGNAL \i0|r[12]~51_combout\ : std_logic;
SIGNAL \i0|r[12]~_emulated_q\ : std_logic;
SIGNAL \i0|r[12]~50_combout\ : std_logic;
SIGNAL \i0|r[13]~53_combout\ : std_logic;
SIGNAL \i0|r[13]~55_combout\ : std_logic;
SIGNAL \i0|r[13]~_emulated_q\ : std_logic;
SIGNAL \i0|r[13]~54_combout\ : std_logic;
SIGNAL \i0|r[14]~57_combout\ : std_logic;
SIGNAL \i0|r[14]~59_combout\ : std_logic;
SIGNAL \i0|r[14]~_emulated_q\ : std_logic;
SIGNAL \i0|r[14]~58_combout\ : std_logic;
SIGNAL \i0|r[15]~61_combout\ : std_logic;
SIGNAL \i0|r[15]~63_combout\ : std_logic;
SIGNAL \i0|r[15]~_emulated_q\ : std_logic;
SIGNAL \i0|r[15]~62_combout\ : std_logic;
SIGNAL \i0|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i1|s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i0|a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i0|ALT_INV_r[4]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[3]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[2]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[1]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[0]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i0|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \i0|ALT_INV_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_bt~input_o\ : std_logic;
SIGNAL \i0|ALT_INV_r[15]~61_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[14]~57_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[13]~53_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[12]~49_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[11]~45_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[10]~41_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[9]~37_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[8]~33_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[7]~29_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[6]~25_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[5]~21_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[4]~17_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[3]~13_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[2]~9_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[1]~5_combout\ : std_logic;
SIGNAL \i0|ALT_INV_r[0]~1_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \i0|ALT_INV_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i0|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \i0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i1|ALT_INV_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i0|ALT_INV_r[15]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[14]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[13]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[12]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[11]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[10]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[9]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[8]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[7]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[6]~_emulated_q\ : std_logic;
SIGNAL \i0|ALT_INV_r[5]~_emulated_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_bt <= bt;
ww_num <= num;
quoc <= ww_quoc;
rest <= ww_rest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i0|ALT_INV_r[4]~_emulated_q\ <= NOT \i0|r[4]~_emulated_q\;
\i0|ALT_INV_r[3]~_emulated_q\ <= NOT \i0|r[3]~_emulated_q\;
\i0|ALT_INV_r[2]~_emulated_q\ <= NOT \i0|r[2]~_emulated_q\;
\i0|ALT_INV_r[1]~_emulated_q\ <= NOT \i0|r[1]~_emulated_q\;
\i0|ALT_INV_r[0]~_emulated_q\ <= NOT \i0|r[0]~_emulated_q\;
\i0|ALT_INV_q\(15) <= NOT \i0|q\(15);
\i0|ALT_INV_q\(14) <= NOT \i0|q\(14);
\i0|ALT_INV_q\(13) <= NOT \i0|q\(13);
\i0|ALT_INV_q\(12) <= NOT \i0|q\(12);
\i0|ALT_INV_q\(11) <= NOT \i0|q\(11);
\i0|ALT_INV_q\(10) <= NOT \i0|q\(10);
\i0|ALT_INV_q\(9) <= NOT \i0|q\(9);
\i0|ALT_INV_q\(8) <= NOT \i0|q\(8);
\i0|ALT_INV_q\(7) <= NOT \i0|q\(7);
\i0|ALT_INV_q\(6) <= NOT \i0|q\(6);
\i0|ALT_INV_q\(5) <= NOT \i0|q\(5);
\i0|ALT_INV_q\(4) <= NOT \i0|q\(4);
\i0|ALT_INV_q\(3) <= NOT \i0|q\(3);
\i0|ALT_INV_q\(2) <= NOT \i0|q\(2);
\i0|ALT_INV_q\(1) <= NOT \i0|q\(1);
\i0|ALT_INV_q\(0) <= NOT \i0|q\(0);
\i0|ALT_INV_Add1~61_sumout\ <= NOT \i0|Add1~61_sumout\;
\i0|ALT_INV_Add1~49_sumout\ <= NOT \i0|Add1~49_sumout\;
\i0|ALT_INV_Add1~41_sumout\ <= NOT \i0|Add1~41_sumout\;
\i0|ALT_INV_Add1~37_sumout\ <= NOT \i0|Add1~37_sumout\;
\i0|ALT_INV_Add1~33_sumout\ <= NOT \i0|Add1~33_sumout\;
\i0|ALT_INV_Add1~29_sumout\ <= NOT \i0|Add1~29_sumout\;
\i0|ALT_INV_Add1~25_sumout\ <= NOT \i0|Add1~25_sumout\;
\i0|ALT_INV_Add1~21_sumout\ <= NOT \i0|Add1~21_sumout\;
\i0|ALT_INV_Add1~17_sumout\ <= NOT \i0|Add1~17_sumout\;
\i0|ALT_INV_Add1~13_sumout\ <= NOT \i0|Add1~13_sumout\;
\i0|ALT_INV_Add1~9_sumout\ <= NOT \i0|Add1~9_sumout\;
\i0|ALT_INV_Add1~5_sumout\ <= NOT \i0|Add1~5_sumout\;
\i0|ALT_INV_Add1~1_sumout\ <= NOT \i0|Add1~1_sumout\;
\i0|ALT_INV_a\(15) <= NOT \i0|a\(15);
\i0|ALT_INV_a\(14) <= NOT \i0|a\(14);
\i0|ALT_INV_a\(13) <= NOT \i0|a\(13);
\i0|ALT_INV_a\(12) <= NOT \i0|a\(12);
\i0|ALT_INV_a\(11) <= NOT \i0|a\(11);
\i0|ALT_INV_a\(10) <= NOT \i0|a\(10);
\i0|ALT_INV_a\(9) <= NOT \i0|a\(9);
\i0|ALT_INV_a\(8) <= NOT \i0|a\(8);
\i0|ALT_INV_a\(7) <= NOT \i0|a\(7);
\i0|ALT_INV_a\(6) <= NOT \i0|a\(6);
\i0|ALT_INV_a\(5) <= NOT \i0|a\(5);
\i0|ALT_INV_a\(4) <= NOT \i0|a\(4);
\i0|ALT_INV_a\(3) <= NOT \i0|a\(3);
\i0|ALT_INV_a\(2) <= NOT \i0|a\(2);
\i0|ALT_INV_a\(1) <= NOT \i0|a\(1);
\i0|ALT_INV_a\(0) <= NOT \i0|a\(0);
\ALT_INV_bt~input_o\ <= NOT \bt~input_o\;
\i0|ALT_INV_r[15]~61_combout\ <= NOT \i0|r[15]~61_combout\;
\i0|ALT_INV_r[14]~57_combout\ <= NOT \i0|r[14]~57_combout\;
\i0|ALT_INV_r[13]~53_combout\ <= NOT \i0|r[13]~53_combout\;
\i0|ALT_INV_r[12]~49_combout\ <= NOT \i0|r[12]~49_combout\;
\i0|ALT_INV_r[11]~45_combout\ <= NOT \i0|r[11]~45_combout\;
\i0|ALT_INV_r[10]~41_combout\ <= NOT \i0|r[10]~41_combout\;
\i0|ALT_INV_r[9]~37_combout\ <= NOT \i0|r[9]~37_combout\;
\i0|ALT_INV_r[8]~33_combout\ <= NOT \i0|r[8]~33_combout\;
\i0|ALT_INV_r[7]~29_combout\ <= NOT \i0|r[7]~29_combout\;
\i0|ALT_INV_r[6]~25_combout\ <= NOT \i0|r[6]~25_combout\;
\i0|ALT_INV_r[5]~21_combout\ <= NOT \i0|r[5]~21_combout\;
\i0|ALT_INV_r[4]~17_combout\ <= NOT \i0|r[4]~17_combout\;
\i0|ALT_INV_r[3]~13_combout\ <= NOT \i0|r[3]~13_combout\;
\i0|ALT_INV_r[2]~9_combout\ <= NOT \i0|r[2]~9_combout\;
\i0|ALT_INV_r[1]~5_combout\ <= NOT \i0|r[1]~5_combout\;
\i0|ALT_INV_r[0]~1_combout\ <= NOT \i0|r[0]~1_combout\;
\i0|ALT_INV_LessThan0~14_combout\ <= NOT \i0|LessThan0~14_combout\;
\i0|ALT_INV_LessThan0~13_combout\ <= NOT \i0|LessThan0~13_combout\;
\i0|ALT_INV_LessThan0~12_combout\ <= NOT \i0|LessThan0~12_combout\;
\i0|ALT_INV_LessThan0~11_combout\ <= NOT \i0|LessThan0~11_combout\;
\i0|ALT_INV_LessThan0~10_combout\ <= NOT \i0|LessThan0~10_combout\;
\i0|ALT_INV_LessThan0~9_combout\ <= NOT \i0|LessThan0~9_combout\;
\i0|ALT_INV_LessThan0~8_combout\ <= NOT \i0|LessThan0~8_combout\;
\i0|ALT_INV_b\(14) <= NOT \i0|b\(14);
\i0|ALT_INV_b\(13) <= NOT \i0|b\(13);
\i0|ALT_INV_b\(12) <= NOT \i0|b\(12);
\i0|ALT_INV_b\(11) <= NOT \i0|b\(11);
\i0|ALT_INV_b\(10) <= NOT \i0|b\(10);
\i0|ALT_INV_LessThan0~7_combout\ <= NOT \i0|LessThan0~7_combout\;
\i0|ALT_INV_b\(9) <= NOT \i0|b\(9);
\i0|ALT_INV_LessThan0~6_combout\ <= NOT \i0|LessThan0~6_combout\;
\i0|ALT_INV_b\(8) <= NOT \i0|b\(8);
\i0|ALT_INV_LessThan0~5_combout\ <= NOT \i0|LessThan0~5_combout\;
\i0|ALT_INV_LessThan0~4_combout\ <= NOT \i0|LessThan0~4_combout\;
\i0|ALT_INV_LessThan0~3_combout\ <= NOT \i0|LessThan0~3_combout\;
\i0|ALT_INV_LessThan0~2_combout\ <= NOT \i0|LessThan0~2_combout\;
\i0|ALT_INV_b\(7) <= NOT \i0|b\(7);
\i0|ALT_INV_b\(6) <= NOT \i0|b\(6);
\i0|ALT_INV_b\(5) <= NOT \i0|b\(5);
\i0|ALT_INV_b\(4) <= NOT \i0|b\(4);
\i0|ALT_INV_LessThan0~1_combout\ <= NOT \i0|LessThan0~1_combout\;
\i0|ALT_INV_b\(3) <= NOT \i0|b\(3);
\i0|ALT_INV_b\(2) <= NOT \i0|b\(2);
\i0|ALT_INV_LessThan0~0_combout\ <= NOT \i0|LessThan0~0_combout\;
\i0|ALT_INV_b\(0) <= NOT \i0|b\(0);
\i0|ALT_INV_b\(1) <= NOT \i0|b\(1);
\i0|ALT_INV_b\(15) <= NOT \i0|b\(15);
\i1|ALT_INV_s\(1) <= NOT \i1|s\(1);
\i1|ALT_INV_s\(0) <= NOT \i1|s\(0);
\i0|ALT_INV_r[15]~_emulated_q\ <= NOT \i0|r[15]~_emulated_q\;
\i0|ALT_INV_r[14]~_emulated_q\ <= NOT \i0|r[14]~_emulated_q\;
\i0|ALT_INV_r[13]~_emulated_q\ <= NOT \i0|r[13]~_emulated_q\;
\i0|ALT_INV_r[12]~_emulated_q\ <= NOT \i0|r[12]~_emulated_q\;
\i0|ALT_INV_r[11]~_emulated_q\ <= NOT \i0|r[11]~_emulated_q\;
\i0|ALT_INV_r[10]~_emulated_q\ <= NOT \i0|r[10]~_emulated_q\;
\i0|ALT_INV_r[9]~_emulated_q\ <= NOT \i0|r[9]~_emulated_q\;
\i0|ALT_INV_r[8]~_emulated_q\ <= NOT \i0|r[8]~_emulated_q\;
\i0|ALT_INV_r[7]~_emulated_q\ <= NOT \i0|r[7]~_emulated_q\;
\i0|ALT_INV_r[6]~_emulated_q\ <= NOT \i0|r[6]~_emulated_q\;
\i0|ALT_INV_r[5]~_emulated_q\ <= NOT \i0|r[5]~_emulated_q\;

-- Location: IOOBUF_X28_Y0_N53
\quoc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(0),
	devoe => ww_devoe,
	o => ww_quoc(0));

-- Location: IOOBUF_X6_Y0_N53
\quoc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(1),
	devoe => ww_devoe,
	o => ww_quoc(1));

-- Location: IOOBUF_X6_Y0_N2
\quoc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(2),
	devoe => ww_devoe,
	o => ww_quoc(2));

-- Location: IOOBUF_X26_Y81_N42
\quoc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(3),
	devoe => ww_devoe,
	o => ww_quoc(3));

-- Location: IOOBUF_X26_Y81_N76
\quoc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(4),
	devoe => ww_devoe,
	o => ww_quoc(4));

-- Location: IOOBUF_X26_Y81_N93
\quoc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(5),
	devoe => ww_devoe,
	o => ww_quoc(5));

-- Location: IOOBUF_X32_Y0_N36
\quoc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(6),
	devoe => ww_devoe,
	o => ww_quoc(6));

-- Location: IOOBUF_X26_Y81_N59
\quoc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(7),
	devoe => ww_devoe,
	o => ww_quoc(7));

-- Location: IOOBUF_X30_Y0_N19
\quoc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(8),
	devoe => ww_devoe,
	o => ww_quoc(8));

-- Location: IOOBUF_X30_Y0_N53
\quoc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(9),
	devoe => ww_devoe,
	o => ww_quoc(9));

-- Location: IOOBUF_X40_Y0_N2
\quoc[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(10),
	devoe => ww_devoe,
	o => ww_quoc(10));

-- Location: IOOBUF_X34_Y0_N76
\quoc[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(11),
	devoe => ww_devoe,
	o => ww_quoc(11));

-- Location: IOOBUF_X32_Y0_N19
\quoc[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(12),
	devoe => ww_devoe,
	o => ww_quoc(12));

-- Location: IOOBUF_X34_Y0_N42
\quoc[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(13),
	devoe => ww_devoe,
	o => ww_quoc(13));

-- Location: IOOBUF_X32_Y0_N2
\quoc[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(14),
	devoe => ww_devoe,
	o => ww_quoc(14));

-- Location: IOOBUF_X34_Y0_N93
\quoc[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|q\(15),
	devoe => ww_devoe,
	o => ww_quoc(15));

-- Location: IOOBUF_X38_Y0_N19
\rest[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_rest(0));

-- Location: IOOBUF_X26_Y0_N76
\rest[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_rest(1));

-- Location: IOOBUF_X8_Y0_N2
\rest[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_rest(2));

-- Location: IOOBUF_X36_Y0_N19
\rest[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_rest(3));

-- Location: IOOBUF_X26_Y0_N93
\rest[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_rest(4));

-- Location: IOOBUF_X28_Y0_N19
\rest[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[5]~22_combout\,
	devoe => ww_devoe,
	o => ww_rest(5));

-- Location: IOOBUF_X2_Y0_N76
\rest[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[6]~26_combout\,
	devoe => ww_devoe,
	o => ww_rest(6));

-- Location: IOOBUF_X26_Y0_N59
\rest[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[7]~30_combout\,
	devoe => ww_devoe,
	o => ww_rest(7));

-- Location: IOOBUF_X26_Y0_N42
\rest[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[8]~34_combout\,
	devoe => ww_devoe,
	o => ww_rest(8));

-- Location: IOOBUF_X28_Y0_N36
\rest[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_rest(9));

-- Location: IOOBUF_X6_Y0_N19
\rest[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[10]~42_combout\,
	devoe => ww_devoe,
	o => ww_rest(10));

-- Location: IOOBUF_X4_Y0_N36
\rest[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[11]~46_combout\,
	devoe => ww_devoe,
	o => ww_rest(11));

-- Location: IOOBUF_X2_Y0_N42
\rest[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[12]~50_combout\,
	devoe => ww_devoe,
	o => ww_rest(12));

-- Location: IOOBUF_X6_Y0_N36
\rest[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[13]~54_combout\,
	devoe => ww_devoe,
	o => ww_rest(13));

-- Location: IOOBUF_X4_Y0_N53
\rest[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[14]~58_combout\,
	devoe => ww_devoe,
	o => ww_rest(14));

-- Location: IOOBUF_X36_Y0_N36
\rest[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|r[15]~62_combout\,
	devoe => ww_devoe,
	o => ww_rest(15));

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

-- Location: LABCELL_X12_Y1_N51
\i0|q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|q[0]~0_combout\ = ( !\i0|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i0|ALT_INV_q\(0),
	combout => \i0|q[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\bt~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\num[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(15),
	o => \num[15]~input_o\);

-- Location: LABCELL_X13_Y1_N30
\i1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal2~1_combout\ = ( \i1|s\(1) & ( !\i1|s\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_s\(0),
	dataf => \i1|ALT_INV_s\(1),
	combout => \i1|Equal2~1_combout\);

-- Location: FF_X12_Y2_N46
\i0|b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[15]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(15));

-- Location: IOIBUF_X4_Y0_N18
\num[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(14),
	o => \num[14]~input_o\);

-- Location: FF_X10_Y2_N53
\i0|b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[14]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(14));

-- Location: IOIBUF_X4_Y0_N1
\num[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(13),
	o => \num[13]~input_o\);

-- Location: FF_X10_Y2_N56
\i0|b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[13]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(13));

-- Location: IOIBUF_X2_Y0_N92
\num[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(12),
	o => \num[12]~input_o\);

-- Location: FF_X10_Y2_N59
\i0|b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[12]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(12));

-- Location: IOIBUF_X8_Y0_N52
\num[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(11),
	o => \num[11]~input_o\);

-- Location: FF_X11_Y2_N35
\i0|b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[11]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(11));

-- Location: IOIBUF_X8_Y0_N35
\num[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(10),
	o => \num[10]~input_o\);

-- Location: FF_X11_Y2_N26
\i0|b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[10]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(10));

-- Location: IOIBUF_X28_Y0_N1
\num[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(9),
	o => \num[9]~input_o\);

-- Location: FF_X11_Y2_N2
\i0|b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[9]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(9));

-- Location: IOIBUF_X38_Y0_N52
\num[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(8),
	o => \num[8]~input_o\);

-- Location: FF_X12_Y2_N23
\i0|b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[8]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(8));

-- Location: IOIBUF_X38_Y0_N1
\num[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(7),
	o => \num[7]~input_o\);

-- Location: FF_X12_Y2_N59
\i0|b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[7]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(7));

-- Location: IOIBUF_X8_Y0_N18
\num[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(6),
	o => \num[6]~input_o\);

-- Location: FF_X12_Y2_N38
\i0|b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[6]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(6));

-- Location: IOIBUF_X34_Y0_N58
\num[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(5),
	o => \num[5]~input_o\);

-- Location: FF_X12_Y2_N32
\i0|b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[5]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(5));

-- Location: IOIBUF_X32_Y0_N52
\num[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(4),
	o => \num[4]~input_o\);

-- Location: FF_X12_Y2_N29
\i0|b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[4]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(4));

-- Location: IOIBUF_X30_Y0_N35
\num[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(3),
	o => \num[3]~input_o\);

-- Location: FF_X12_Y2_N26
\i0|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[3]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(3));

-- Location: IOIBUF_X30_Y0_N1
\num[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(2),
	o => \num[2]~input_o\);

-- Location: FF_X12_Y2_N5
\i0|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[2]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(2));

-- Location: IOIBUF_X38_Y0_N35
\num[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(1),
	o => \num[1]~input_o\);

-- Location: FF_X12_Y2_N2
\i0|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[1]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(1));

-- Location: IOIBUF_X36_Y0_N52
\num[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(0),
	o => \num[0]~input_o\);

-- Location: FF_X12_Y2_N43
\i0|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \num[0]~input_o\,
	sload => VCC,
	ena => \i1|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|b\(0));

-- Location: LABCELL_X10_Y2_N0
\i0|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~1_sumout\ = SUM(( !\i0|b\(0) $ (!\i0|a\(0)) ) + ( !VCC ) + ( !VCC ))
-- \i0|Add1~2\ = CARRY(( !\i0|b\(0) $ (!\i0|a\(0)) ) + ( !VCC ) + ( !VCC ))
-- \i0|Add1~3\ = SHARE((!\i0|b\(0)) # (\i0|a\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_b\(0),
	datad => \i0|ALT_INV_a\(0),
	cin => GND,
	sharein => GND,
	sumout => \i0|Add1~1_sumout\,
	cout => \i0|Add1~2\,
	shareout => \i0|Add1~3\);

-- Location: LABCELL_X11_Y2_N42
\i0|a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[0]~feeder_combout\ = \i0|Add1~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_Add1~1_sumout\,
	combout => \i0|a[0]~feeder_combout\);

-- Location: LABCELL_X13_Y1_N48
\i1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal2~0_combout\ = ( \i1|s\(0) & ( !\i1|s\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_s\(1),
	dataf => \i1|ALT_INV_s\(0),
	combout => \i1|Equal2~0_combout\);

-- Location: LABCELL_X12_Y2_N33
\i0|a[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[8]~0_combout\ = ( \i0|LessThan0~14_combout\ & ( (\i1|s\(0) & !\i1|s\(1)) ) ) # ( !\i0|LessThan0~14_combout\ & ( \i1|s\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_s\(0),
	datad => \i1|ALT_INV_s\(1),
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i0|a[8]~0_combout\);

-- Location: FF_X11_Y2_N44
\i0|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[0]~feeder_combout\,
	asdata => \num[0]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(0));

-- Location: LABCELL_X10_Y2_N3
\i0|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~5_sumout\ = SUM(( !\i0|b\(1) $ (\i0|a\(1)) ) + ( \i0|Add1~3\ ) + ( \i0|Add1~2\ ))
-- \i0|Add1~6\ = CARRY(( !\i0|b\(1) $ (\i0|a\(1)) ) + ( \i0|Add1~3\ ) + ( \i0|Add1~2\ ))
-- \i0|Add1~7\ = SHARE((!\i0|b\(1) & \i0|a\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_b\(1),
	datad => \i0|ALT_INV_a\(1),
	cin => \i0|Add1~2\,
	sharein => \i0|Add1~3\,
	sumout => \i0|Add1~5_sumout\,
	cout => \i0|Add1~6\,
	shareout => \i0|Add1~7\);

-- Location: LABCELL_X13_Y2_N24
\i0|a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[1]~feeder_combout\ = ( \i0|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~5_sumout\,
	combout => \i0|a[1]~feeder_combout\);

-- Location: FF_X13_Y2_N26
\i0|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[1]~feeder_combout\,
	asdata => \num[1]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(1));

-- Location: LABCELL_X10_Y2_N6
\i0|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~9_sumout\ = SUM(( !\i0|a\(2) $ (\i0|b\(2)) ) + ( \i0|Add1~7\ ) + ( \i0|Add1~6\ ))
-- \i0|Add1~10\ = CARRY(( !\i0|a\(2) $ (\i0|b\(2)) ) + ( \i0|Add1~7\ ) + ( \i0|Add1~6\ ))
-- \i0|Add1~11\ = SHARE((\i0|a\(2) & !\i0|b\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(2),
	datad => \i0|ALT_INV_b\(2),
	cin => \i0|Add1~6\,
	sharein => \i0|Add1~7\,
	sumout => \i0|Add1~9_sumout\,
	cout => \i0|Add1~10\,
	shareout => \i0|Add1~11\);

-- Location: LABCELL_X11_Y2_N18
\i0|a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[2]~feeder_combout\ = \i0|Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_Add1~9_sumout\,
	combout => \i0|a[2]~feeder_combout\);

-- Location: FF_X11_Y2_N20
\i0|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[2]~feeder_combout\,
	asdata => \num[2]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(2));

-- Location: LABCELL_X10_Y2_N9
\i0|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~13_sumout\ = SUM(( !\i0|b\(3) $ (\i0|a\(3)) ) + ( \i0|Add1~11\ ) + ( \i0|Add1~10\ ))
-- \i0|Add1~14\ = CARRY(( !\i0|b\(3) $ (\i0|a\(3)) ) + ( \i0|Add1~11\ ) + ( \i0|Add1~10\ ))
-- \i0|Add1~15\ = SHARE((!\i0|b\(3) & \i0|a\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_b\(3),
	datad => \i0|ALT_INV_a\(3),
	cin => \i0|Add1~10\,
	sharein => \i0|Add1~11\,
	sumout => \i0|Add1~13_sumout\,
	cout => \i0|Add1~14\,
	shareout => \i0|Add1~15\);

-- Location: LABCELL_X12_Y2_N6
\i0|a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[3]~feeder_combout\ = ( \i0|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~13_sumout\,
	combout => \i0|a[3]~feeder_combout\);

-- Location: FF_X12_Y2_N8
\i0|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[3]~feeder_combout\,
	asdata => \num[3]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(3));

-- Location: LABCELL_X10_Y2_N12
\i0|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~17_sumout\ = SUM(( !\i0|a\(4) $ (\i0|b\(4)) ) + ( \i0|Add1~15\ ) + ( \i0|Add1~14\ ))
-- \i0|Add1~18\ = CARRY(( !\i0|a\(4) $ (\i0|b\(4)) ) + ( \i0|Add1~15\ ) + ( \i0|Add1~14\ ))
-- \i0|Add1~19\ = SHARE((\i0|a\(4) & !\i0|b\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(4),
	datad => \i0|ALT_INV_b\(4),
	cin => \i0|Add1~14\,
	sharein => \i0|Add1~15\,
	sumout => \i0|Add1~17_sumout\,
	cout => \i0|Add1~18\,
	shareout => \i0|Add1~19\);

-- Location: LABCELL_X13_Y2_N6
\i0|a[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[4]~feeder_combout\ = ( \i0|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~17_sumout\,
	combout => \i0|a[4]~feeder_combout\);

-- Location: FF_X13_Y2_N8
\i0|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[4]~feeder_combout\,
	asdata => \num[4]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(4));

-- Location: LABCELL_X10_Y2_N15
\i0|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~21_sumout\ = SUM(( !\i0|b\(5) $ (\i0|a\(5)) ) + ( \i0|Add1~19\ ) + ( \i0|Add1~18\ ))
-- \i0|Add1~22\ = CARRY(( !\i0|b\(5) $ (\i0|a\(5)) ) + ( \i0|Add1~19\ ) + ( \i0|Add1~18\ ))
-- \i0|Add1~23\ = SHARE((!\i0|b\(5) & \i0|a\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_b\(5),
	datad => \i0|ALT_INV_a\(5),
	cin => \i0|Add1~18\,
	sharein => \i0|Add1~19\,
	sumout => \i0|Add1~21_sumout\,
	cout => \i0|Add1~22\,
	shareout => \i0|Add1~23\);

-- Location: LABCELL_X12_Y2_N48
\i0|a[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[5]~feeder_combout\ = ( \i0|Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~21_sumout\,
	combout => \i0|a[5]~feeder_combout\);

-- Location: FF_X12_Y2_N50
\i0|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[5]~feeder_combout\,
	asdata => \num[5]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(5));

-- Location: LABCELL_X10_Y2_N18
\i0|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~25_sumout\ = SUM(( !\i0|b\(6) $ (\i0|a\(6)) ) + ( \i0|Add1~23\ ) + ( \i0|Add1~22\ ))
-- \i0|Add1~26\ = CARRY(( !\i0|b\(6) $ (\i0|a\(6)) ) + ( \i0|Add1~23\ ) + ( \i0|Add1~22\ ))
-- \i0|Add1~27\ = SHARE((!\i0|b\(6) & \i0|a\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(6),
	datac => \i0|ALT_INV_a\(6),
	cin => \i0|Add1~22\,
	sharein => \i0|Add1~23\,
	sumout => \i0|Add1~25_sumout\,
	cout => \i0|Add1~26\,
	shareout => \i0|Add1~27\);

-- Location: LABCELL_X11_Y2_N15
\i0|a[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[6]~feeder_combout\ = ( \i0|Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~25_sumout\,
	combout => \i0|a[6]~feeder_combout\);

-- Location: FF_X11_Y2_N17
\i0|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[6]~feeder_combout\,
	asdata => \num[6]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(6));

-- Location: LABCELL_X10_Y2_N21
\i0|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~29_sumout\ = SUM(( !\i0|a\(7) $ (\i0|b\(7)) ) + ( \i0|Add1~27\ ) + ( \i0|Add1~26\ ))
-- \i0|Add1~30\ = CARRY(( !\i0|a\(7) $ (\i0|b\(7)) ) + ( \i0|Add1~27\ ) + ( \i0|Add1~26\ ))
-- \i0|Add1~31\ = SHARE((\i0|a\(7) & !\i0|b\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(7),
	datad => \i0|ALT_INV_b\(7),
	cin => \i0|Add1~26\,
	sharein => \i0|Add1~27\,
	sumout => \i0|Add1~29_sumout\,
	cout => \i0|Add1~30\,
	shareout => \i0|Add1~31\);

-- Location: LABCELL_X13_Y2_N18
\i0|a[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[7]~feeder_combout\ = ( \i0|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~29_sumout\,
	combout => \i0|a[7]~feeder_combout\);

-- Location: FF_X13_Y2_N20
\i0|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[7]~feeder_combout\,
	asdata => \num[7]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(7));

-- Location: LABCELL_X10_Y2_N24
\i0|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~33_sumout\ = SUM(( !\i0|b\(8) $ (\i0|a\(8)) ) + ( \i0|Add1~31\ ) + ( \i0|Add1~30\ ))
-- \i0|Add1~34\ = CARRY(( !\i0|b\(8) $ (\i0|a\(8)) ) + ( \i0|Add1~31\ ) + ( \i0|Add1~30\ ))
-- \i0|Add1~35\ = SHARE((!\i0|b\(8) & \i0|a\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_b\(8),
	datad => \i0|ALT_INV_a\(8),
	cin => \i0|Add1~30\,
	sharein => \i0|Add1~31\,
	sumout => \i0|Add1~33_sumout\,
	cout => \i0|Add1~34\,
	shareout => \i0|Add1~35\);

-- Location: LABCELL_X13_Y2_N42
\i0|a[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[8]~feeder_combout\ = ( \i0|Add1~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~33_sumout\,
	combout => \i0|a[8]~feeder_combout\);

-- Location: FF_X13_Y2_N44
\i0|a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[8]~feeder_combout\,
	asdata => \num[8]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(8));

-- Location: LABCELL_X10_Y2_N27
\i0|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~37_sumout\ = SUM(( !\i0|a\(9) $ (\i0|b\(9)) ) + ( \i0|Add1~35\ ) + ( \i0|Add1~34\ ))
-- \i0|Add1~38\ = CARRY(( !\i0|a\(9) $ (\i0|b\(9)) ) + ( \i0|Add1~35\ ) + ( \i0|Add1~34\ ))
-- \i0|Add1~39\ = SHARE((\i0|a\(9) & !\i0|b\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(9),
	datad => \i0|ALT_INV_b\(9),
	cin => \i0|Add1~34\,
	sharein => \i0|Add1~35\,
	sumout => \i0|Add1~37_sumout\,
	cout => \i0|Add1~38\,
	shareout => \i0|Add1~39\);

-- Location: LABCELL_X11_Y2_N39
\i0|a[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[9]~feeder_combout\ = ( \i0|Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~37_sumout\,
	combout => \i0|a[9]~feeder_combout\);

-- Location: FF_X11_Y2_N41
\i0|a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[9]~feeder_combout\,
	asdata => \num[9]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(9));

-- Location: LABCELL_X10_Y2_N30
\i0|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~41_sumout\ = SUM(( !\i0|b\(10) $ (\i0|a\(10)) ) + ( \i0|Add1~39\ ) + ( \i0|Add1~38\ ))
-- \i0|Add1~42\ = CARRY(( !\i0|b\(10) $ (\i0|a\(10)) ) + ( \i0|Add1~39\ ) + ( \i0|Add1~38\ ))
-- \i0|Add1~43\ = SHARE((!\i0|b\(10) & \i0|a\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_b\(10),
	datac => \i0|ALT_INV_a\(10),
	cin => \i0|Add1~38\,
	sharein => \i0|Add1~39\,
	sumout => \i0|Add1~41_sumout\,
	cout => \i0|Add1~42\,
	shareout => \i0|Add1~43\);

-- Location: LABCELL_X11_Y2_N51
\i0|a[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[10]~feeder_combout\ = ( \i0|Add1~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~41_sumout\,
	combout => \i0|a[10]~feeder_combout\);

-- Location: FF_X11_Y2_N53
\i0|a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[10]~feeder_combout\,
	asdata => \num[10]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(10));

-- Location: LABCELL_X10_Y2_N33
\i0|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~45_sumout\ = SUM(( !\i0|a\(11) $ (\i0|b\(11)) ) + ( \i0|Add1~43\ ) + ( \i0|Add1~42\ ))
-- \i0|Add1~46\ = CARRY(( !\i0|a\(11) $ (\i0|b\(11)) ) + ( \i0|Add1~43\ ) + ( \i0|Add1~42\ ))
-- \i0|Add1~47\ = SHARE((\i0|a\(11) & !\i0|b\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(11),
	datad => \i0|ALT_INV_b\(11),
	cin => \i0|Add1~42\,
	sharein => \i0|Add1~43\,
	sumout => \i0|Add1~45_sumout\,
	cout => \i0|Add1~46\,
	shareout => \i0|Add1~47\);

-- Location: FF_X10_Y2_N35
\i0|a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add1~45_sumout\,
	asdata => \num[11]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(11));

-- Location: LABCELL_X10_Y2_N36
\i0|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~49_sumout\ = SUM(( !\i0|a\(12) $ (\i0|b\(12)) ) + ( \i0|Add1~47\ ) + ( \i0|Add1~46\ ))
-- \i0|Add1~50\ = CARRY(( !\i0|a\(12) $ (\i0|b\(12)) ) + ( \i0|Add1~47\ ) + ( \i0|Add1~46\ ))
-- \i0|Add1~51\ = SHARE((\i0|a\(12) & !\i0|b\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(12),
	datad => \i0|ALT_INV_b\(12),
	cin => \i0|Add1~46\,
	sharein => \i0|Add1~47\,
	sumout => \i0|Add1~49_sumout\,
	cout => \i0|Add1~50\,
	shareout => \i0|Add1~51\);

-- Location: LABCELL_X9_Y2_N42
\i0|a[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[12]~feeder_combout\ = ( \i0|Add1~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~49_sumout\,
	combout => \i0|a[12]~feeder_combout\);

-- Location: FF_X9_Y2_N44
\i0|a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[12]~feeder_combout\,
	asdata => \num[12]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(12));

-- Location: LABCELL_X10_Y2_N39
\i0|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~53_sumout\ = SUM(( !\i0|a\(13) $ (\i0|b\(13)) ) + ( \i0|Add1~51\ ) + ( \i0|Add1~50\ ))
-- \i0|Add1~54\ = CARRY(( !\i0|a\(13) $ (\i0|b\(13)) ) + ( \i0|Add1~51\ ) + ( \i0|Add1~50\ ))
-- \i0|Add1~55\ = SHARE((\i0|a\(13) & !\i0|b\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(13),
	datad => \i0|ALT_INV_b\(13),
	cin => \i0|Add1~50\,
	sharein => \i0|Add1~51\,
	sumout => \i0|Add1~53_sumout\,
	cout => \i0|Add1~54\,
	shareout => \i0|Add1~55\);

-- Location: FF_X10_Y2_N41
\i0|a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add1~53_sumout\,
	asdata => \num[13]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(13));

-- Location: LABCELL_X10_Y2_N42
\i0|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~57_sumout\ = SUM(( !\i0|a\(14) $ (\i0|b\(14)) ) + ( \i0|Add1~55\ ) + ( \i0|Add1~54\ ))
-- \i0|Add1~58\ = CARRY(( !\i0|a\(14) $ (\i0|b\(14)) ) + ( \i0|Add1~55\ ) + ( \i0|Add1~54\ ))
-- \i0|Add1~59\ = SHARE((\i0|a\(14) & !\i0|b\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(14),
	datac => \i0|ALT_INV_b\(14),
	cin => \i0|Add1~54\,
	sharein => \i0|Add1~55\,
	sumout => \i0|Add1~57_sumout\,
	cout => \i0|Add1~58\,
	shareout => \i0|Add1~59\);

-- Location: FF_X10_Y2_N44
\i0|a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add1~57_sumout\,
	asdata => \num[14]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(14));

-- Location: LABCELL_X10_Y2_N45
\i0|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add1~61_sumout\ = SUM(( !\i0|b\(15) $ (\i0|a\(15)) ) + ( \i0|Add1~59\ ) + ( \i0|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(15),
	datac => \i0|ALT_INV_a\(15),
	cin => \i0|Add1~58\,
	sharein => \i0|Add1~59\,
	sumout => \i0|Add1~61_sumout\);

-- Location: LABCELL_X12_Y2_N15
\i0|a[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|a[15]~feeder_combout\ = ( \i0|Add1~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i0|ALT_INV_Add1~61_sumout\,
	combout => \i0|a[15]~feeder_combout\);

-- Location: FF_X12_Y2_N17
\i0|a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|a[15]~feeder_combout\,
	asdata => \num[15]~input_o\,
	sload => \i1|Equal2~0_combout\,
	ena => \i0|a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|a\(15));

-- Location: LABCELL_X10_Y2_N48
\i0|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~8_combout\ = ( \i0|b\(12) & ( \i0|b\(14) & ( (\i0|a\(12) & (\i0|a\(14) & (!\i0|b\(13) $ (\i0|a\(13))))) ) ) ) # ( !\i0|b\(12) & ( \i0|b\(14) & ( (!\i0|a\(12) & (\i0|a\(14) & (!\i0|b\(13) $ (\i0|a\(13))))) ) ) ) # ( \i0|b\(12) & ( !\i0|b\(14) 
-- & ( (\i0|a\(12) & (!\i0|a\(14) & (!\i0|b\(13) $ (\i0|a\(13))))) ) ) ) # ( !\i0|b\(12) & ( !\i0|b\(14) & ( (!\i0|a\(12) & (!\i0|a\(14) & (!\i0|b\(13) $ (\i0|a\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(13),
	datab => \i0|ALT_INV_a\(13),
	datac => \i0|ALT_INV_a\(12),
	datad => \i0|ALT_INV_a\(14),
	datae => \i0|ALT_INV_b\(12),
	dataf => \i0|ALT_INV_b\(14),
	combout => \i0|LessThan0~8_combout\);

-- Location: LABCELL_X11_Y2_N21
\i0|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~9_combout\ = ( \i0|a\(10) & ( (\i0|b\(10) & (\i0|LessThan0~8_combout\ & (!\i0|a\(11) $ (\i0|b\(11))))) ) ) # ( !\i0|a\(10) & ( (!\i0|b\(10) & (\i0|LessThan0~8_combout\ & (!\i0|a\(11) $ (\i0|b\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000001000001000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(10),
	datab => \i0|ALT_INV_a\(11),
	datac => \i0|ALT_INV_b\(11),
	datad => \i0|ALT_INV_LessThan0~8_combout\,
	dataf => \i0|ALT_INV_a\(10),
	combout => \i0|LessThan0~9_combout\);

-- Location: LABCELL_X10_Y2_N54
\i0|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~11_combout\ = ( \i0|b\(13) & ( \i0|a\(14) & ( (\i0|b\(14) & ((!\i0|a\(13)) # ((\i0|b\(12) & !\i0|a\(12))))) ) ) ) # ( !\i0|b\(13) & ( \i0|a\(14) & ( (\i0|b\(14) & (\i0|b\(12) & (!\i0|a\(12) & !\i0|a\(13)))) ) ) ) # ( \i0|b\(13) & ( 
-- !\i0|a\(14) & ( ((!\i0|a\(13)) # ((\i0|b\(12) & !\i0|a\(12)))) # (\i0|b\(14)) ) ) ) # ( !\i0|b\(13) & ( !\i0|a\(14) & ( ((\i0|b\(12) & (!\i0|a\(12) & !\i0|a\(13)))) # (\i0|b\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101111111110111010100010000000000000101010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(14),
	datab => \i0|ALT_INV_b\(12),
	datac => \i0|ALT_INV_a\(12),
	datad => \i0|ALT_INV_a\(13),
	datae => \i0|ALT_INV_b\(13),
	dataf => \i0|ALT_INV_a\(14),
	combout => \i0|LessThan0~11_combout\);

-- Location: LABCELL_X11_Y2_N9
\i0|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~12_combout\ = ( \i0|LessThan0~8_combout\ & ( !\i0|LessThan0~11_combout\ & ( (!\i0|a\(11) & (!\i0|b\(11) & ((!\i0|b\(10)) # (\i0|a\(10))))) # (\i0|a\(11) & ((!\i0|b\(10)) # ((!\i0|b\(11)) # (\i0|a\(10))))) ) ) ) # ( !\i0|LessThan0~8_combout\ 
-- & ( !\i0|LessThan0~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100101111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(10),
	datab => \i0|ALT_INV_a\(11),
	datac => \i0|ALT_INV_b\(11),
	datad => \i0|ALT_INV_a\(10),
	datae => \i0|ALT_INV_LessThan0~8_combout\,
	dataf => \i0|ALT_INV_LessThan0~11_combout\,
	combout => \i0|LessThan0~12_combout\);

-- Location: LABCELL_X11_Y2_N3
\i0|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~13_combout\ = ( \i0|LessThan0~9_combout\ & ( \i0|LessThan0~12_combout\ & ( (!\i0|a\(9) & (!\i0|b\(9) & ((!\i0|b\(8)) # (\i0|a\(8))))) # (\i0|a\(9) & ((!\i0|b\(8)) # ((!\i0|b\(9)) # (\i0|a\(8))))) ) ) ) # ( !\i0|LessThan0~9_combout\ & ( 
-- \i0|LessThan0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111011111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(8),
	datab => \i0|ALT_INV_a\(9),
	datac => \i0|ALT_INV_a\(8),
	datad => \i0|ALT_INV_b\(9),
	datae => \i0|ALT_INV_LessThan0~9_combout\,
	dataf => \i0|ALT_INV_LessThan0~12_combout\,
	combout => \i0|LessThan0~13_combout\);

-- Location: LABCELL_X12_Y2_N30
\i0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~2_combout\ = ( \i0|a\(7) & ( (\i0|b\(7) & (!\i0|b\(6) $ (\i0|a\(6)))) ) ) # ( !\i0|a\(7) & ( (!\i0|b\(7) & (!\i0|b\(6) $ (\i0|a\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(6),
	datab => \i0|ALT_INV_b\(7),
	datac => \i0|ALT_INV_a\(6),
	dataf => \i0|ALT_INV_a\(7),
	combout => \i0|LessThan0~2_combout\);

-- Location: LABCELL_X12_Y2_N9
\i0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~3_combout\ = ( \i0|LessThan0~2_combout\ & ( (!\i0|a\(5) & (!\i0|b\(5) & (!\i0|a\(4) $ (\i0|b\(4))))) # (\i0|a\(5) & (\i0|b\(5) & (!\i0|a\(4) $ (\i0|b\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(5),
	datab => \i0|ALT_INV_b\(5),
	datac => \i0|ALT_INV_a\(4),
	datad => \i0|ALT_INV_b\(4),
	dataf => \i0|ALT_INV_LessThan0~2_combout\,
	combout => \i0|LessThan0~3_combout\);

-- Location: LABCELL_X12_Y2_N12
\i0|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~4_combout\ = ( \i0|a\(6) & ( (!\i0|a\(7) & \i0|b\(7)) ) ) # ( !\i0|a\(6) & ( (!\i0|a\(7) & ((\i0|b\(7)) # (\i0|b\(6)))) # (\i0|a\(7) & (\i0|b\(6) & \i0|b\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(7),
	datac => \i0|ALT_INV_b\(6),
	datad => \i0|ALT_INV_b\(7),
	dataf => \i0|ALT_INV_a\(6),
	combout => \i0|LessThan0~4_combout\);

-- Location: LABCELL_X12_Y2_N3
\i0|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~5_combout\ = ( \i0|LessThan0~2_combout\ & ( !\i0|LessThan0~4_combout\ & ( (!\i0|b\(5) & ((!\i0|b\(4)) # ((\i0|a\(5)) # (\i0|a\(4))))) # (\i0|b\(5) & (\i0|a\(5) & ((!\i0|b\(4)) # (\i0|a\(4))))) ) ) ) # ( !\i0|LessThan0~2_combout\ & ( 
-- !\i0|LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100001111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(4),
	datab => \i0|ALT_INV_a\(4),
	datac => \i0|ALT_INV_b\(5),
	datad => \i0|ALT_INV_a\(5),
	datae => \i0|ALT_INV_LessThan0~2_combout\,
	dataf => \i0|ALT_INV_LessThan0~4_combout\,
	combout => \i0|LessThan0~5_combout\);

-- Location: LABCELL_X11_Y2_N57
\i0|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~7_combout\ = ( \i0|a\(9) & ( !\i0|b\(9) ) ) # ( !\i0|a\(9) & ( \i0|b\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_b\(9),
	dataf => \i0|ALT_INV_a\(9),
	combout => \i0|LessThan0~7_combout\);

-- Location: LABCELL_X13_Y2_N3
\i0|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~6_combout\ = !\i0|a\(8) $ (!\i0|b\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(8),
	datad => \i0|ALT_INV_b\(8),
	combout => \i0|LessThan0~6_combout\);

-- Location: LABCELL_X12_Y2_N42
\i0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~0_combout\ = ( \i0|a\(1) & ( (\i0|b\(1) & (!\i0|a\(0) & \i0|b\(0))) ) ) # ( !\i0|a\(1) & ( ((!\i0|a\(0) & \i0|b\(0))) # (\i0|b\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(1),
	datac => \i0|ALT_INV_a\(0),
	datad => \i0|ALT_INV_b\(0),
	dataf => \i0|ALT_INV_a\(1),
	combout => \i0|LessThan0~0_combout\);

-- Location: LABCELL_X12_Y2_N51
\i0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~1_combout\ = ( \i0|LessThan0~0_combout\ & ( (!\i0|b\(3) & (!\i0|a\(3) & ((!\i0|a\(2)) # (\i0|b\(2))))) # (\i0|b\(3) & ((!\i0|a\(3)) # ((!\i0|a\(2)) # (\i0|b\(2))))) ) ) # ( !\i0|LessThan0~0_combout\ & ( (!\i0|b\(3) & (!\i0|a\(3) & 
-- (!\i0|a\(2) & \i0|b\(2)))) # (\i0|b\(3) & ((!\i0|a\(3)) # ((!\i0|a\(2) & \i0|b\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011010100010001001101010011010100110111011101010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_b\(3),
	datab => \i0|ALT_INV_a\(3),
	datac => \i0|ALT_INV_a\(2),
	datad => \i0|ALT_INV_b\(2),
	dataf => \i0|ALT_INV_LessThan0~0_combout\,
	combout => \i0|LessThan0~1_combout\);

-- Location: LABCELL_X12_Y2_N24
\i0|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~10_combout\ = ( !\i0|LessThan0~6_combout\ & ( \i0|LessThan0~1_combout\ & ( (\i0|LessThan0~9_combout\ & (!\i0|LessThan0~7_combout\ & ((!\i0|LessThan0~5_combout\) # (\i0|LessThan0~3_combout\)))) ) ) ) # ( !\i0|LessThan0~6_combout\ & ( 
-- !\i0|LessThan0~1_combout\ & ( (\i0|LessThan0~9_combout\ & (!\i0|LessThan0~5_combout\ & !\i0|LessThan0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000001010001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_LessThan0~9_combout\,
	datab => \i0|ALT_INV_LessThan0~3_combout\,
	datac => \i0|ALT_INV_LessThan0~5_combout\,
	datad => \i0|ALT_INV_LessThan0~7_combout\,
	datae => \i0|ALT_INV_LessThan0~6_combout\,
	dataf => \i0|ALT_INV_LessThan0~1_combout\,
	combout => \i0|LessThan0~10_combout\);

-- Location: LABCELL_X12_Y2_N45
\i0|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|LessThan0~14_combout\ = ( \i0|LessThan0~10_combout\ & ( (!\i0|a\(15)) # (\i0|b\(15)) ) ) # ( !\i0|LessThan0~10_combout\ & ( (!\i0|a\(15) & ((!\i0|LessThan0~13_combout\) # (\i0|b\(15)))) # (\i0|a\(15) & (!\i0|LessThan0~13_combout\ & \i0|b\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(15),
	datac => \i0|ALT_INV_LessThan0~13_combout\,
	datad => \i0|ALT_INV_b\(15),
	dataf => \i0|ALT_INV_LessThan0~10_combout\,
	combout => \i0|LessThan0~14_combout\);

-- Location: LABCELL_X13_Y1_N33
\i1|s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|s[1]~1_combout\ = ( \i0|LessThan0~14_combout\ & ( (!\i1|s\(0) & ((\i1|s\(1)))) # (\i1|s\(0) & (\bt~input_o\ & !\i1|s\(1))) ) ) # ( !\i0|LessThan0~14_combout\ & ( ((\bt~input_o\ & \i1|s\(0))) # (\i1|s\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datab => \i1|ALT_INV_s\(0),
	datad => \i1|ALT_INV_s\(1),
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i1|s[1]~1_combout\);

-- Location: FF_X13_Y1_N35
\i1|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|s[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|s\(1));

-- Location: LABCELL_X13_Y1_N39
\i1|s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|s[0]~0_combout\ = ( \i1|s\(0) & ( \i0|LessThan0~14_combout\ & ( (!\bt~input_o\ & !\i1|s\(1)) ) ) ) # ( !\i1|s\(0) & ( \i0|LessThan0~14_combout\ & ( (\i1|s\(1)) # (\bt~input_o\) ) ) ) # ( \i1|s\(0) & ( !\i0|LessThan0~14_combout\ & ( (!\bt~input_o\) # 
-- (\i1|s\(1)) ) ) ) # ( !\i1|s\(0) & ( !\i0|LessThan0~14_combout\ & ( (\i1|s\(1)) # (\bt~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101010101111111101010101111111111010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bt~input_o\,
	datad => \i1|ALT_INV_s\(1),
	datae => \i1|ALT_INV_s\(0),
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i1|s[0]~0_combout\);

-- Location: FF_X13_Y1_N41
\i1|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|s\(0));

-- Location: LABCELL_X12_Y2_N54
\i0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|process_0~0_combout\ = ( !\i0|LessThan0~14_combout\ & ( (\i1|s\(0) & \i1|s\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_s\(0),
	datad => \i1|ALT_INV_s\(1),
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i0|process_0~0_combout\);

-- Location: FF_X11_Y2_N56
\i0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i0|q[0]~0_combout\,
	sload => VCC,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(0));

-- Location: LABCELL_X12_Y1_N0
\i0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~1_sumout\ = SUM(( \i0|q\(0) ) + ( \i0|q\(1) ) + ( !VCC ))
-- \i0|Add0~2\ = CARRY(( \i0|q\(0) ) + ( \i0|q\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(1),
	datad => \i0|ALT_INV_q\(0),
	cin => GND,
	sumout => \i0|Add0~1_sumout\,
	cout => \i0|Add0~2\);

-- Location: FF_X12_Y1_N2
\i0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~1_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(1));

-- Location: LABCELL_X12_Y1_N3
\i0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~5_sumout\ = SUM(( \i0|q\(2) ) + ( GND ) + ( \i0|Add0~2\ ))
-- \i0|Add0~6\ = CARRY(( \i0|q\(2) ) + ( GND ) + ( \i0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_q\(2),
	cin => \i0|Add0~2\,
	sumout => \i0|Add0~5_sumout\,
	cout => \i0|Add0~6\);

-- Location: FF_X12_Y1_N5
\i0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~5_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(2));

-- Location: LABCELL_X12_Y1_N6
\i0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~9_sumout\ = SUM(( \i0|q\(3) ) + ( GND ) + ( \i0|Add0~6\ ))
-- \i0|Add0~10\ = CARRY(( \i0|q\(3) ) + ( GND ) + ( \i0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_q\(3),
	cin => \i0|Add0~6\,
	sumout => \i0|Add0~9_sumout\,
	cout => \i0|Add0~10\);

-- Location: FF_X12_Y1_N8
\i0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~9_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(3));

-- Location: LABCELL_X12_Y1_N9
\i0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~13_sumout\ = SUM(( \i0|q\(4) ) + ( GND ) + ( \i0|Add0~10\ ))
-- \i0|Add0~14\ = CARRY(( \i0|q\(4) ) + ( GND ) + ( \i0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(4),
	cin => \i0|Add0~10\,
	sumout => \i0|Add0~13_sumout\,
	cout => \i0|Add0~14\);

-- Location: FF_X12_Y1_N11
\i0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~13_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(4));

-- Location: LABCELL_X12_Y1_N12
\i0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~17_sumout\ = SUM(( \i0|q\(5) ) + ( GND ) + ( \i0|Add0~14\ ))
-- \i0|Add0~18\ = CARRY(( \i0|q\(5) ) + ( GND ) + ( \i0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_q\(5),
	cin => \i0|Add0~14\,
	sumout => \i0|Add0~17_sumout\,
	cout => \i0|Add0~18\);

-- Location: FF_X12_Y1_N14
\i0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~17_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(5));

-- Location: LABCELL_X12_Y1_N15
\i0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~21_sumout\ = SUM(( \i0|q\(6) ) + ( GND ) + ( \i0|Add0~18\ ))
-- \i0|Add0~22\ = CARRY(( \i0|q\(6) ) + ( GND ) + ( \i0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(6),
	cin => \i0|Add0~18\,
	sumout => \i0|Add0~21_sumout\,
	cout => \i0|Add0~22\);

-- Location: FF_X12_Y1_N17
\i0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~21_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(6));

-- Location: LABCELL_X12_Y1_N18
\i0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~25_sumout\ = SUM(( \i0|q\(7) ) + ( GND ) + ( \i0|Add0~22\ ))
-- \i0|Add0~26\ = CARRY(( \i0|q\(7) ) + ( GND ) + ( \i0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(7),
	cin => \i0|Add0~22\,
	sumout => \i0|Add0~25_sumout\,
	cout => \i0|Add0~26\);

-- Location: FF_X12_Y1_N20
\i0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~25_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(7));

-- Location: LABCELL_X12_Y1_N21
\i0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~29_sumout\ = SUM(( \i0|q\(8) ) + ( GND ) + ( \i0|Add0~26\ ))
-- \i0|Add0~30\ = CARRY(( \i0|q\(8) ) + ( GND ) + ( \i0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_q\(8),
	cin => \i0|Add0~26\,
	sumout => \i0|Add0~29_sumout\,
	cout => \i0|Add0~30\);

-- Location: FF_X12_Y1_N23
\i0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~29_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(8));

-- Location: LABCELL_X12_Y1_N24
\i0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~33_sumout\ = SUM(( \i0|q\(9) ) + ( GND ) + ( \i0|Add0~30\ ))
-- \i0|Add0~34\ = CARRY(( \i0|q\(9) ) + ( GND ) + ( \i0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(9),
	cin => \i0|Add0~30\,
	sumout => \i0|Add0~33_sumout\,
	cout => \i0|Add0~34\);

-- Location: FF_X12_Y1_N26
\i0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~33_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(9));

-- Location: LABCELL_X12_Y1_N27
\i0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~37_sumout\ = SUM(( \i0|q\(10) ) + ( GND ) + ( \i0|Add0~34\ ))
-- \i0|Add0~38\ = CARRY(( \i0|q\(10) ) + ( GND ) + ( \i0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_q\(10),
	cin => \i0|Add0~34\,
	sumout => \i0|Add0~37_sumout\,
	cout => \i0|Add0~38\);

-- Location: FF_X12_Y1_N29
\i0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~37_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(10));

-- Location: LABCELL_X12_Y1_N30
\i0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~41_sumout\ = SUM(( \i0|q\(11) ) + ( GND ) + ( \i0|Add0~38\ ))
-- \i0|Add0~42\ = CARRY(( \i0|q\(11) ) + ( GND ) + ( \i0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_q\(11),
	cin => \i0|Add0~38\,
	sumout => \i0|Add0~41_sumout\,
	cout => \i0|Add0~42\);

-- Location: FF_X12_Y1_N32
\i0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~41_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(11));

-- Location: LABCELL_X12_Y1_N33
\i0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~45_sumout\ = SUM(( \i0|q\(12) ) + ( GND ) + ( \i0|Add0~42\ ))
-- \i0|Add0~46\ = CARRY(( \i0|q\(12) ) + ( GND ) + ( \i0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_q\(12),
	cin => \i0|Add0~42\,
	sumout => \i0|Add0~45_sumout\,
	cout => \i0|Add0~46\);

-- Location: FF_X12_Y1_N35
\i0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~45_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(12));

-- Location: LABCELL_X12_Y1_N36
\i0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~49_sumout\ = SUM(( \i0|q\(13) ) + ( GND ) + ( \i0|Add0~46\ ))
-- \i0|Add0~50\ = CARRY(( \i0|q\(13) ) + ( GND ) + ( \i0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(13),
	cin => \i0|Add0~46\,
	sumout => \i0|Add0~49_sumout\,
	cout => \i0|Add0~50\);

-- Location: FF_X12_Y1_N38
\i0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~49_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(13));

-- Location: LABCELL_X12_Y1_N39
\i0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~53_sumout\ = SUM(( \i0|q\(14) ) + ( GND ) + ( \i0|Add0~50\ ))
-- \i0|Add0~54\ = CARRY(( \i0|q\(14) ) + ( GND ) + ( \i0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_q\(14),
	cin => \i0|Add0~50\,
	sumout => \i0|Add0~53_sumout\,
	cout => \i0|Add0~54\);

-- Location: FF_X12_Y1_N41
\i0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~53_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(14));

-- Location: LABCELL_X12_Y1_N42
\i0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Add0~57_sumout\ = SUM(( \i0|q\(15) ) + ( GND ) + ( \i0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_q\(15),
	cin => \i0|Add0~54\,
	sumout => \i0|Add0~57_sumout\);

-- Location: FF_X12_Y1_N44
\i0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|Add0~57_sumout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|q\(15));

-- Location: LABCELL_X11_Y2_N48
\i0|r[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[0]~1_combout\ = ( \i0|a\(0) & ( (\i0|LessThan0~14_combout\) # (\i0|r[0]~1_combout\) ) ) # ( !\i0|a\(0) & ( (\i0|r[0]~1_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[0]~1_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(0),
	combout => \i0|r[0]~1_combout\);

-- Location: LABCELL_X13_Y2_N0
\i0|r[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[0]~3_combout\ = ( \i0|r[0]~1_combout\ & ( !\i0|a\(0) ) ) # ( !\i0|r[0]~1_combout\ & ( \i0|a\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(0),
	dataf => \i0|ALT_INV_r[0]~1_combout\,
	combout => \i0|r[0]~3_combout\);

-- Location: FF_X13_Y2_N2
\i0|r[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[0]~3_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[0]~_emulated_q\);

-- Location: LABCELL_X11_Y2_N54
\i0|r[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[0]~2_combout\ = ( \i0|r[0]~1_combout\ & ( (!\i0|LessThan0~14_combout\ & ((!\i0|r[0]~_emulated_q\))) # (\i0|LessThan0~14_combout\ & (\i0|a\(0))) ) ) # ( !\i0|r[0]~1_combout\ & ( (!\i0|LessThan0~14_combout\ & ((\i0|r[0]~_emulated_q\))) # 
-- (\i0|LessThan0~14_combout\ & (\i0|a\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(0),
	datab => \i0|ALT_INV_r[0]~_emulated_q\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_r[0]~1_combout\,
	combout => \i0|r[0]~2_combout\);

-- Location: LABCELL_X13_Y2_N39
\i0|r[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[1]~5_combout\ = ( \i0|a\(1) & ( (\i0|LessThan0~14_combout\) # (\i0|r[1]~5_combout\) ) ) # ( !\i0|a\(1) & ( (\i0|r[1]~5_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[1]~5_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(1),
	combout => \i0|r[1]~5_combout\);

-- Location: LABCELL_X13_Y2_N30
\i0|r[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[1]~7_combout\ = ( \i0|r[1]~5_combout\ & ( !\i0|a\(1) ) ) # ( !\i0|r[1]~5_combout\ & ( \i0|a\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(1),
	dataf => \i0|ALT_INV_r[1]~5_combout\,
	combout => \i0|r[1]~7_combout\);

-- Location: FF_X13_Y2_N31
\i0|r[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[1]~7_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[1]~_emulated_q\);

-- Location: MLABCELL_X15_Y2_N12
\i0|r[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[1]~6_combout\ = ( \i0|a\(1) & ( \i0|r[1]~5_combout\ & ( (!\i0|r[1]~_emulated_q\) # (\i0|LessThan0~14_combout\) ) ) ) # ( !\i0|a\(1) & ( \i0|r[1]~5_combout\ & ( (!\i0|r[1]~_emulated_q\ & !\i0|LessThan0~14_combout\) ) ) ) # ( \i0|a\(1) & ( 
-- !\i0|r[1]~5_combout\ & ( (\i0|LessThan0~14_combout\) # (\i0|r[1]~_emulated_q\) ) ) ) # ( !\i0|a\(1) & ( !\i0|r[1]~5_combout\ & ( (\i0|r[1]~_emulated_q\ & !\i0|LessThan0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111111001100000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[1]~_emulated_q\,
	datad => \i0|ALT_INV_LessThan0~14_combout\,
	datae => \i0|ALT_INV_a\(1),
	dataf => \i0|ALT_INV_r[1]~5_combout\,
	combout => \i0|r[1]~6_combout\);

-- Location: LABCELL_X11_Y2_N45
\i0|r[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[2]~9_combout\ = ( \i0|a\(2) & ( (\i0|r[2]~9_combout\) # (\i0|LessThan0~14_combout\) ) ) # ( !\i0|a\(2) & ( (!\i0|LessThan0~14_combout\ & \i0|r[2]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[2]~9_combout\,
	dataf => \i0|ALT_INV_a\(2),
	combout => \i0|r[2]~9_combout\);

-- Location: LABCELL_X13_Y2_N54
\i0|r[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[2]~11_combout\ = ( \i0|r[2]~9_combout\ & ( !\i0|a\(2) ) ) # ( !\i0|r[2]~9_combout\ & ( \i0|a\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(2),
	dataf => \i0|ALT_INV_r[2]~9_combout\,
	combout => \i0|r[2]~11_combout\);

-- Location: FF_X13_Y2_N55
\i0|r[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[2]~11_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[2]~_emulated_q\);

-- Location: LABCELL_X11_Y2_N36
\i0|r[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[2]~10_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|a\(2) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|r[2]~_emulated_q\ $ (!\i0|r[2]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(2),
	datac => \i0|ALT_INV_r[2]~_emulated_q\,
	datad => \i0|ALT_INV_r[2]~9_combout\,
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i0|r[2]~10_combout\);

-- Location: LABCELL_X12_Y2_N36
\i0|r[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[3]~13_combout\ = ( \i0|a\(3) & ( (\i0|r[3]~13_combout\) # (\i0|LessThan0~14_combout\) ) ) # ( !\i0|a\(3) & ( (!\i0|LessThan0~14_combout\ & \i0|r[3]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_LessThan0~14_combout\,
	datac => \i0|ALT_INV_r[3]~13_combout\,
	dataf => \i0|ALT_INV_a\(3),
	combout => \i0|r[3]~13_combout\);

-- Location: LABCELL_X13_Y2_N51
\i0|r[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[3]~15_combout\ = ( \i0|r[3]~13_combout\ & ( !\i0|a\(3) ) ) # ( !\i0|r[3]~13_combout\ & ( \i0|a\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(3),
	dataf => \i0|ALT_INV_r[3]~13_combout\,
	combout => \i0|r[3]~15_combout\);

-- Location: FF_X13_Y2_N53
\i0|r[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[3]~15_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[3]~_emulated_q\);

-- Location: LABCELL_X13_Y2_N45
\i0|r[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[3]~14_combout\ = ( \i0|r[3]~13_combout\ & ( (!\i0|LessThan0~14_combout\ & (!\i0|r[3]~_emulated_q\)) # (\i0|LessThan0~14_combout\ & ((\i0|a\(3)))) ) ) # ( !\i0|r[3]~13_combout\ & ( (!\i0|LessThan0~14_combout\ & (\i0|r[3]~_emulated_q\)) # 
-- (\i0|LessThan0~14_combout\ & ((\i0|a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001110100011101000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[3]~_emulated_q\,
	datab => \i0|ALT_INV_a\(3),
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_r[3]~13_combout\,
	combout => \i0|r[3]~14_combout\);

-- Location: LABCELL_X13_Y2_N9
\i0|r[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[4]~17_combout\ = ( \i0|a\(4) & ( (\i0|LessThan0~14_combout\) # (\i0|r[4]~17_combout\) ) ) # ( !\i0|a\(4) & ( (\i0|r[4]~17_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_r[4]~17_combout\,
	datad => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(4),
	combout => \i0|r[4]~17_combout\);

-- Location: LABCELL_X13_Y2_N36
\i0|r[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[4]~19_combout\ = ( \i0|r[4]~17_combout\ & ( !\i0|a\(4) ) ) # ( !\i0|r[4]~17_combout\ & ( \i0|a\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_a\(4),
	dataf => \i0|ALT_INV_r[4]~17_combout\,
	combout => \i0|r[4]~19_combout\);

-- Location: FF_X13_Y2_N37
\i0|r[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[4]~19_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[4]~_emulated_q\);

-- Location: MLABCELL_X15_Y2_N54
\i0|r[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[4]~18_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|a\(4) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|r[4]~_emulated_q\ $ (!\i0|r[4]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110000011110000111101100110011001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[4]~_emulated_q\,
	datab => \i0|ALT_INV_r[4]~17_combout\,
	datac => \i0|ALT_INV_a\(4),
	datae => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i0|r[4]~18_combout\);

-- Location: LABCELL_X12_Y2_N21
\i0|r[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[5]~21_combout\ = ( \i0|a\(5) & ( (\i0|LessThan0~14_combout\) # (\i0|r[5]~21_combout\) ) ) # ( !\i0|a\(5) & ( (\i0|r[5]~21_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[5]~21_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(5),
	combout => \i0|r[5]~21_combout\);

-- Location: LABCELL_X11_Y1_N15
\i0|r[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[5]~23_combout\ = ( !\i0|a\(5) & ( \i0|r[5]~21_combout\ ) ) # ( \i0|a\(5) & ( !\i0|r[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i0|ALT_INV_a\(5),
	dataf => \i0|ALT_INV_r[5]~21_combout\,
	combout => \i0|r[5]~23_combout\);

-- Location: FF_X11_Y1_N17
\i0|r[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[5]~23_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[5]~_emulated_q\);

-- Location: LABCELL_X11_Y1_N54
\i0|r[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[5]~22_combout\ = ( \i0|a\(5) & ( \i0|r[5]~_emulated_q\ & ( (!\i0|r[5]~21_combout\) # (\i0|LessThan0~14_combout\) ) ) ) # ( !\i0|a\(5) & ( \i0|r[5]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\ & !\i0|r[5]~21_combout\) ) ) ) # ( \i0|a\(5) & ( 
-- !\i0|r[5]~_emulated_q\ & ( (\i0|r[5]~21_combout\) # (\i0|LessThan0~14_combout\) ) ) ) # ( !\i0|a\(5) & ( !\i0|r[5]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\ & \i0|r[5]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111111110000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[5]~21_combout\,
	datae => \i0|ALT_INV_a\(5),
	dataf => \i0|ALT_INV_r[5]~_emulated_q\,
	combout => \i0|r[5]~22_combout\);

-- Location: LABCELL_X11_Y2_N27
\i0|r[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[6]~25_combout\ = ( \i0|a\(6) & ( (\i0|r[6]~25_combout\) # (\i0|LessThan0~14_combout\) ) ) # ( !\i0|a\(6) & ( (!\i0|LessThan0~14_combout\ & \i0|r[6]~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[6]~25_combout\,
	dataf => \i0|ALT_INV_a\(6),
	combout => \i0|r[6]~25_combout\);

-- Location: LABCELL_X12_Y2_N39
\i0|r[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[6]~27_combout\ = ( \i0|r[6]~25_combout\ & ( !\i0|a\(6) ) ) # ( !\i0|r[6]~25_combout\ & ( \i0|a\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_a\(6),
	dataf => \i0|ALT_INV_r[6]~25_combout\,
	combout => \i0|r[6]~27_combout\);

-- Location: FF_X13_Y2_N41
\i0|r[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i0|r[6]~27_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	sload => VCC,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[6]~_emulated_q\);

-- Location: LABCELL_X9_Y2_N3
\i0|r[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[6]~26_combout\ = ( \i0|r[6]~25_combout\ & ( (!\i0|LessThan0~14_combout\ & ((!\i0|r[6]~_emulated_q\))) # (\i0|LessThan0~14_combout\ & (\i0|a\(6))) ) ) # ( !\i0|r[6]~25_combout\ & ( (!\i0|LessThan0~14_combout\ & ((\i0|r[6]~_emulated_q\))) # 
-- (\i0|LessThan0~14_combout\ & (\i0|a\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(6),
	datab => \i0|ALT_INV_r[6]~_emulated_q\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_r[6]~25_combout\,
	combout => \i0|r[6]~26_combout\);

-- Location: LABCELL_X13_Y2_N21
\i0|r[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[7]~29_combout\ = ( \i0|a\(7) & ( (\i0|r[7]~29_combout\) # (\i0|LessThan0~14_combout\) ) ) # ( !\i0|a\(7) & ( (!\i0|LessThan0~14_combout\ & \i0|r[7]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[7]~29_combout\,
	dataf => \i0|ALT_INV_a\(7),
	combout => \i0|r[7]~29_combout\);

-- Location: LABCELL_X13_Y2_N48
\i0|r[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[7]~31_combout\ = ( \i0|r[7]~29_combout\ & ( !\i0|a\(7) ) ) # ( !\i0|r[7]~29_combout\ & ( \i0|a\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(7),
	dataf => \i0|ALT_INV_r[7]~29_combout\,
	combout => \i0|r[7]~31_combout\);

-- Location: FF_X13_Y2_N49
\i0|r[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[7]~31_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[7]~_emulated_q\);

-- Location: MLABCELL_X15_Y2_N48
\i0|r[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[7]~30_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|a\(7) ) ) # ( !\i0|LessThan0~14_combout\ & ( \i0|a\(7) & ( !\i0|r[7]~29_combout\ $ (!\i0|r[7]~_emulated_q\) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|a\(7) & ( !\i0|r[7]~29_combout\ $ 
-- (!\i0|r[7]~_emulated_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000111100001111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[7]~29_combout\,
	datac => \i0|ALT_INV_r[7]~_emulated_q\,
	datae => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(7),
	combout => \i0|r[7]~30_combout\);

-- Location: LABCELL_X13_Y2_N57
\i0|r[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[8]~33_combout\ = ( \i0|a\(8) & ( (\i0|LessThan0~14_combout\) # (\i0|r[8]~33_combout\) ) ) # ( !\i0|a\(8) & ( (\i0|r[8]~33_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[8]~33_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(8),
	combout => \i0|r[8]~33_combout\);

-- Location: LABCELL_X13_Y2_N12
\i0|r[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[8]~35_combout\ = ( \i0|r[8]~33_combout\ & ( !\i0|a\(8) ) ) # ( !\i0|r[8]~33_combout\ & ( \i0|a\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(8),
	dataf => \i0|ALT_INV_r[8]~33_combout\,
	combout => \i0|r[8]~35_combout\);

-- Location: FF_X13_Y2_N13
\i0|r[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[8]~35_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[8]~_emulated_q\);

-- Location: MLABCELL_X15_Y2_N30
\i0|r[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[8]~34_combout\ = ( \i0|r[8]~33_combout\ & ( \i0|r[8]~_emulated_q\ & ( (\i0|a\(8) & \i0|LessThan0~14_combout\) ) ) ) # ( !\i0|r[8]~33_combout\ & ( \i0|r[8]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\) # (\i0|a\(8)) ) ) ) # ( \i0|r[8]~33_combout\ & ( 
-- !\i0|r[8]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\) # (\i0|a\(8)) ) ) ) # ( !\i0|r[8]~33_combout\ & ( !\i0|r[8]~_emulated_q\ & ( (\i0|a\(8) & \i0|LessThan0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110111011101110111010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(8),
	datab => \i0|ALT_INV_LessThan0~14_combout\,
	datae => \i0|ALT_INV_r[8]~33_combout\,
	dataf => \i0|ALT_INV_r[8]~_emulated_q\,
	combout => \i0|r[8]~34_combout\);

-- Location: LABCELL_X11_Y2_N30
\i0|r[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[9]~37_combout\ = ( \i0|a\(9) & ( (\i0|LessThan0~14_combout\) # (\i0|r[9]~37_combout\) ) ) # ( !\i0|a\(9) & ( (\i0|r[9]~37_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[9]~37_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(9),
	combout => \i0|r[9]~37_combout\);

-- Location: LABCELL_X12_Y2_N18
\i0|r[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[9]~39_combout\ = ( \i0|r[9]~37_combout\ & ( !\i0|a\(9) ) ) # ( !\i0|r[9]~37_combout\ & ( \i0|a\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(9),
	dataf => \i0|ALT_INV_r[9]~37_combout\,
	combout => \i0|r[9]~39_combout\);

-- Location: FF_X13_Y2_N59
\i0|r[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i0|r[9]~39_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	sload => VCC,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[9]~_emulated_q\);

-- Location: LABCELL_X11_Y2_N33
\i0|r[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[9]~38_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|a\(9) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|r[9]~37_combout\ $ (!\i0|r[9]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(9),
	datab => \i0|ALT_INV_r[9]~37_combout\,
	datac => \i0|ALT_INV_r[9]~_emulated_q\,
	dataf => \i0|ALT_INV_LessThan0~14_combout\,
	combout => \i0|r[9]~38_combout\);

-- Location: LABCELL_X11_Y2_N12
\i0|r[10]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[10]~41_combout\ = ( \i0|a\(10) & ( (\i0|LessThan0~14_combout\) # (\i0|r[10]~41_combout\) ) ) # ( !\i0|a\(10) & ( (\i0|r[10]~41_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_r[10]~41_combout\,
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(10),
	combout => \i0|r[10]~41_combout\);

-- Location: LABCELL_X13_Y2_N33
\i0|r[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[10]~43_combout\ = ( \i0|r[10]~41_combout\ & ( !\i0|a\(10) ) ) # ( !\i0|r[10]~41_combout\ & ( \i0|a\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_a\(10),
	dataf => \i0|ALT_INV_r[10]~41_combout\,
	combout => \i0|r[10]~43_combout\);

-- Location: FF_X13_Y2_N34
\i0|r[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[10]~43_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[10]~_emulated_q\);

-- Location: LABCELL_X11_Y2_N24
\i0|r[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[10]~42_combout\ = ( \i0|r[10]~41_combout\ & ( (!\i0|LessThan0~14_combout\ & (!\i0|r[10]~_emulated_q\)) # (\i0|LessThan0~14_combout\ & ((\i0|a\(10)))) ) ) # ( !\i0|r[10]~41_combout\ & ( (!\i0|LessThan0~14_combout\ & (\i0|r[10]~_emulated_q\)) # 
-- (\i0|LessThan0~14_combout\ & ((\i0|a\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_LessThan0~14_combout\,
	datab => \i0|ALT_INV_r[10]~_emulated_q\,
	datac => \i0|ALT_INV_a\(10),
	dataf => \i0|ALT_INV_r[10]~41_combout\,
	combout => \i0|r[10]~42_combout\);

-- Location: LABCELL_X9_Y2_N15
\i0|r[11]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[11]~45_combout\ = ( \i0|a\(11) & ( (\i0|LessThan0~14_combout\) # (\i0|r[11]~45_combout\) ) ) # ( !\i0|a\(11) & ( (\i0|r[11]~45_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_r[11]~45_combout\,
	datad => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(11),
	combout => \i0|r[11]~45_combout\);

-- Location: LABCELL_X9_Y2_N12
\i0|r[11]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[11]~47_combout\ = ( \i0|r[11]~45_combout\ & ( !\i0|a\(11) ) ) # ( !\i0|r[11]~45_combout\ & ( \i0|a\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_a\(11),
	dataf => \i0|ALT_INV_r[11]~45_combout\,
	combout => \i0|r[11]~47_combout\);

-- Location: FF_X9_Y2_N14
\i0|r[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[11]~47_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[11]~_emulated_q\);

-- Location: LABCELL_X9_Y2_N33
\i0|r[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[11]~46_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|r[11]~_emulated_q\ & ( \i0|a\(11) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( \i0|r[11]~_emulated_q\ & ( !\i0|r[11]~45_combout\ ) ) ) # ( \i0|LessThan0~14_combout\ & ( !\i0|r[11]~_emulated_q\ & ( 
-- \i0|a\(11) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|r[11]~_emulated_q\ & ( \i0|r[11]~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001111110000111100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(11),
	datac => \i0|ALT_INV_r[11]~45_combout\,
	datae => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_r[11]~_emulated_q\,
	combout => \i0|r[11]~46_combout\);

-- Location: LABCELL_X9_Y2_N57
\i0|r[12]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[12]~49_combout\ = ( \i0|a\(12) & ( (\i0|LessThan0~14_combout\) # (\i0|r[12]~49_combout\) ) ) # ( !\i0|a\(12) & ( (\i0|r[12]~49_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_r[12]~49_combout\,
	datad => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(12),
	combout => \i0|r[12]~49_combout\);

-- Location: LABCELL_X9_Y2_N54
\i0|r[12]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[12]~51_combout\ = ( \i0|r[12]~49_combout\ & ( !\i0|a\(12) ) ) # ( !\i0|r[12]~49_combout\ & ( \i0|a\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(12),
	dataf => \i0|ALT_INV_r[12]~49_combout\,
	combout => \i0|r[12]~51_combout\);

-- Location: FF_X9_Y2_N56
\i0|r[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[12]~51_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[12]~_emulated_q\);

-- Location: LABCELL_X9_Y2_N39
\i0|r[12]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[12]~50_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|a\(12) ) ) # ( !\i0|LessThan0~14_combout\ & ( \i0|a\(12) & ( !\i0|r[12]~_emulated_q\ $ (!\i0|r[12]~49_combout\) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|a\(12) & ( !\i0|r[12]~_emulated_q\ $ 
-- (!\i0|r[12]~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000001011010010110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[12]~_emulated_q\,
	datac => \i0|ALT_INV_r[12]~49_combout\,
	datae => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(12),
	combout => \i0|r[12]~50_combout\);

-- Location: LABCELL_X9_Y2_N21
\i0|r[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[13]~53_combout\ = ( \i0|a\(13) & ( (\i0|r[13]~53_combout\) # (\i0|LessThan0~14_combout\) ) ) # ( !\i0|a\(13) & ( (!\i0|LessThan0~14_combout\ & \i0|r[13]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[13]~53_combout\,
	dataf => \i0|ALT_INV_a\(13),
	combout => \i0|r[13]~53_combout\);

-- Location: LABCELL_X9_Y2_N18
\i0|r[13]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[13]~55_combout\ = ( \i0|r[13]~53_combout\ & ( !\i0|a\(13) ) ) # ( !\i0|r[13]~53_combout\ & ( \i0|a\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i0|ALT_INV_a\(13),
	dataf => \i0|ALT_INV_r[13]~53_combout\,
	combout => \i0|r[13]~55_combout\);

-- Location: FF_X9_Y2_N20
\i0|r[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[13]~55_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[13]~_emulated_q\);

-- Location: LABCELL_X9_Y2_N27
\i0|r[13]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[13]~54_combout\ = ( \i0|r[13]~53_combout\ & ( (!\i0|LessThan0~14_combout\ & (!\i0|r[13]~_emulated_q\)) # (\i0|LessThan0~14_combout\ & ((\i0|a\(13)))) ) ) # ( !\i0|r[13]~53_combout\ & ( (!\i0|LessThan0~14_combout\ & (\i0|r[13]~_emulated_q\)) # 
-- (\i0|LessThan0~14_combout\ & ((\i0|a\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011101000111010001101010011010100111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[13]~_emulated_q\,
	datab => \i0|ALT_INV_a\(13),
	datac => \i0|ALT_INV_LessThan0~14_combout\,
	datae => \i0|ALT_INV_r[13]~53_combout\,
	combout => \i0|r[13]~54_combout\);

-- Location: LABCELL_X9_Y2_N51
\i0|r[14]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[14]~57_combout\ = ( \i0|a\(14) & ( (\i0|LessThan0~14_combout\) # (\i0|r[14]~57_combout\) ) ) # ( !\i0|a\(14) & ( (\i0|r[14]~57_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[14]~57_combout\,
	datad => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(14),
	combout => \i0|r[14]~57_combout\);

-- Location: LABCELL_X9_Y2_N48
\i0|r[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[14]~59_combout\ = ( \i0|r[14]~57_combout\ & ( !\i0|a\(14) ) ) # ( !\i0|r[14]~57_combout\ & ( \i0|a\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|ALT_INV_a\(14),
	dataf => \i0|ALT_INV_r[14]~57_combout\,
	combout => \i0|r[14]~59_combout\);

-- Location: FF_X9_Y2_N50
\i0|r[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[14]~59_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[14]~_emulated_q\);

-- Location: LABCELL_X9_Y2_N9
\i0|r[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[14]~58_combout\ = ( \i0|LessThan0~14_combout\ & ( \i0|r[14]~57_combout\ & ( \i0|a\(14) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( \i0|r[14]~57_combout\ & ( !\i0|r[14]~_emulated_q\ ) ) ) # ( \i0|LessThan0~14_combout\ & ( !\i0|r[14]~57_combout\ & ( 
-- \i0|a\(14) ) ) ) # ( !\i0|LessThan0~14_combout\ & ( !\i0|r[14]~57_combout\ & ( \i0|r[14]~_emulated_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111110101010101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[14]~_emulated_q\,
	datac => \i0|ALT_INV_a\(14),
	datae => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_r[14]~57_combout\,
	combout => \i0|r[14]~58_combout\);

-- Location: LABCELL_X12_Y2_N57
\i0|r[15]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[15]~61_combout\ = ( \i0|a\(15) & ( (\i0|LessThan0~14_combout\) # (\i0|r[15]~61_combout\) ) ) # ( !\i0|a\(15) & ( (\i0|r[15]~61_combout\ & !\i0|LessThan0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_r[15]~61_combout\,
	datab => \i0|ALT_INV_LessThan0~14_combout\,
	dataf => \i0|ALT_INV_a\(15),
	combout => \i0|r[15]~61_combout\);

-- Location: LABCELL_X13_Y2_N15
\i0|r[15]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[15]~63_combout\ = ( \i0|r[15]~61_combout\ & ( !\i0|a\(15) ) ) # ( !\i0|r[15]~61_combout\ & ( \i0|a\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(15),
	dataf => \i0|ALT_INV_r[15]~61_combout\,
	combout => \i0|r[15]~63_combout\);

-- Location: FF_X13_Y2_N16
\i0|r[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i0|r[15]~63_combout\,
	clrn => \i0|ALT_INV_LessThan0~14_combout\,
	ena => \i0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i0|r[15]~_emulated_q\);

-- Location: LABCELL_X13_Y2_N27
\i0|r[15]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|r[15]~62_combout\ = ( \i0|r[15]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\ & ((!\i0|r[15]~61_combout\))) # (\i0|LessThan0~14_combout\ & (\i0|a\(15))) ) ) # ( !\i0|r[15]~_emulated_q\ & ( (!\i0|LessThan0~14_combout\ & ((\i0|r[15]~61_combout\))) # 
-- (\i0|LessThan0~14_combout\ & (\i0|a\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110111011101000100011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|ALT_INV_a\(15),
	datab => \i0|ALT_INV_LessThan0~14_combout\,
	datad => \i0|ALT_INV_r[15]~61_combout\,
	dataf => \i0|ALT_INV_r[15]~_emulated_q\,
	combout => \i0|r[15]~62_combout\);

-- Location: MLABCELL_X84_Y34_N0
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


