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

-- DATE "11/18/2019 22:26:20"

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

ENTITY 	division2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	aa : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	ready : BUFFER std_logic;
	done_tick : BUFFER std_logic;
	c_out : BUFFER std_logic_vector(15 DOWNTO 0);
	resto_out : BUFFER std_logic_vector(15 DOWNTO 0);
	zero_div : BUFFER std_logic
	);
END division2;

-- Design Ports Information
-- ready	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done_tick	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out[15]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[13]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resto_out[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero_div	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[15]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF division2 IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_aa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL ww_done_tick : std_logic;
SIGNAL ww_c_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_resto_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_zero_div : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \a_reg[22]~0_combout\ : std_logic;
SIGNAL \a_reg[22]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state_reg.op~q\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \state_reg.done~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \aa[0]~input_o\ : std_logic;
SIGNAL \a_next~1_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \a_reg[1]~feeder_combout\ : std_logic;
SIGNAL \aa[1]~input_o\ : std_logic;
SIGNAL \a_reg[2]~feeder_combout\ : std_logic;
SIGNAL \aa[2]~input_o\ : std_logic;
SIGNAL \a_reg[3]~feeder_combout\ : std_logic;
SIGNAL \aa[3]~input_o\ : std_logic;
SIGNAL \a_reg[4]~feeder_combout\ : std_logic;
SIGNAL \aa[4]~input_o\ : std_logic;
SIGNAL \a_reg[5]~feeder_combout\ : std_logic;
SIGNAL \aa[5]~input_o\ : std_logic;
SIGNAL \a_reg[6]~feeder_combout\ : std_logic;
SIGNAL \aa[6]~input_o\ : std_logic;
SIGNAL \a_reg[7]~feeder_combout\ : std_logic;
SIGNAL \aa[7]~input_o\ : std_logic;
SIGNAL \a_reg[8]~feeder_combout\ : std_logic;
SIGNAL \aa[8]~input_o\ : std_logic;
SIGNAL \a_reg[9]~feeder_combout\ : std_logic;
SIGNAL \aa[9]~input_o\ : std_logic;
SIGNAL \a_reg[10]~feeder_combout\ : std_logic;
SIGNAL \aa[10]~input_o\ : std_logic;
SIGNAL \a_reg[11]~feeder_combout\ : std_logic;
SIGNAL \aa[11]~input_o\ : std_logic;
SIGNAL \a_reg[12]~feeder_combout\ : std_logic;
SIGNAL \aa[12]~input_o\ : std_logic;
SIGNAL \a_reg[13]~feeder_combout\ : std_logic;
SIGNAL \aa[13]~input_o\ : std_logic;
SIGNAL \a_reg[14]~feeder_combout\ : std_logic;
SIGNAL \aa[14]~input_o\ : std_logic;
SIGNAL \a_reg[15]~feeder_combout\ : std_logic;
SIGNAL \aa[15]~input_o\ : std_logic;
SIGNAL \a_next~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \c_reg[0]~0_combout\ : std_logic;
SIGNAL \c_out~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \c_reg[1]~1_combout\ : std_logic;
SIGNAL \c_out~1_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \c_reg[2]~2_combout\ : std_logic;
SIGNAL \c_out~2_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \c_reg[3]~3_combout\ : std_logic;
SIGNAL \c_out~3_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \c_reg[4]~4_combout\ : std_logic;
SIGNAL \c_out~4_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \c_reg[5]~5_combout\ : std_logic;
SIGNAL \c_out~5_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \c_reg[6]~6_combout\ : std_logic;
SIGNAL \c_out~6_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \c_reg[7]~7_combout\ : std_logic;
SIGNAL \c_out~7_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \c_reg[8]~8_combout\ : std_logic;
SIGNAL \c_out~8_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \c_reg[9]~9_combout\ : std_logic;
SIGNAL \c_out~9_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \c_reg[10]~10_combout\ : std_logic;
SIGNAL \c_out~10_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \c_reg[11]~11_combout\ : std_logic;
SIGNAL \c_out~11_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \c_reg[12]~12_combout\ : std_logic;
SIGNAL \c_out~12_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \c_reg[13]~13_combout\ : std_logic;
SIGNAL \c_out~13_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \c_reg[14]~14_combout\ : std_logic;
SIGNAL \c_out~14_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \c_reg[15]~15_combout\ : std_logic;
SIGNAL \c_out~15_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \resto_out~0_combout\ : std_logic;
SIGNAL \resto_out~1_combout\ : std_logic;
SIGNAL \resto_out~2_combout\ : std_logic;
SIGNAL \resto_out~3_combout\ : std_logic;
SIGNAL \resto_out~4_combout\ : std_logic;
SIGNAL \resto_out~5_combout\ : std_logic;
SIGNAL \resto_out~6_combout\ : std_logic;
SIGNAL \resto_out~7_combout\ : std_logic;
SIGNAL \resto_out~8_combout\ : std_logic;
SIGNAL \resto_out~9_combout\ : std_logic;
SIGNAL \resto_out~10_combout\ : std_logic;
SIGNAL \resto_out~11_combout\ : std_logic;
SIGNAL \resto_out~12_combout\ : std_logic;
SIGNAL \resto_out~13_combout\ : std_logic;
SIGNAL \resto_out~14_combout\ : std_logic;
SIGNAL \resto_out~15_combout\ : std_logic;
SIGNAL \zero_div~0_combout\ : std_logic;
SIGNAL c_reg : std_logic_vector(16 DOWNTO 0);
SIGNAL n_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL a_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[0]~input_o\ : std_logic;
SIGNAL ALT_INV_a_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_a_reg[22]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector48~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.op~q\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL ALT_INV_n_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL ALT_INV_c_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_state_reg.done~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_aa <= aa;
ww_b <= b;
ready <= ww_ready;
done_tick <= ww_done_tick;
c_out <= ww_c_out;
resto_out <= ww_resto_out;
zero_div <= ww_zero_div;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_aa[8]~input_o\ <= NOT \aa[8]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_aa[10]~input_o\ <= NOT \aa[10]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_aa[9]~input_o\ <= NOT \aa[9]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_aa[11]~input_o\ <= NOT \aa[11]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_aa[12]~input_o\ <= NOT \aa[12]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_aa[13]~input_o\ <= NOT \aa[13]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_aa[14]~input_o\ <= NOT \aa[14]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_aa[4]~input_o\ <= NOT \aa[4]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_aa[6]~input_o\ <= NOT \aa[6]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_aa[7]~input_o\ <= NOT \aa[7]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_aa[5]~input_o\ <= NOT \aa[5]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_aa[1]~input_o\ <= NOT \aa[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_aa[2]~input_o\ <= NOT \aa[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_aa[3]~input_o\ <= NOT \aa[3]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_aa[15]~input_o\ <= NOT \aa[15]~input_o\;
\ALT_INV_aa[0]~input_o\ <= NOT \aa[0]~input_o\;
ALT_INV_a_reg(0) <= NOT a_reg(0);
\ALT_INV_a_reg[22]~0_combout\ <= NOT \a_reg[22]~0_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_Selector35~0_combout\ <= NOT \Selector35~0_combout\;
\ALT_INV_Selector36~0_combout\ <= NOT \Selector36~0_combout\;
\ALT_INV_Selector37~0_combout\ <= NOT \Selector37~0_combout\;
\ALT_INV_Selector38~0_combout\ <= NOT \Selector38~0_combout\;
\ALT_INV_Selector39~0_combout\ <= NOT \Selector39~0_combout\;
\ALT_INV_Selector40~0_combout\ <= NOT \Selector40~0_combout\;
\ALT_INV_Selector41~0_combout\ <= NOT \Selector41~0_combout\;
\ALT_INV_Selector42~0_combout\ <= NOT \Selector42~0_combout\;
\ALT_INV_Selector43~0_combout\ <= NOT \Selector43~0_combout\;
\ALT_INV_Selector44~1_combout\ <= NOT \Selector44~1_combout\;
\ALT_INV_Selector44~0_combout\ <= NOT \Selector44~0_combout\;
\ALT_INV_Selector45~0_combout\ <= NOT \Selector45~0_combout\;
\ALT_INV_Selector46~1_combout\ <= NOT \Selector46~1_combout\;
\ALT_INV_Selector46~0_combout\ <= NOT \Selector46~0_combout\;
\ALT_INV_Selector47~0_combout\ <= NOT \Selector47~0_combout\;
\ALT_INV_Selector48~1_combout\ <= NOT \Selector48~1_combout\;
\ALT_INV_Selector48~0_combout\ <= NOT \Selector48~0_combout\;
\ALT_INV_Selector49~0_combout\ <= NOT \Selector49~0_combout\;
\ALT_INV_Selector50~3_combout\ <= NOT \Selector50~3_combout\;
\ALT_INV_Selector50~2_combout\ <= NOT \Selector50~2_combout\;
\ALT_INV_Selector50~1_combout\ <= NOT \Selector50~1_combout\;
\ALT_INV_Selector50~0_combout\ <= NOT \Selector50~0_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
ALT_INV_a_reg(16) <= NOT a_reg(16);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_state_reg.op~q\ <= NOT \state_reg.op~q\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
ALT_INV_n_reg(0) <= NOT n_reg(0);
ALT_INV_n_reg(31) <= NOT n_reg(31);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan1~15_combout\ <= NOT \LessThan1~15_combout\;
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_c_reg(15) <= NOT c_reg(15);
ALT_INV_c_reg(14) <= NOT c_reg(14);
ALT_INV_c_reg(13) <= NOT c_reg(13);
ALT_INV_c_reg(12) <= NOT c_reg(12);
ALT_INV_c_reg(11) <= NOT c_reg(11);
ALT_INV_c_reg(10) <= NOT c_reg(10);
ALT_INV_c_reg(9) <= NOT c_reg(9);
ALT_INV_c_reg(8) <= NOT c_reg(8);
ALT_INV_c_reg(7) <= NOT c_reg(7);
ALT_INV_c_reg(6) <= NOT c_reg(6);
ALT_INV_c_reg(5) <= NOT c_reg(5);
ALT_INV_c_reg(4) <= NOT c_reg(4);
ALT_INV_c_reg(3) <= NOT c_reg(3);
ALT_INV_c_reg(2) <= NOT c_reg(2);
ALT_INV_c_reg(1) <= NOT c_reg(1);
ALT_INV_c_reg(0) <= NOT c_reg(0);
\ALT_INV_state_reg.idle~q\ <= NOT \state_reg.idle~q\;
ALT_INV_a_reg(1) <= NOT a_reg(1);
ALT_INV_a_reg(2) <= NOT a_reg(2);
ALT_INV_a_reg(3) <= NOT a_reg(3);
ALT_INV_a_reg(4) <= NOT a_reg(4);
ALT_INV_a_reg(5) <= NOT a_reg(5);
ALT_INV_a_reg(6) <= NOT a_reg(6);
ALT_INV_a_reg(7) <= NOT a_reg(7);
ALT_INV_a_reg(8) <= NOT a_reg(8);
ALT_INV_a_reg(9) <= NOT a_reg(9);
ALT_INV_a_reg(10) <= NOT a_reg(10);
ALT_INV_a_reg(11) <= NOT a_reg(11);
ALT_INV_a_reg(12) <= NOT a_reg(12);
ALT_INV_a_reg(13) <= NOT a_reg(13);
ALT_INV_a_reg(14) <= NOT a_reg(14);
ALT_INV_a_reg(15) <= NOT a_reg(15);
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
ALT_INV_n_reg(21) <= NOT n_reg(21);
ALT_INV_n_reg(22) <= NOT n_reg(22);
ALT_INV_n_reg(23) <= NOT n_reg(23);
ALT_INV_n_reg(24) <= NOT n_reg(24);
ALT_INV_n_reg(25) <= NOT n_reg(25);
ALT_INV_n_reg(26) <= NOT n_reg(26);
ALT_INV_n_reg(27) <= NOT n_reg(27);
ALT_INV_n_reg(28) <= NOT n_reg(28);
ALT_INV_n_reg(29) <= NOT n_reg(29);
ALT_INV_n_reg(30) <= NOT n_reg(30);
ALT_INV_n_reg(15) <= NOT n_reg(15);
ALT_INV_n_reg(16) <= NOT n_reg(16);
ALT_INV_n_reg(17) <= NOT n_reg(17);
ALT_INV_n_reg(18) <= NOT n_reg(18);
ALT_INV_n_reg(19) <= NOT n_reg(19);
ALT_INV_n_reg(20) <= NOT n_reg(20);
ALT_INV_n_reg(9) <= NOT n_reg(9);
ALT_INV_n_reg(10) <= NOT n_reg(10);
ALT_INV_n_reg(11) <= NOT n_reg(11);
ALT_INV_n_reg(12) <= NOT n_reg(12);
ALT_INV_n_reg(13) <= NOT n_reg(13);
ALT_INV_n_reg(14) <= NOT n_reg(14);
ALT_INV_n_reg(3) <= NOT n_reg(3);
ALT_INV_n_reg(4) <= NOT n_reg(4);
ALT_INV_n_reg(5) <= NOT n_reg(5);
ALT_INV_n_reg(6) <= NOT n_reg(6);
ALT_INV_n_reg(7) <= NOT n_reg(7);
ALT_INV_n_reg(8) <= NOT n_reg(8);
ALT_INV_n_reg(1) <= NOT n_reg(1);
ALT_INV_n_reg(2) <= NOT n_reg(2);
ALT_INV_a_reg(31) <= NOT a_reg(31);
ALT_INV_a_reg(30) <= NOT a_reg(30);
ALT_INV_a_reg(29) <= NOT a_reg(29);
ALT_INV_a_reg(28) <= NOT a_reg(28);
ALT_INV_a_reg(27) <= NOT a_reg(27);
ALT_INV_a_reg(26) <= NOT a_reg(26);
ALT_INV_a_reg(25) <= NOT a_reg(25);
ALT_INV_a_reg(24) <= NOT a_reg(24);
ALT_INV_a_reg(23) <= NOT a_reg(23);
ALT_INV_a_reg(22) <= NOT a_reg(22);
ALT_INV_a_reg(21) <= NOT a_reg(21);
ALT_INV_a_reg(20) <= NOT a_reg(20);
ALT_INV_a_reg(19) <= NOT a_reg(19);
ALT_INV_a_reg(18) <= NOT a_reg(18);
ALT_INV_a_reg(17) <= NOT a_reg(17);
\ALT_INV_state_reg.done~q\ <= NOT \state_reg.done~q\;

-- Location: IOOBUF_X40_Y0_N2
\ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state_reg.idle~q\,
	devoe => ww_devoe,
	o => ww_ready);

-- Location: IOOBUF_X26_Y0_N93
\done_tick~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_reg.done~q\,
	devoe => ww_devoe,
	o => ww_done_tick);

-- Location: IOOBUF_X32_Y0_N19
\c_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~0_combout\,
	devoe => ww_devoe,
	o => ww_c_out(0));

-- Location: IOOBUF_X32_Y0_N2
\c_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~1_combout\,
	devoe => ww_devoe,
	o => ww_c_out(1));

-- Location: IOOBUF_X56_Y0_N53
\c_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~2_combout\,
	devoe => ww_devoe,
	o => ww_c_out(2));

-- Location: IOOBUF_X30_Y0_N53
\c_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~3_combout\,
	devoe => ww_devoe,
	o => ww_c_out(3));

-- Location: IOOBUF_X54_Y0_N36
\c_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~4_combout\,
	devoe => ww_devoe,
	o => ww_c_out(4));

-- Location: IOOBUF_X36_Y0_N36
\c_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~5_combout\,
	devoe => ww_devoe,
	o => ww_c_out(5));

-- Location: IOOBUF_X54_Y0_N19
\c_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~6_combout\,
	devoe => ww_devoe,
	o => ww_c_out(6));

-- Location: IOOBUF_X56_Y0_N36
\c_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~7_combout\,
	devoe => ww_devoe,
	o => ww_c_out(7));

-- Location: IOOBUF_X54_Y0_N53
\c_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~8_combout\,
	devoe => ww_devoe,
	o => ww_c_out(8));

-- Location: IOOBUF_X36_Y0_N53
\c_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~9_combout\,
	devoe => ww_devoe,
	o => ww_c_out(9));

-- Location: IOOBUF_X32_Y0_N36
\c_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~10_combout\,
	devoe => ww_devoe,
	o => ww_c_out(10));

-- Location: IOOBUF_X36_Y0_N2
\c_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~11_combout\,
	devoe => ww_devoe,
	o => ww_c_out(11));

-- Location: IOOBUF_X58_Y0_N93
\c_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~12_combout\,
	devoe => ww_devoe,
	o => ww_c_out(12));

-- Location: IOOBUF_X50_Y0_N59
\c_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~13_combout\,
	devoe => ww_devoe,
	o => ww_c_out(13));

-- Location: IOOBUF_X2_Y0_N76
\c_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~14_combout\,
	devoe => ww_devoe,
	o => ww_c_out(14));

-- Location: IOOBUF_X60_Y0_N36
\c_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~15_combout\,
	devoe => ww_devoe,
	o => ww_c_out(15));

-- Location: IOOBUF_X38_Y0_N2
\resto_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~0_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(0));

-- Location: IOOBUF_X30_Y0_N2
\resto_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~1_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(1));

-- Location: IOOBUF_X30_Y0_N36
\resto_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~2_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(2));

-- Location: IOOBUF_X52_Y0_N53
\resto_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~3_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(3));

-- Location: IOOBUF_X50_Y0_N93
\resto_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~4_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(4));

-- Location: IOOBUF_X56_Y0_N2
\resto_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~5_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(5));

-- Location: IOOBUF_X40_Y0_N53
\resto_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~6_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(6));

-- Location: IOOBUF_X50_Y0_N42
\resto_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~7_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(7));

-- Location: IOOBUF_X6_Y0_N36
\resto_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~8_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(8));

-- Location: IOOBUF_X30_Y0_N19
\resto_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~9_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(9));

-- Location: IOOBUF_X4_Y0_N53
\resto_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~10_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(10));

-- Location: IOOBUF_X6_Y0_N19
\resto_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~11_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(11));

-- Location: IOOBUF_X6_Y0_N53
\resto_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~12_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(12));

-- Location: IOOBUF_X2_Y0_N93
\resto_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~13_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(13));

-- Location: IOOBUF_X2_Y0_N42
\resto_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~14_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(14));

-- Location: IOOBUF_X4_Y0_N2
\resto_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \resto_out~15_combout\,
	devoe => ww_devoe,
	o => ww_resto_out(15));

-- Location: IOOBUF_X52_Y0_N19
\zero_div~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \zero_div~0_combout\,
	devoe => ww_devoe,
	o => ww_zero_div);

-- Location: IOIBUF_X89_Y35_N44
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X58_Y0_N75
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X19_Y3_N12
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( (!\b[3]~input_o\ & (!\b[5]~input_o\ & (!\b[4]~input_o\ & !\b[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X8_Y0_N52
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LABCELL_X17_Y2_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\b[14]~input_o\ & ( (!\b[15]~input_o\ & (!\b[13]~input_o\ & !\b[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_b[12]~input_o\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X28_Y0_N18
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LABCELL_X19_Y2_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\b[10]~input_o\ & ( !\b[8]~input_o\ & ( (!\b[9]~input_o\ & (!\b[11]~input_o\ & (!\b[7]~input_o\ & !\b[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => \ALT_INV_b[11]~input_o\,
	datac => \ALT_INV_b[7]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	datae => \ALT_INV_b[10]~input_o\,
	dataf => \ALT_INV_b[8]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X18_Y3_N27
\a_reg[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[22]~0_combout\ = ( !\state_reg.idle~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state_reg.idle~q\,
	combout => \a_reg[22]~0_combout\);

-- Location: LABCELL_X18_Y4_N57
\a_reg[22]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[22]~1_combout\ = ( \state_reg.op~q\ & ( \Equal1~6_combout\ & ( \a_reg[22]~0_combout\ ) ) ) # ( !\state_reg.op~q\ & ( \Equal1~6_combout\ & ( \a_reg[22]~0_combout\ ) ) ) # ( \state_reg.op~q\ & ( !\Equal1~6_combout\ & ( (!\Equal0~2_combout\) # 
-- ((!\Equal0~0_combout\) # ((!\Equal0~1_combout\) # (\a_reg[22]~0_combout\))) ) ) ) # ( !\state_reg.op~q\ & ( !\Equal1~6_combout\ & ( \a_reg[22]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111101111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_a_reg[22]~0_combout\,
	datae => \ALT_INV_state_reg.op~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \a_reg[22]~1_combout\);

-- Location: IOIBUF_X26_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X18_Y4_N56
\state_reg.op\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \a_reg[22]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.op~q\);

-- Location: LABCELL_X17_Y4_N0
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( n_reg(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~14\ = CARRY(( n_reg(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n_reg(0),
	cin => GND,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X17_Y3_N51
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \Add1~13_sumout\ ) # ( !\Add1~13_sumout\ & ( !\state_reg.op~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X17_Y3_N53
\n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector34~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(0));

-- Location: LABCELL_X17_Y4_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( n_reg(1) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~2\ = CARRY(( n_reg(1) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n_reg(1),
	cin => \Add1~14\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X17_Y3_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X17_Y4_N5
\n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(1));

-- Location: LABCELL_X17_Y4_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( n_reg(2) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( n_reg(2) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(2),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X17_Y4_N8
\n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(2));

-- Location: LABCELL_X18_Y4_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !n_reg(2) & ( !n_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n_reg(1),
	dataf => ALT_INV_n_reg(2),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X17_Y4_N9
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( n_reg(3) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( n_reg(3) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(3),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X17_Y4_N11
\n_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(3));

-- Location: LABCELL_X17_Y4_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( n_reg(4) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~18\ = CARRY(( n_reg(4) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(4),
	cin => \Add1~10\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X17_Y4_N14
\n_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(4));

-- Location: LABCELL_X17_Y4_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( n_reg(5) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~34\ = CARRY(( n_reg(5) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(5),
	cin => \Add1~18\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X17_Y4_N17
\n_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(5));

-- Location: LABCELL_X17_Y4_N18
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( n_reg(6) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( n_reg(6) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(6),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X17_Y4_N20
\n_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(6));

-- Location: LABCELL_X17_Y4_N21
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( n_reg(7) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( n_reg(7) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(7),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X17_Y4_N23
\n_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(7));

-- Location: LABCELL_X17_Y4_N24
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( n_reg(8) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( n_reg(8) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(8),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X17_Y4_N26
\n_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(8));

-- Location: LABCELL_X18_Y4_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !n_reg(7) & ( !n_reg(6) & ( (!n_reg(5) & (!n_reg(8) & (!n_reg(4) & !n_reg(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(5),
	datab => ALT_INV_n_reg(8),
	datac => ALT_INV_n_reg(4),
	datad => ALT_INV_n_reg(3),
	datae => ALT_INV_n_reg(7),
	dataf => ALT_INV_n_reg(6),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X17_Y4_N27
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( n_reg(9) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~58\ = CARRY(( n_reg(9) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(9),
	cin => \Add1~22\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X17_Y4_N29
\n_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(9));

-- Location: LABCELL_X17_Y4_N30
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( n_reg(10) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( n_reg(10) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(10),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X17_Y4_N32
\n_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(10));

-- Location: LABCELL_X17_Y4_N33
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( n_reg(11) ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( n_reg(11) ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(11),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X17_Y4_N35
\n_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(11));

-- Location: LABCELL_X17_Y4_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( n_reg(12) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( n_reg(12) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(12),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X17_Y4_N38
\n_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(12));

-- Location: LABCELL_X17_Y4_N39
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( n_reg(13) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( n_reg(13) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(13),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X17_Y4_N41
\n_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(13));

-- Location: LABCELL_X17_Y4_N42
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( n_reg(14) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( n_reg(14) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(14),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X17_Y4_N44
\n_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(14));

-- Location: LABCELL_X17_Y4_N45
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( n_reg(15) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~82\ = CARRY(( n_reg(15) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(15),
	cin => \Add1~38\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X17_Y4_N47
\n_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(15));

-- Location: LABCELL_X17_Y4_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( n_reg(16) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( n_reg(16) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(16),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X17_Y4_N50
\n_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(16));

-- Location: LABCELL_X17_Y4_N51
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( n_reg(17) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( n_reg(17) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(17),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X17_Y4_N53
\n_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(17));

-- Location: LABCELL_X17_Y4_N54
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( n_reg(18) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( n_reg(18) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(18),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X17_Y4_N56
\n_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(18));

-- Location: LABCELL_X17_Y4_N57
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( n_reg(19) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( n_reg(19) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(19),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X17_Y4_N59
\n_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(19));

-- Location: LABCELL_X17_Y3_N0
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( n_reg(20) ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( n_reg(20) ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(20),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X17_Y3_N2
\n_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(20));

-- Location: LABCELL_X18_Y4_N18
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !n_reg(16) & ( !n_reg(20) & ( (!n_reg(15) & (!n_reg(17) & (!n_reg(18) & !n_reg(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(15),
	datab => ALT_INV_n_reg(17),
	datac => ALT_INV_n_reg(18),
	datad => ALT_INV_n_reg(19),
	datae => ALT_INV_n_reg(16),
	dataf => ALT_INV_n_reg(20),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X17_Y3_N3
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( n_reg(21) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~126\ = CARRY(( n_reg(21) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(21),
	cin => \Add1~62\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X17_Y3_N5
\n_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(21));

-- Location: LABCELL_X17_Y3_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( n_reg(22) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( n_reg(22) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(22),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X17_Y3_N8
\n_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(22));

-- Location: LABCELL_X17_Y3_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( n_reg(23) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( n_reg(23) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(23),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X17_Y3_N11
\n_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(23));

-- Location: LABCELL_X17_Y3_N12
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( n_reg(24) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( n_reg(24) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(24),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X17_Y3_N14
\n_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(24));

-- Location: LABCELL_X17_Y3_N15
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( n_reg(25) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( n_reg(25) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(25),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X17_Y3_N17
\n_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(25));

-- Location: LABCELL_X17_Y3_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( n_reg(26) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( n_reg(26) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(26),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X17_Y3_N20
\n_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(26));

-- Location: LABCELL_X17_Y3_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( n_reg(27) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( n_reg(27) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(27),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X17_Y3_N23
\n_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(27));

-- Location: LABCELL_X17_Y3_N24
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( n_reg(28) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( n_reg(28) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n_reg(28),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X17_Y3_N26
\n_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(28));

-- Location: LABCELL_X17_Y3_N27
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( n_reg(29) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( n_reg(29) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(29),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X17_Y3_N29
\n_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(29));

-- Location: LABCELL_X17_Y3_N30
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( n_reg(30) ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( n_reg(30) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n_reg(30),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X17_Y3_N32
\n_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(30));

-- Location: LABCELL_X17_Y3_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( n_reg(31) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(31),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\);

-- Location: LABCELL_X17_Y3_N48
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \Add1~85_sumout\ & ( \state_reg.op~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	dataf => \ALT_INV_Add1~85_sumout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X17_Y3_N50
\n_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(31));

-- Location: LABCELL_X17_Y3_N54
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !n_reg(27) & ( !n_reg(31) & ( (!n_reg(28) & (!n_reg(29) & (!n_reg(0) & !n_reg(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(28),
	datab => ALT_INV_n_reg(29),
	datac => ALT_INV_n_reg(0),
	datad => ALT_INV_n_reg(30),
	datae => ALT_INV_n_reg(27),
	dataf => ALT_INV_n_reg(31),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X18_Y4_N36
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !n_reg(9) & ( !n_reg(11) & ( (!n_reg(13) & (!n_reg(12) & (!n_reg(10) & !n_reg(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(13),
	datab => ALT_INV_n_reg(12),
	datac => ALT_INV_n_reg(10),
	datad => ALT_INV_n_reg(14),
	datae => ALT_INV_n_reg(9),
	dataf => ALT_INV_n_reg(11),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X17_Y3_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !n_reg(22) & ( !n_reg(25) & ( (!n_reg(21) & (!n_reg(24) & (!n_reg(26) & !n_reg(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n_reg(21),
	datab => ALT_INV_n_reg(24),
	datac => ALT_INV_n_reg(26),
	datad => ALT_INV_n_reg(23),
	datae => ALT_INV_n_reg(22),
	dataf => ALT_INV_n_reg(25),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X18_Y4_N12
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~2_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X18_Y4_N48
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \Equal1~6_combout\ ) # ( !\Equal1~6_combout\ & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \process_1~0_combout\);

-- Location: FF_X18_Y4_N50
\state_reg.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \process_1~0_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.done~q\);

-- Location: LABCELL_X18_Y3_N39
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\state_reg.done~q\ & ( (\state_reg.idle~q\) # (\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datad => \ALT_INV_state_reg.idle~q\,
	dataf => \ALT_INV_state_reg.done~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X18_Y3_N41
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LABCELL_X19_Y3_N33
\Selector50~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = ( !\state_reg.done~q\ & ( (\start~input_o\ & !\state_reg.op~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datad => \ALT_INV_state_reg.op~q\,
	dataf => \ALT_INV_state_reg.done~q\,
	combout => \Selector50~3_combout\);

-- Location: IOIBUF_X38_Y0_N52
\aa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(0),
	o => \aa[0]~input_o\);

-- Location: LABCELL_X19_Y3_N3
\a_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_next~1_combout\ = ( !\state_reg.op~q\ & ( \aa[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_aa[0]~input_o\,
	dataf => \ALT_INV_state_reg.op~q\,
	combout => \a_next~1_combout\);

-- Location: LABCELL_X19_Y3_N54
\Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = ( !\state_reg.op~q\ & ( (((\start~input_o\ & ((!\state_reg.done~q\))))) ) ) # ( \state_reg.op~q\ & ( (!\Equal1~6_combout\ & (!\state_reg.done~q\ & ((!\Equal0~2_combout\) # ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_state_reg.op~q\,
	dataf => \ALT_INV_state_reg.done~q\,
	datag => \ALT_INV_start~input_o\,
	combout => \Selector66~0_combout\);

-- Location: FF_X19_Y3_N5
\a_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_next~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(0));

-- Location: LABCELL_X19_Y4_N57
\a_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[1]~feeder_combout\ = a_reg(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(0),
	combout => \a_reg[1]~feeder_combout\);

-- Location: IOIBUF_X38_Y0_N18
\aa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(1),
	o => \aa[1]~input_o\);

-- Location: FF_X19_Y4_N59
\a_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[1]~feeder_combout\,
	asdata => \aa[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(1));

-- Location: LABCELL_X19_Y4_N54
\a_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[2]~feeder_combout\ = a_reg(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a_reg(1),
	combout => \a_reg[2]~feeder_combout\);

-- Location: IOIBUF_X54_Y0_N1
\aa[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(2),
	o => \aa[2]~input_o\);

-- Location: FF_X19_Y4_N56
\a_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[2]~feeder_combout\,
	asdata => \aa[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(2));

-- Location: LABCELL_X19_Y4_N45
\a_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[3]~feeder_combout\ = a_reg(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(2),
	combout => \a_reg[3]~feeder_combout\);

-- Location: IOIBUF_X58_Y0_N58
\aa[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(3),
	o => \aa[3]~input_o\);

-- Location: FF_X19_Y4_N47
\a_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[3]~feeder_combout\,
	asdata => \aa[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(3));

-- Location: LABCELL_X19_Y4_N42
\a_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[4]~feeder_combout\ = a_reg(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a_reg(3),
	combout => \a_reg[4]~feeder_combout\);

-- Location: IOIBUF_X52_Y0_N1
\aa[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(4),
	o => \aa[4]~input_o\);

-- Location: FF_X19_Y4_N44
\a_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[4]~feeder_combout\,
	asdata => \aa[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(4));

-- Location: LABCELL_X19_Y4_N27
\a_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[5]~feeder_combout\ = a_reg(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(4),
	combout => \a_reg[5]~feeder_combout\);

-- Location: IOIBUF_X40_Y0_N35
\aa[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(5),
	o => \aa[5]~input_o\);

-- Location: FF_X19_Y4_N28
\a_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[5]~feeder_combout\,
	asdata => \aa[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(5));

-- Location: LABCELL_X19_Y4_N36
\a_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[6]~feeder_combout\ = ( a_reg(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_a_reg(5),
	combout => \a_reg[6]~feeder_combout\);

-- Location: IOIBUF_X38_Y0_N35
\aa[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(6),
	o => \aa[6]~input_o\);

-- Location: FF_X19_Y4_N38
\a_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[6]~feeder_combout\,
	asdata => \aa[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(6));

-- Location: LABCELL_X18_Y4_N27
\a_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[7]~feeder_combout\ = a_reg(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(6),
	combout => \a_reg[7]~feeder_combout\);

-- Location: IOIBUF_X58_Y0_N41
\aa[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(7),
	o => \aa[7]~input_o\);

-- Location: FF_X18_Y4_N29
\a_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[7]~feeder_combout\,
	asdata => \aa[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(7));

-- Location: LABCELL_X18_Y4_N24
\a_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[8]~feeder_combout\ = a_reg(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(7),
	combout => \a_reg[8]~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N18
\aa[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(8),
	o => \aa[8]~input_o\);

-- Location: FF_X18_Y4_N26
\a_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[8]~feeder_combout\,
	asdata => \aa[8]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(8));

-- Location: LABCELL_X18_Y4_N33
\a_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[9]~feeder_combout\ = a_reg(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(8),
	combout => \a_reg[9]~feeder_combout\);

-- Location: IOIBUF_X34_Y0_N41
\aa[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(9),
	o => \aa[9]~input_o\);

-- Location: FF_X18_Y4_N35
\a_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[9]~feeder_combout\,
	asdata => \aa[9]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(9));

-- Location: LABCELL_X18_Y4_N30
\a_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[10]~feeder_combout\ = a_reg(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(9),
	combout => \a_reg[10]~feeder_combout\);

-- Location: IOIBUF_X40_Y0_N18
\aa[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(10),
	o => \aa[10]~input_o\);

-- Location: FF_X18_Y4_N32
\a_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[10]~feeder_combout\,
	asdata => \aa[10]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(10));

-- Location: LABCELL_X18_Y4_N3
\a_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[11]~feeder_combout\ = a_reg(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(10),
	combout => \a_reg[11]~feeder_combout\);

-- Location: IOIBUF_X34_Y0_N58
\aa[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(11),
	o => \aa[11]~input_o\);

-- Location: FF_X18_Y4_N5
\a_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[11]~feeder_combout\,
	asdata => \aa[11]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(11));

-- Location: LABCELL_X18_Y4_N0
\a_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[12]~feeder_combout\ = a_reg(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(11),
	combout => \a_reg[12]~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N18
\aa[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(12),
	o => \aa[12]~input_o\);

-- Location: FF_X18_Y4_N2
\a_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[12]~feeder_combout\,
	asdata => \aa[12]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(12));

-- Location: LABCELL_X18_Y4_N9
\a_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[13]~feeder_combout\ = a_reg(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(12),
	combout => \a_reg[13]~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N35
\aa[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(13),
	o => \aa[13]~input_o\);

-- Location: FF_X18_Y4_N11
\a_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[13]~feeder_combout\,
	asdata => \aa[13]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(13));

-- Location: LABCELL_X18_Y4_N6
\a_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[14]~feeder_combout\ = a_reg(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a_reg(13),
	combout => \a_reg[14]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N35
\aa[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(14),
	o => \aa[14]~input_o\);

-- Location: FF_X18_Y4_N7
\a_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[14]~feeder_combout\,
	asdata => \aa[14]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(14));

-- Location: LABCELL_X19_Y3_N48
\a_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_reg[15]~feeder_combout\ = ( a_reg(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_a_reg(14),
	combout => \a_reg[15]~feeder_combout\);

-- Location: IOIBUF_X8_Y0_N35
\aa[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(15),
	o => \aa[15]~input_o\);

-- Location: FF_X19_Y3_N49
\a_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_reg[15]~feeder_combout\,
	asdata => \aa[15]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_state_reg.op~q\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(15));

-- Location: LABCELL_X19_Y3_N0
\a_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_next~0_combout\ = ( a_reg(15) & ( \state_reg.op~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.op~q\,
	dataf => ALT_INV_a_reg(15),
	combout => \a_next~0_combout\);

-- Location: FF_X19_Y3_N2
\a_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a_next~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(16));

-- Location: LABCELL_X18_Y2_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\b[0]~input_o\ $ (!a_reg(16)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\b[0]~input_o\ $ (!a_reg(16)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!\b[0]~input_o\) # (a_reg(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[0]~input_o\,
	datad => ALT_INV_a_reg(16),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X19_Y3_N51
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( a_reg(18) & ( (\b[2]~input_o\ & (!\b[3]~input_o\ $ (a_reg(19)))) ) ) # ( !a_reg(18) & ( (!\b[2]~input_o\ & (!\b[3]~input_o\ $ (a_reg(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => ALT_INV_a_reg(19),
	dataf => ALT_INV_a_reg(18),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X19_Y3_N45
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( a_reg(18) & ( (\b[3]~input_o\ & !a_reg(19)) ) ) # ( !a_reg(18) & ( (!\b[3]~input_o\ & (!a_reg(19) & \b[2]~input_o\)) # (\b[3]~input_o\ & ((!a_reg(19)) # (\b[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datac => ALT_INV_a_reg(19),
	datad => \ALT_INV_b[2]~input_o\,
	dataf => ALT_INV_a_reg(18),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X19_Y3_N36
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( a_reg(17) & ( (\b[1]~input_o\ & (\b[0]~input_o\ & !a_reg(16))) ) ) # ( !a_reg(17) & ( ((\b[0]~input_o\ & !a_reg(16))) # (\b[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => ALT_INV_a_reg(16),
	dataf => ALT_INV_a_reg(17),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X19_Y2_N12
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( a_reg(21) & ( a_reg(22) & ( (\b[5]~input_o\ & (\b[6]~input_o\ & (!\b[7]~input_o\ $ (a_reg(23))))) ) ) ) # ( !a_reg(21) & ( a_reg(22) & ( (!\b[5]~input_o\ & (\b[6]~input_o\ & (!\b[7]~input_o\ $ (a_reg(23))))) ) ) ) # ( a_reg(21) & 
-- ( !a_reg(22) & ( (\b[5]~input_o\ & (!\b[6]~input_o\ & (!\b[7]~input_o\ $ (a_reg(23))))) ) ) ) # ( !a_reg(21) & ( !a_reg(22) & ( (!\b[5]~input_o\ & (!\b[6]~input_o\ & (!\b[7]~input_o\ $ (a_reg(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \ALT_INV_b[7]~input_o\,
	datac => ALT_INV_a_reg(23),
	datad => \ALT_INV_b[6]~input_o\,
	datae => ALT_INV_a_reg(21),
	dataf => ALT_INV_a_reg(22),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X19_Y3_N6
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~2_combout\ & ( (!\LessThan0~4_combout\ & (\LessThan0~5_combout\ & (!a_reg(20) $ (\b[4]~input_o\)))) # (\LessThan0~4_combout\ & (!a_reg(20) $ ((\b[4]~input_o\)))) ) ) ) # ( 
-- !\LessThan0~3_combout\ & ( \LessThan0~2_combout\ & ( (\LessThan0~5_combout\ & (!a_reg(20) $ (\b[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000110100000111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => ALT_INV_a_reg(20),
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X19_Y2_N3
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( a_reg(26) & ( !\b[10]~input_o\ ) ) # ( !a_reg(26) & ( \b[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[10]~input_o\,
	dataf => ALT_INV_a_reg(26),
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X18_Y2_N48
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \b[8]~input_o\ & ( !a_reg(24) ) ) # ( !\b[8]~input_o\ & ( a_reg(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(24),
	dataf => \ALT_INV_b[8]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X19_Y2_N0
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( a_reg(27) & ( !\b[11]~input_o\ ) ) # ( !a_reg(27) & ( \b[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[11]~input_o\,
	dataf => ALT_INV_a_reg(27),
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X19_Y2_N30
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \b[14]~input_o\ & ( a_reg(29) & ( (\b[13]~input_o\ & (a_reg(30) & (!a_reg(28) $ (\b[12]~input_o\)))) ) ) ) # ( !\b[14]~input_o\ & ( a_reg(29) & ( (\b[13]~input_o\ & (!a_reg(30) & (!a_reg(28) $ (\b[12]~input_o\)))) ) ) ) # ( 
-- \b[14]~input_o\ & ( !a_reg(29) & ( (!\b[13]~input_o\ & (a_reg(30) & (!a_reg(28) $ (\b[12]~input_o\)))) ) ) ) # ( !\b[14]~input_o\ & ( !a_reg(29) & ( (!\b[13]~input_o\ & (!a_reg(30) & (!a_reg(28) $ (\b[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(28),
	datab => \ALT_INV_b[13]~input_o\,
	datac => ALT_INV_a_reg(30),
	datad => \ALT_INV_b[12]~input_o\,
	datae => \ALT_INV_b[14]~input_o\,
	dataf => ALT_INV_a_reg(29),
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X19_Y2_N54
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( !\LessThan0~10_combout\ & ( \LessThan0~9_combout\ & ( (!\LessThan0~11_combout\ & (!\LessThan0~12_combout\ & (!\b[9]~input_o\ $ (a_reg(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => ALT_INV_a_reg(25),
	datac => \ALT_INV_LessThan0~11_combout\,
	datad => \ALT_INV_LessThan0~12_combout\,
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_LessThan0~9_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X19_Y2_N51
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( !a_reg(24) & ( \b[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[8]~input_o\,
	dataf => ALT_INV_a_reg(24),
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X19_Y2_N18
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( !\LessThan0~11_combout\ & ( \LessThan0~16_combout\ & ( (!\LessThan0~10_combout\ & (\LessThan0~9_combout\ & ((!a_reg(25)) # (\b[9]~input_o\)))) ) ) ) # ( !\LessThan0~11_combout\ & ( !\LessThan0~16_combout\ & ( (\b[9]~input_o\ & 
-- (!a_reg(25) & (!\LessThan0~10_combout\ & \LessThan0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => ALT_INV_a_reg(25),
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => \ALT_INV_LessThan0~11_combout\,
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X19_Y2_N24
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( \b[14]~input_o\ & ( a_reg(29) & ( (!a_reg(30)) # ((!a_reg(28) & (\b[13]~input_o\ & \b[12]~input_o\))) ) ) ) # ( !\b[14]~input_o\ & ( a_reg(29) & ( (!a_reg(28) & (\b[13]~input_o\ & (!a_reg(30) & \b[12]~input_o\))) ) ) ) # ( 
-- \b[14]~input_o\ & ( !a_reg(29) & ( ((!a_reg(30)) # ((!a_reg(28) & \b[12]~input_o\))) # (\b[13]~input_o\) ) ) ) # ( !\b[14]~input_o\ & ( !a_reg(29) & ( (!a_reg(30) & (((!a_reg(28) & \b[12]~input_o\)) # (\b[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110000111100111111101100000000001000001111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(28),
	datab => \ALT_INV_b[13]~input_o\,
	datac => ALT_INV_a_reg(30),
	datad => \ALT_INV_b[12]~input_o\,
	datae => \ALT_INV_b[14]~input_o\,
	dataf => ALT_INV_a_reg(29),
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X19_Y2_N42
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \b[10]~input_o\ & ( !\LessThan0~14_combout\ & ( (!\LessThan0~9_combout\) # ((!a_reg(27) & (!\b[11]~input_o\ & a_reg(26))) # (a_reg(27) & ((!\b[11]~input_o\) # (a_reg(26))))) ) ) ) # ( !\b[10]~input_o\ & ( !\LessThan0~14_combout\ 
-- & ( ((!\b[11]~input_o\) # (!\LessThan0~9_combout\)) # (a_reg(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101111111110100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(27),
	datab => \ALT_INV_b[11]~input_o\,
	datac => ALT_INV_a_reg(26),
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => \ALT_INV_b[10]~input_o\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: LABCELL_X19_Y2_N48
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \LessThan0~15_combout\ & ( !\LessThan0~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~17_combout\,
	dataf => \ALT_INV_LessThan0~15_combout\,
	combout => \LessThan0~19_combout\);

-- Location: LABCELL_X17_Y2_N12
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( a_reg(22) & ( a_reg(21) & ( (\b[7]~input_o\ & !a_reg(23)) ) ) ) # ( !a_reg(22) & ( a_reg(21) & ( (!\b[6]~input_o\ & (\b[7]~input_o\ & !a_reg(23))) # (\b[6]~input_o\ & ((!a_reg(23)) # (\b[7]~input_o\))) ) ) ) # ( a_reg(22) & ( 
-- !a_reg(21) & ( (!\b[7]~input_o\ & (\b[6]~input_o\ & (\b[5]~input_o\ & !a_reg(23)))) # (\b[7]~input_o\ & ((!a_reg(23)) # ((\b[6]~input_o\ & \b[5]~input_o\)))) ) ) ) # ( !a_reg(22) & ( !a_reg(21) & ( (!\b[7]~input_o\ & (!a_reg(23) & ((\b[5]~input_o\) # 
-- (\b[6]~input_o\)))) # (\b[7]~input_o\ & (((!a_reg(23)) # (\b[5]~input_o\)) # (\b[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000101011111000001010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_b[7]~input_o\,
	datad => ALT_INV_a_reg(23),
	datae => ALT_INV_a_reg(22),
	dataf => ALT_INV_a_reg(21),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X17_Y2_N18
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( a_reg(20) & ( \LessThan0~2_combout\ & ( !\LessThan0~7_combout\ ) ) ) # ( !a_reg(20) & ( \LessThan0~2_combout\ & ( (!\b[4]~input_o\ & !\LessThan0~7_combout\) ) ) ) # ( a_reg(20) & ( !\LessThan0~2_combout\ & ( 
-- !\LessThan0~7_combout\ ) ) ) # ( !a_reg(20) & ( !\LessThan0~2_combout\ & ( !\LessThan0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_LessThan0~7_combout\,
	datae => ALT_INV_a_reg(20),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X18_Y2_N54
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \LessThan0~19_combout\ & ( \LessThan0~8_combout\ & ( (!\b[15]~input_o\ & (!a_reg(31) & (\LessThan0~6_combout\ & \LessThan0~13_combout\))) # (\b[15]~input_o\ & ((!a_reg(31)) # ((\LessThan0~6_combout\ & \LessThan0~13_combout\)))) 
-- ) ) ) # ( !\LessThan0~19_combout\ & ( \LessThan0~8_combout\ & ( (!a_reg(31)) # (\b[15]~input_o\) ) ) ) # ( \LessThan0~19_combout\ & ( !\LessThan0~8_combout\ & ( (!\b[15]~input_o\ & (!a_reg(31) & \LessThan0~13_combout\)) # (\b[15]~input_o\ & ((!a_reg(31)) 
-- # (\LessThan0~13_combout\))) ) ) ) # ( !\LessThan0~19_combout\ & ( !\LessThan0~8_combout\ & ( (!a_reg(31)) # (\b[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101010001001101110111011101110111010100010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => ALT_INV_a_reg(31),
	datac => \ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_LessThan0~13_combout\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~20_combout\);

-- Location: FF_X18_Y2_N2
\a_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	asdata => a_reg(16),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(17));

-- Location: LABCELL_X18_Y2_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\b[1]~input_o\ $ (a_reg(17)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\b[1]~input_o\ $ (a_reg(17)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((!\b[1]~input_o\ & a_reg(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[1]~input_o\,
	datad => ALT_INV_a_reg(17),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: FF_X18_Y2_N5
\a_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	asdata => a_reg(17),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(18));

-- Location: LABCELL_X18_Y2_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\b[2]~input_o\ $ (a_reg(18)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\b[2]~input_o\ $ (a_reg(18)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!\b[2]~input_o\ & a_reg(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[2]~input_o\,
	datad => ALT_INV_a_reg(18),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: FF_X18_Y2_N8
\a_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	asdata => a_reg(18),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(19));

-- Location: LABCELL_X18_Y2_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\b[3]~input_o\ $ (a_reg(19)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\b[3]~input_o\ $ (a_reg(19)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\b[3]~input_o\ & a_reg(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datac => ALT_INV_a_reg(19),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: FF_X18_Y2_N11
\a_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	asdata => a_reg(19),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(20));

-- Location: LABCELL_X18_Y2_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\b[4]~input_o\ $ (a_reg(20)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\b[4]~input_o\ $ (a_reg(20)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!\b[4]~input_o\ & a_reg(20)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[4]~input_o\,
	datad => ALT_INV_a_reg(20),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: FF_X18_Y2_N14
\a_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	asdata => a_reg(20),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(21));

-- Location: LABCELL_X18_Y2_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !a_reg(21) $ (\b[5]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !a_reg(21) $ (\b[5]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((a_reg(21) & !\b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a_reg(21),
	datad => \ALT_INV_b[5]~input_o\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: FF_X18_Y2_N17
\a_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	asdata => a_reg(21),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(22));

-- Location: LABCELL_X18_Y2_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !a_reg(22) $ (\b[6]~input_o\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !a_reg(22) $ (\b[6]~input_o\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((a_reg(22) & !\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a_reg(22),
	datac => \ALT_INV_b[6]~input_o\,
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: FF_X18_Y2_N20
\a_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	asdata => a_reg(22),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(23));

-- Location: LABCELL_X18_Y2_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\b[7]~input_o\ $ (a_reg(23)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\b[7]~input_o\ $ (a_reg(23)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((!\b[7]~input_o\ & a_reg(23)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[7]~input_o\,
	datad => ALT_INV_a_reg(23),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: FF_X18_Y2_N23
\a_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	asdata => a_reg(23),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(24));

-- Location: LABCELL_X18_Y2_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\b[8]~input_o\ $ (a_reg(24)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\b[8]~input_o\ $ (a_reg(24)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((!\b[8]~input_o\ & a_reg(24)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[8]~input_o\,
	datad => ALT_INV_a_reg(24),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: FF_X18_Y2_N26
\a_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	asdata => a_reg(24),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(25));

-- Location: LABCELL_X18_Y2_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !a_reg(25) $ (\b[9]~input_o\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !a_reg(25) $ (\b[9]~input_o\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((a_reg(25) & !\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(25),
	datac => \ALT_INV_b[9]~input_o\,
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: FF_X18_Y2_N29
\a_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	asdata => a_reg(25),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(26));

-- Location: LABCELL_X18_Y2_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\b[10]~input_o\ $ (a_reg(26)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\b[10]~input_o\ $ (a_reg(26)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((!\b[10]~input_o\ & a_reg(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[10]~input_o\,
	datad => ALT_INV_a_reg(26),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: FF_X18_Y2_N32
\a_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	asdata => a_reg(26),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(27));

-- Location: LABCELL_X18_Y2_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\b[11]~input_o\ $ (a_reg(27)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\b[11]~input_o\ $ (a_reg(27)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE((!\b[11]~input_o\ & a_reg(27)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[11]~input_o\,
	datad => ALT_INV_a_reg(27),
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: FF_X18_Y2_N35
\a_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	asdata => a_reg(27),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(28));

-- Location: LABCELL_X18_Y2_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\b[12]~input_o\ $ (a_reg(28)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\b[12]~input_o\ $ (a_reg(28)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE((!\b[12]~input_o\ & a_reg(28)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[12]~input_o\,
	datac => ALT_INV_a_reg(28),
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: FF_X18_Y2_N38
\a_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	asdata => a_reg(28),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(29));

-- Location: LABCELL_X18_Y2_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\b[13]~input_o\ $ (a_reg(29)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\b[13]~input_o\ $ (a_reg(29)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~55\ = SHARE((!\b[13]~input_o\ & a_reg(29)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[13]~input_o\,
	datad => ALT_INV_a_reg(29),
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\,
	shareout => \Add0~55\);

-- Location: FF_X18_Y2_N41
\a_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	asdata => a_reg(29),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(30));

-- Location: LABCELL_X18_Y2_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !a_reg(30) $ (\b[14]~input_o\) ) + ( \Add0~55\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a_reg(30),
	datac => \ALT_INV_b[14]~input_o\,
	cin => \Add0~54\,
	sharein => \Add0~55\,
	sumout => \Add0~57_sumout\);

-- Location: FF_X18_Y2_N44
\a_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	asdata => a_reg(30),
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state_reg.op~q\,
	sload => \LessThan0~20_combout\,
	ena => \a_reg[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(31));

-- Location: LABCELL_X18_Y2_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !a_reg(31) & ( \b[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	dataf => ALT_INV_a_reg(31),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X18_Y3_N48
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !\b[15]~input_o\ & ( a_reg(31) ) ) # ( \b[15]~input_o\ & ( !a_reg(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_b[15]~input_o\,
	dataf => ALT_INV_a_reg(31),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X18_Y3_N6
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( \LessThan0~6_combout\ & ( \LessThan0~8_combout\ & ( (!\LessThan0~1_combout\ & (((!\LessThan0~15_combout\) # (\LessThan0~17_combout\)) # (\LessThan0~13_combout\))) ) ) ) # ( !\LessThan0~6_combout\ & ( \LessThan0~8_combout\ & ( 
-- (!\LessThan0~1_combout\ & ((!\LessThan0~15_combout\) # (\LessThan0~17_combout\))) ) ) ) # ( \LessThan0~6_combout\ & ( !\LessThan0~8_combout\ & ( (!\LessThan0~1_combout\ & (((!\LessThan0~15_combout\) # (\LessThan0~17_combout\)) # (\LessThan0~13_combout\))) 
-- ) ) ) # ( !\LessThan0~6_combout\ & ( !\LessThan0~8_combout\ & ( (!\LessThan0~1_combout\ & (((!\LessThan0~15_combout\) # (\LessThan0~17_combout\)) # (\LessThan0~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010101010100010101010101010000010101010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_LessThan0~17_combout\,
	datad => \ALT_INV_LessThan0~15_combout\,
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X19_Y4_N39
\Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = ( !\Add1~5_sumout\ & ( !\Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Selector50~0_combout\);

-- Location: LABCELL_X18_Y5_N42
\Selector50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = ( !\Add1~17_sumout\ & ( !\state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \Selector50~1_combout\);

-- Location: LABCELL_X19_Y4_N30
\Selector50~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = ( \Selector50~0_combout\ & ( \Selector50~1_combout\ & ( (!\Add1~9_sumout\ & (!\Add1~13_sumout\ & (\state_reg.op~q\ & !\process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_Selector50~0_combout\,
	dataf => \ALT_INV_Selector50~1_combout\,
	combout => \Selector50~2_combout\);

-- Location: LABCELL_X19_Y4_N0
\c_reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[0]~0_combout\ = ( c_reg(0) & ( \Selector50~2_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(0) & ( \Selector50~2_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(0) & ( !\Selector50~2_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(0) & ( !\Selector50~2_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(0),
	dataf => \ALT_INV_Selector50~2_combout\,
	combout => \c_reg[0]~0_combout\);

-- Location: FF_X19_Y4_N1
\c_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(0));

-- Location: MLABCELL_X25_Y4_N15
\c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~0_combout\ = ( c_reg(0) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	datae => ALT_INV_c_reg(0),
	combout => \c_out~0_combout\);

-- Location: LABCELL_X19_Y4_N51
\Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = ( \Add1~13_sumout\ & ( !\Add1~9_sumout\ & ( (\state_reg.op~q\ & (!\process_1~0_combout\ & (\Selector50~0_combout\ & \Selector50~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Selector50~0_combout\,
	datad => \ALT_INV_Selector50~1_combout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Selector49~0_combout\);

-- Location: LABCELL_X19_Y4_N12
\c_reg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[1]~1_combout\ = ( c_reg(1) & ( \Selector49~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(1) & ( \Selector49~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(1) & ( !\Selector49~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(1) & ( !\Selector49~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(1),
	dataf => \ALT_INV_Selector49~0_combout\,
	combout => \c_reg[1]~1_combout\);

-- Location: FF_X19_Y4_N13
\c_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(1));

-- Location: MLABCELL_X21_Y4_N51
\c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~1_combout\ = ( c_reg(1) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(1),
	combout => \c_out~1_combout\);

-- Location: LABCELL_X19_Y4_N24
\Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = ( !\Add1~5_sumout\ & ( \Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Selector48~0_combout\);

-- Location: LABCELL_X19_Y4_N33
\Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = ( \Selector50~1_combout\ & ( \Selector48~0_combout\ & ( (!\Add1~9_sumout\ & (!\Add1~13_sumout\ & (!\process_1~0_combout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector48~0_combout\,
	combout => \Selector48~1_combout\);

-- Location: LABCELL_X19_Y4_N21
\c_reg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[2]~2_combout\ = ( c_reg(2) & ( \Selector48~1_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\)) ) ) ) # ( !c_reg(2) & ( \Selector48~1_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & 
-- !\LessThan0~0_combout\)) ) ) ) # ( c_reg(2) & ( !\Selector48~1_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) ) # ( !c_reg(2) & ( !\Selector48~1_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_c_reg(2),
	dataf => \ALT_INV_Selector48~1_combout\,
	combout => \c_reg[2]~2_combout\);

-- Location: FF_X19_Y4_N22
\c_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(2));

-- Location: MLABCELL_X25_Y4_N54
\c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~2_combout\ = ( c_reg(2) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(2),
	combout => \c_out~2_combout\);

-- Location: LABCELL_X19_Y5_N33
\Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = ( \Selector50~1_combout\ & ( \Selector48~0_combout\ & ( (\Add1~13_sumout\ & (!\process_1~0_combout\ & (!\Add1~9_sumout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector48~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: LABCELL_X19_Y5_N39
\c_reg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[3]~3_combout\ = ( c_reg(3) & ( \Selector47~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\)) ) ) ) # ( !c_reg(3) & ( \Selector47~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & 
-- !\LessThan0~0_combout\)) ) ) ) # ( c_reg(3) & ( !\Selector47~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) ) # ( !c_reg(3) & ( !\Selector47~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_c_reg(3),
	dataf => \ALT_INV_Selector47~0_combout\,
	combout => \c_reg[3]~3_combout\);

-- Location: FF_X19_Y5_N40
\c_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[3]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(3));

-- Location: LABCELL_X24_Y4_N27
\c_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~3_combout\ = ( c_reg(3) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(3),
	combout => \c_out~3_combout\);

-- Location: LABCELL_X18_Y5_N57
\Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ( \Add1~5_sumout\ & ( !\Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Selector46~0_combout\);

-- Location: LABCELL_X18_Y5_N6
\Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = ( !\Add1~13_sumout\ & ( \Selector50~1_combout\ & ( (\state_reg.op~q\ & (!\process_1~0_combout\ & (!\Add1~9_sumout\ & \Selector46~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Selector46~0_combout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Selector50~1_combout\,
	combout => \Selector46~1_combout\);

-- Location: LABCELL_X18_Y5_N3
\c_reg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[4]~4_combout\ = ( c_reg(4) & ( \Selector46~1_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\)) ) ) ) # ( !c_reg(4) & ( \Selector46~1_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & 
-- \state_reg.op~q\)) ) ) ) # ( c_reg(4) & ( !\Selector46~1_combout\ & ( (!\Selector50~3_combout\) # ((!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\))) ) ) ) # ( !c_reg(4) & ( !\Selector46~1_combout\ & ( (!\LessThan0~18_combout\ & 
-- (!\LessThan0~0_combout\ & (\Selector50~3_combout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111100001111100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_Selector50~3_combout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => ALT_INV_c_reg(4),
	dataf => \ALT_INV_Selector46~1_combout\,
	combout => \c_reg[4]~4_combout\);

-- Location: FF_X18_Y5_N4
\c_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[4]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(4));

-- Location: LABCELL_X19_Y5_N42
\c_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~4_combout\ = ( c_reg(4) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(4),
	combout => \c_out~4_combout\);

-- Location: LABCELL_X18_Y5_N48
\Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ( !\Add1~9_sumout\ & ( \Add1~13_sumout\ & ( (\state_reg.op~q\ & (\Selector46~0_combout\ & (!\process_1~0_combout\ & \Selector50~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector46~0_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_Selector50~1_combout\,
	datae => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Selector45~0_combout\);

-- Location: LABCELL_X18_Y5_N24
\c_reg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[5]~5_combout\ = ( c_reg(5) & ( \Selector45~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\)) ) ) ) # ( !c_reg(5) & ( \Selector45~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & 
-- \state_reg.op~q\)) ) ) ) # ( c_reg(5) & ( !\Selector45~0_combout\ & ( (!\Selector50~3_combout\) # ((!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\))) ) ) ) # ( !c_reg(5) & ( !\Selector45~0_combout\ & ( (!\LessThan0~18_combout\ & 
-- (!\LessThan0~0_combout\ & (\state_reg.op~q\ & \Selector50~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_Selector50~3_combout\,
	datae => ALT_INV_c_reg(5),
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \c_reg[5]~5_combout\);

-- Location: FF_X18_Y5_N25
\c_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[5]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(5));

-- Location: MLABCELL_X25_Y4_N39
\c_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~5_combout\ = ( c_reg(5) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(5),
	combout => \c_out~5_combout\);

-- Location: LABCELL_X18_Y5_N36
\Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = ( \Add1~5_sumout\ & ( \Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Selector44~0_combout\);

-- Location: LABCELL_X19_Y5_N48
\Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = ( !\Add1~13_sumout\ & ( \Selector44~0_combout\ & ( (\state_reg.op~q\ & (\Selector50~1_combout\ & (!\process_1~0_combout\ & !\Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Selector44~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: LABCELL_X19_Y5_N24
\c_reg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[6]~6_combout\ = ( c_reg(6) & ( \Selector44~1_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(6) & ( \Selector44~1_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(6) & ( !\Selector44~1_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(6) & ( !\Selector44~1_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(6),
	dataf => \ALT_INV_Selector44~1_combout\,
	combout => \c_reg[6]~6_combout\);

-- Location: FF_X19_Y5_N25
\c_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[6]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(6));

-- Location: LABCELL_X19_Y5_N54
\c_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~6_combout\ = ( c_reg(6) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(6),
	combout => \c_out~6_combout\);

-- Location: LABCELL_X19_Y5_N30
\Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ( \Selector50~1_combout\ & ( \Selector44~0_combout\ & ( (\Add1~13_sumout\ & (!\process_1~0_combout\ & (\state_reg.op~q\ & !\Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector44~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LABCELL_X19_Y5_N27
\c_reg[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[7]~7_combout\ = ( c_reg(7) & ( \Selector43~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\)) ) ) ) # ( !c_reg(7) & ( \Selector43~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & 
-- !\LessThan0~0_combout\)) ) ) ) # ( c_reg(7) & ( !\Selector43~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) ) # ( !c_reg(7) & ( !\Selector43~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_c_reg(7),
	dataf => \ALT_INV_Selector43~0_combout\,
	combout => \c_reg[7]~7_combout\);

-- Location: FF_X19_Y5_N29
\c_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[7]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(7));

-- Location: LABCELL_X19_Y5_N3
\c_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~7_combout\ = ( c_reg(7) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.done~q\,
	datae => ALT_INV_c_reg(7),
	combout => \c_out~7_combout\);

-- Location: LABCELL_X19_Y4_N48
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \Add1~9_sumout\ & ( !\Add1~13_sumout\ & ( (\state_reg.op~q\ & (!\process_1~0_combout\ & (\Selector50~1_combout\ & \Selector50~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Selector50~1_combout\,
	datad => \ALT_INV_Selector50~0_combout\,
	datae => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Selector42~0_combout\);

-- Location: LABCELL_X19_Y4_N3
\c_reg[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[8]~8_combout\ = ( c_reg(8) & ( \Selector42~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\)) ) ) ) # ( !c_reg(8) & ( \Selector42~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & 
-- !\LessThan0~0_combout\)) ) ) ) # ( c_reg(8) & ( !\Selector42~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) ) # ( !c_reg(8) & ( !\Selector42~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_c_reg(8),
	dataf => \ALT_INV_Selector42~0_combout\,
	combout => \c_reg[8]~8_combout\);

-- Location: FF_X19_Y4_N4
\c_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[8]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(8));

-- Location: LABCELL_X23_Y2_N51
\c_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~8_combout\ = ( \state_reg.done~q\ & ( c_reg(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(8),
	combout => \c_out~8_combout\);

-- Location: LABCELL_X19_Y4_N6
\Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ( \Selector50~0_combout\ & ( \Selector50~1_combout\ & ( (\Add1~9_sumout\ & (!\process_1~0_combout\ & (\state_reg.op~q\ & \Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_Add1~13_sumout\,
	datae => \ALT_INV_Selector50~0_combout\,
	dataf => \ALT_INV_Selector50~1_combout\,
	combout => \Selector41~0_combout\);

-- Location: LABCELL_X19_Y4_N15
\c_reg[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[9]~9_combout\ = ( c_reg(9) & ( \Selector41~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\)) ) ) ) # ( !c_reg(9) & ( \Selector41~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~18_combout\ & 
-- !\LessThan0~0_combout\)) ) ) ) # ( c_reg(9) & ( !\Selector41~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) ) # ( !c_reg(9) & ( !\Selector41~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~18_combout\ & !\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_c_reg(9),
	dataf => \ALT_INV_Selector41~0_combout\,
	combout => \c_reg[9]~9_combout\);

-- Location: FF_X19_Y4_N16
\c_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[9]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(9));

-- Location: MLABCELL_X25_Y4_N21
\c_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~9_combout\ = ( c_reg(9) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(9),
	combout => \c_out~9_combout\);

-- Location: LABCELL_X19_Y5_N6
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( \Selector50~1_combout\ & ( \Selector48~0_combout\ & ( (!\Add1~13_sumout\ & (!\process_1~0_combout\ & (\state_reg.op~q\ & \Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector48~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: LABCELL_X19_Y5_N36
\c_reg[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[10]~10_combout\ = ( c_reg(10) & ( \Selector40~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(10) & ( \Selector40~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(10) & ( !\Selector40~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(10) & ( !\Selector40~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(10),
	dataf => \ALT_INV_Selector40~0_combout\,
	combout => \c_reg[10]~10_combout\);

-- Location: FF_X19_Y5_N38
\c_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[10]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(10));

-- Location: MLABCELL_X25_Y4_N24
\c_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~10_combout\ = ( c_reg(10) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(10),
	combout => \c_out~10_combout\);

-- Location: LABCELL_X19_Y4_N9
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \Selector50~1_combout\ & ( \Selector48~0_combout\ & ( (\Add1~9_sumout\ & (!\process_1~0_combout\ & (\Add1~13_sumout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector48~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: LABCELL_X19_Y4_N18
\c_reg[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[11]~11_combout\ = ( c_reg(11) & ( \Selector39~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(11) & ( \Selector39~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(11) & ( !\Selector39~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(11) & ( !\Selector39~0_combout\ & ( (\state_reg.op~q\ & 
-- (\Selector50~3_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000110111001100110001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector50~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(11),
	dataf => \ALT_INV_Selector39~0_combout\,
	combout => \c_reg[11]~11_combout\);

-- Location: FF_X19_Y4_N19
\c_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[11]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(11));

-- Location: MLABCELL_X25_Y4_N9
\c_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~11_combout\ = ( c_reg(11) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(11),
	combout => \c_out~11_combout\);

-- Location: LABCELL_X18_Y5_N51
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( !\Add1~13_sumout\ & ( \Add1~9_sumout\ & ( (\state_reg.op~q\ & (\Selector46~0_combout\ & (\Selector50~1_combout\ & !\process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Selector46~0_combout\,
	datac => \ALT_INV_Selector50~1_combout\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Selector38~0_combout\);

-- Location: LABCELL_X18_Y5_N27
\c_reg[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[12]~12_combout\ = ( c_reg(12) & ( \Selector38~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\)) ) ) ) # ( !c_reg(12) & ( \Selector38~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & 
-- \state_reg.op~q\)) ) ) ) # ( c_reg(12) & ( !\Selector38~0_combout\ & ( (!\Selector50~3_combout\) # ((!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\))) ) ) ) # ( !c_reg(12) & ( !\Selector38~0_combout\ & ( (!\LessThan0~18_combout\ & 
-- (!\LessThan0~0_combout\ & (\Selector50~3_combout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111100001111100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_Selector50~3_combout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => ALT_INV_c_reg(12),
	dataf => \ALT_INV_Selector38~0_combout\,
	combout => \c_reg[12]~12_combout\);

-- Location: FF_X18_Y5_N29
\c_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[12]~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(12));

-- Location: LABCELL_X18_Y5_N54
\c_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~12_combout\ = (\state_reg.done~q\ & c_reg(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	datac => ALT_INV_c_reg(12),
	combout => \c_out~12_combout\);

-- Location: LABCELL_X18_Y5_N15
\Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ( \Selector46~0_combout\ & ( \Selector50~1_combout\ & ( (\state_reg.op~q\ & (\Add1~13_sumout\ & (!\process_1~0_combout\ & \Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Selector46~0_combout\,
	dataf => \ALT_INV_Selector50~1_combout\,
	combout => \Selector37~0_combout\);

-- Location: LABCELL_X18_Y5_N18
\c_reg[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[13]~13_combout\ = ( c_reg(13) & ( \Selector37~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(13) & ( \Selector37~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(13) & ( !\Selector37~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(13) & ( !\Selector37~0_combout\ & ( (\state_reg.op~q\ & 
-- (!\LessThan0~0_combout\ & (!\LessThan0~18_combout\ & \Selector50~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111110100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_Selector50~3_combout\,
	datae => ALT_INV_c_reg(13),
	dataf => \ALT_INV_Selector37~0_combout\,
	combout => \c_reg[13]~13_combout\);

-- Location: FF_X18_Y5_N19
\c_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[13]~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(13));

-- Location: LABCELL_X19_Y5_N21
\c_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~13_combout\ = ( c_reg(13) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(13),
	combout => \c_out~13_combout\);

-- Location: LABCELL_X19_Y5_N9
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \Selector50~1_combout\ & ( \Selector44~0_combout\ & ( (!\Add1~13_sumout\ & (!\process_1~0_combout\ & (\Add1~9_sumout\ & \state_reg.op~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_state_reg.op~q\,
	datae => \ALT_INV_Selector50~1_combout\,
	dataf => \ALT_INV_Selector44~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: LABCELL_X19_Y5_N12
\c_reg[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[14]~14_combout\ = ( c_reg(14) & ( \Selector36~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\)) ) ) ) # ( !c_reg(14) & ( \Selector36~0_combout\ & ( (\state_reg.op~q\ & (!\LessThan0~0_combout\ & 
-- !\LessThan0~18_combout\)) ) ) ) # ( c_reg(14) & ( !\Selector36~0_combout\ & ( (!\Selector50~3_combout\) # ((\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) ) # ( !c_reg(14) & ( !\Selector36~0_combout\ & ( 
-- (\Selector50~3_combout\ & (\state_reg.op~q\ & (!\LessThan0~0_combout\ & !\LessThan0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000101110101010101000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector50~3_combout\,
	datab => \ALT_INV_state_reg.op~q\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => ALT_INV_c_reg(14),
	dataf => \ALT_INV_Selector36~0_combout\,
	combout => \c_reg[14]~14_combout\);

-- Location: FF_X19_Y5_N13
\c_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[14]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(14));

-- Location: LABCELL_X19_Y5_N57
\c_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~14_combout\ = ( c_reg(14) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(14),
	combout => \c_out~14_combout\);

-- Location: LABCELL_X18_Y5_N30
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \Selector44~0_combout\ & ( \Selector50~1_combout\ & ( (\state_reg.op~q\ & (!\process_1~0_combout\ & (\Add1~9_sumout\ & \Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.op~q\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	datae => \ALT_INV_Selector44~0_combout\,
	dataf => \ALT_INV_Selector50~1_combout\,
	combout => \Selector35~0_combout\);

-- Location: LABCELL_X18_Y5_N0
\c_reg[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_reg[15]~15_combout\ = ( c_reg(15) & ( \Selector35~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\)) ) ) ) # ( !c_reg(15) & ( \Selector35~0_combout\ & ( (!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & 
-- \state_reg.op~q\)) ) ) ) # ( c_reg(15) & ( !\Selector35~0_combout\ & ( (!\Selector50~3_combout\) # ((!\LessThan0~18_combout\ & (!\LessThan0~0_combout\ & \state_reg.op~q\))) ) ) ) # ( !c_reg(15) & ( !\Selector35~0_combout\ & ( (!\LessThan0~18_combout\ & 
-- (!\LessThan0~0_combout\ & (\state_reg.op~q\ & \Selector50~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_state_reg.op~q\,
	datad => \ALT_INV_Selector50~3_combout\,
	datae => ALT_INV_c_reg(15),
	dataf => \ALT_INV_Selector35~0_combout\,
	combout => \c_reg[15]~15_combout\);

-- Location: FF_X18_Y5_N1
\c_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c_reg[15]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_reg(15));

-- Location: LABCELL_X19_Y5_N18
\c_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~15_combout\ = ( c_reg(15) & ( \state_reg.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.done~q\,
	dataf => ALT_INV_c_reg(15),
	combout => \c_out~15_combout\);

-- Location: LABCELL_X18_Y3_N33
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \aa[7]~input_o\ & ( (\b[7]~input_o\ & (!\b[6]~input_o\ $ (\aa[6]~input_o\))) ) ) # ( !\aa[7]~input_o\ & ( (!\b[7]~input_o\ & (!\b[6]~input_o\ $ (\aa[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datac => \ALT_INV_b[6]~input_o\,
	datad => \ALT_INV_aa[6]~input_o\,
	dataf => \ALT_INV_aa[7]~input_o\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X18_Y3_N24
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( \LessThan1~2_combout\ & ( (!\b[5]~input_o\ & (!\aa[5]~input_o\ & (!\b[4]~input_o\ $ (\aa[4]~input_o\)))) # (\b[5]~input_o\ & (\aa[5]~input_o\ & (!\b[4]~input_o\ $ (\aa[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_aa[5]~input_o\,
	datad => \ALT_INV_aa[4]~input_o\,
	dataf => \ALT_INV_LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X18_Y3_N0
\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( \aa[12]~input_o\ & ( \b[12]~input_o\ & ( (!\aa[14]~input_o\ & (((\b[13]~input_o\ & !\aa[13]~input_o\)) # (\b[14]~input_o\))) # (\aa[14]~input_o\ & (\b[13]~input_o\ & (\b[14]~input_o\ & !\aa[13]~input_o\))) ) ) ) # ( 
-- !\aa[12]~input_o\ & ( \b[12]~input_o\ & ( (!\aa[14]~input_o\ & (((!\aa[13]~input_o\) # (\b[14]~input_o\)) # (\b[13]~input_o\))) # (\aa[14]~input_o\ & (\b[14]~input_o\ & ((!\aa[13]~input_o\) # (\b[13]~input_o\)))) ) ) ) # ( \aa[12]~input_o\ & ( 
-- !\b[12]~input_o\ & ( (!\aa[14]~input_o\ & (((\b[13]~input_o\ & !\aa[13]~input_o\)) # (\b[14]~input_o\))) # (\aa[14]~input_o\ & (\b[13]~input_o\ & (\b[14]~input_o\ & !\aa[13]~input_o\))) ) ) ) # ( !\aa[12]~input_o\ & ( !\b[12]~input_o\ & ( 
-- (!\aa[14]~input_o\ & (((\b[13]~input_o\ & !\aa[13]~input_o\)) # (\b[14]~input_o\))) # (\aa[14]~input_o\ & (\b[13]~input_o\ & (\b[14]~input_o\ & !\aa[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100001010001010110000101010101111001010110010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[14]~input_o\,
	datab => \ALT_INV_b[13]~input_o\,
	datac => \ALT_INV_b[14]~input_o\,
	datad => \ALT_INV_aa[13]~input_o\,
	datae => \ALT_INV_aa[12]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \LessThan1~11_combout\);

-- Location: LABCELL_X17_Y2_N0
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( \aa[14]~input_o\ & ( \b[13]~input_o\ & ( (\b[14]~input_o\ & (\aa[13]~input_o\ & (!\aa[12]~input_o\ $ (\b[12]~input_o\)))) ) ) ) # ( !\aa[14]~input_o\ & ( \b[13]~input_o\ & ( (!\b[14]~input_o\ & (\aa[13]~input_o\ & 
-- (!\aa[12]~input_o\ $ (\b[12]~input_o\)))) ) ) ) # ( \aa[14]~input_o\ & ( !\b[13]~input_o\ & ( (\b[14]~input_o\ & (!\aa[13]~input_o\ & (!\aa[12]~input_o\ $ (\b[12]~input_o\)))) ) ) ) # ( !\aa[14]~input_o\ & ( !\b[13]~input_o\ & ( (!\b[14]~input_o\ & 
-- (!\aa[13]~input_o\ & (!\aa[12]~input_o\ $ (\b[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[12]~input_o\,
	datab => \ALT_INV_b[14]~input_o\,
	datac => \ALT_INV_aa[13]~input_o\,
	datad => \ALT_INV_b[12]~input_o\,
	datae => \ALT_INV_aa[14]~input_o\,
	dataf => \ALT_INV_b[13]~input_o\,
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X17_Y2_N48
\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( \aa[10]~input_o\ & ( \b[10]~input_o\ & ( (!\LessThan1~11_combout\ & ((!\b[11]~input_o\) # ((!\LessThan1~6_combout\) # (\aa[11]~input_o\)))) ) ) ) # ( !\aa[10]~input_o\ & ( \b[10]~input_o\ & ( (!\LessThan1~11_combout\ & 
-- ((!\LessThan1~6_combout\) # ((!\b[11]~input_o\ & \aa[11]~input_o\)))) ) ) ) # ( \aa[10]~input_o\ & ( !\b[10]~input_o\ & ( (!\LessThan1~11_combout\ & ((!\b[11]~input_o\) # ((!\LessThan1~6_combout\) # (\aa[11]~input_o\)))) ) ) ) # ( !\aa[10]~input_o\ & ( 
-- !\b[10]~input_o\ & ( (!\LessThan1~11_combout\ & ((!\b[11]~input_o\) # ((!\LessThan1~6_combout\) # (\aa[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001100110010001100110011000000110010001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[11]~input_o\,
	datab => \ALT_INV_LessThan1~11_combout\,
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_aa[11]~input_o\,
	datae => \ALT_INV_aa[10]~input_o\,
	dataf => \ALT_INV_b[10]~input_o\,
	combout => \LessThan1~12_combout\);

-- Location: LABCELL_X19_Y3_N39
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \aa[0]~input_o\ & ( (\b[1]~input_o\ & !\aa[1]~input_o\) ) ) # ( !\aa[0]~input_o\ & ( (!\b[1]~input_o\ & (\b[0]~input_o\ & !\aa[1]~input_o\)) # (\b[1]~input_o\ & ((!\aa[1]~input_o\) # (\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_aa[1]~input_o\,
	dataf => \ALT_INV_aa[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X19_Y3_N30
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (!\b[3]~input_o\ & (!\aa[3]~input_o\ & ((!\aa[2]~input_o\) # (\b[2]~input_o\)))) # (\b[3]~input_o\ & (((!\aa[3]~input_o\) # (!\aa[2]~input_o\)) # (\b[2]~input_o\))) ) ) # ( !\LessThan1~0_combout\ & ( 
-- (!\b[3]~input_o\ & (\b[2]~input_o\ & (!\aa[3]~input_o\ & !\aa[2]~input_o\))) # (\b[3]~input_o\ & ((!\aa[3]~input_o\) # ((\b[2]~input_o\ & !\aa[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101010000011100010101000011110101011100011111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_aa[3]~input_o\,
	datad => \ALT_INV_aa[2]~input_o\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X18_Y3_N30
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \b[11]~input_o\ & ( !\aa[11]~input_o\ ) ) # ( !\b[11]~input_o\ & ( \aa[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_aa[11]~input_o\,
	dataf => \ALT_INV_b[11]~input_o\,
	combout => \LessThan1~7_combout\);

-- Location: LABCELL_X17_Y2_N6
\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = (!\aa[8]~input_o\ & \b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aa[8]~input_o\,
	datac => \ALT_INV_b[8]~input_o\,
	combout => \LessThan1~13_combout\);

-- Location: LABCELL_X17_Y2_N9
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( \b[10]~input_o\ & ( !\aa[10]~input_o\ ) ) # ( !\b[10]~input_o\ & ( \aa[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aa[10]~input_o\,
	dataf => \ALT_INV_b[10]~input_o\,
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X17_Y2_N30
\LessThan1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = ( \aa[9]~input_o\ & ( \b[9]~input_o\ & ( (!\LessThan1~7_combout\ & (\LessThan1~13_combout\ & (\LessThan1~6_combout\ & !\LessThan1~8_combout\))) ) ) ) # ( !\aa[9]~input_o\ & ( \b[9]~input_o\ & ( (!\LessThan1~7_combout\ & 
-- (\LessThan1~6_combout\ & !\LessThan1~8_combout\)) ) ) ) # ( !\aa[9]~input_o\ & ( !\b[9]~input_o\ & ( (!\LessThan1~7_combout\ & (\LessThan1~13_combout\ & (\LessThan1~6_combout\ & !\LessThan1~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000001010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~7_combout\,
	datab => \ALT_INV_LessThan1~13_combout\,
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_LessThan1~8_combout\,
	datae => \ALT_INV_aa[9]~input_o\,
	dataf => \ALT_INV_b[9]~input_o\,
	combout => \LessThan1~14_combout\);

-- Location: LABCELL_X17_Y2_N39
\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = !\b[8]~input_o\ $ (!\aa[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datac => \ALT_INV_aa[8]~input_o\,
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X17_Y2_N54
\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( \aa[9]~input_o\ & ( \b[9]~input_o\ & ( (!\LessThan1~7_combout\ & (!\LessThan1~9_combout\ & (\LessThan1~6_combout\ & !\LessThan1~8_combout\))) ) ) ) # ( !\aa[9]~input_o\ & ( !\b[9]~input_o\ & ( (!\LessThan1~7_combout\ & 
-- (!\LessThan1~9_combout\ & (\LessThan1~6_combout\ & !\LessThan1~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~7_combout\,
	datab => \ALT_INV_LessThan1~9_combout\,
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_LessThan1~8_combout\,
	datae => \ALT_INV_aa[9]~input_o\,
	dataf => \ALT_INV_b[9]~input_o\,
	combout => \LessThan1~10_combout\);

-- Location: LABCELL_X18_Y3_N36
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( \aa[7]~input_o\ & ( (!\aa[6]~input_o\ & (\b[6]~input_o\ & \b[7]~input_o\)) ) ) # ( !\aa[7]~input_o\ & ( ((!\aa[6]~input_o\ & \b[6]~input_o\)) # (\b[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[6]~input_o\,
	datab => \ALT_INV_b[6]~input_o\,
	datac => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_aa[7]~input_o\,
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X18_Y3_N42
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( \aa[5]~input_o\ & ( \aa[4]~input_o\ & ( !\LessThan1~4_combout\ ) ) ) # ( !\aa[5]~input_o\ & ( \aa[4]~input_o\ & ( (!\LessThan1~4_combout\ & ((!\LessThan1~2_combout\) # (!\b[5]~input_o\))) ) ) ) # ( \aa[5]~input_o\ & ( 
-- !\aa[4]~input_o\ & ( (!\LessThan1~4_combout\ & ((!\b[4]~input_o\) # ((!\LessThan1~2_combout\) # (!\b[5]~input_o\)))) ) ) ) # ( !\aa[5]~input_o\ & ( !\aa[4]~input_o\ & ( (!\LessThan1~4_combout\ & ((!\LessThan1~2_combout\) # ((!\b[4]~input_o\ & 
-- !\b[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101010101010100010101010101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~4_combout\,
	datab => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_LessThan1~2_combout\,
	datad => \ALT_INV_b[5]~input_o\,
	datae => \ALT_INV_aa[5]~input_o\,
	dataf => \ALT_INV_aa[4]~input_o\,
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X18_Y3_N18
\LessThan1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = ( \LessThan1~10_combout\ & ( \LessThan1~5_combout\ & ( (\LessThan1~12_combout\ & (!\LessThan1~14_combout\ & ((!\LessThan1~3_combout\) # (!\LessThan1~1_combout\)))) ) ) ) # ( !\LessThan1~10_combout\ & ( \LessThan1~5_combout\ & ( 
-- (\LessThan1~12_combout\ & !\LessThan1~14_combout\) ) ) ) # ( !\LessThan1~10_combout\ & ( !\LessThan1~5_combout\ & ( (\LessThan1~12_combout\ & !\LessThan1~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000110011000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~3_combout\,
	datab => \ALT_INV_LessThan1~12_combout\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan1~14_combout\,
	datae => \ALT_INV_LessThan1~10_combout\,
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \LessThan1~15_combout\);

-- Location: LABCELL_X19_Y3_N24
\resto_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~0_combout\ = ( \aa[0]~input_o\ & ( a_reg(17) & ( \state_reg.done~q\ ) ) ) # ( !\aa[0]~input_o\ & ( a_reg(17) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\aa[15]~input_o\) # (\LessThan1~15_combout\))) # (\b[15]~input_o\ & 
-- (\LessThan1~15_combout\ & \aa[15]~input_o\)))) ) ) ) # ( \aa[0]~input_o\ & ( !a_reg(17) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\LessThan1~15_combout\ & !\aa[15]~input_o\)) # (\b[15]~input_o\ & ((!\LessThan1~15_combout\) # (!\aa[15]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000000000010001000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_aa[15]~input_o\,
	datae => \ALT_INV_aa[0]~input_o\,
	dataf => ALT_INV_a_reg(17),
	combout => \resto_out~0_combout\);

-- Location: LABCELL_X19_Y3_N27
\resto_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~1_combout\ = ( \aa[1]~input_o\ & ( a_reg(18) & ( \state_reg.done~q\ ) ) ) # ( !\aa[1]~input_o\ & ( a_reg(18) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & (\aa[15]~input_o\ 
-- & \LessThan1~15_combout\)))) ) ) ) # ( \aa[1]~input_o\ & ( !a_reg(18) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000000000010001000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_aa[15]~input_o\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[1]~input_o\,
	dataf => ALT_INV_a_reg(18),
	combout => \resto_out~1_combout\);

-- Location: LABCELL_X19_Y3_N18
\resto_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~2_combout\ = ( \aa[2]~input_o\ & ( a_reg(19) & ( \state_reg.done~q\ ) ) ) # ( !\aa[2]~input_o\ & ( a_reg(19) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\aa[15]~input_o\) # (\LessThan1~15_combout\))) # (\b[15]~input_o\ & 
-- (\LessThan1~15_combout\ & \aa[15]~input_o\)))) ) ) ) # ( \aa[2]~input_o\ & ( !a_reg(19) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\LessThan1~15_combout\ & !\aa[15]~input_o\)) # (\b[15]~input_o\ & ((!\LessThan1~15_combout\) # (!\aa[15]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000000000010001000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_aa[15]~input_o\,
	datae => \ALT_INV_aa[2]~input_o\,
	dataf => ALT_INV_a_reg(19),
	combout => \resto_out~2_combout\);

-- Location: LABCELL_X19_Y3_N21
\resto_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~3_combout\ = ( \aa[3]~input_o\ & ( a_reg(20) & ( \state_reg.done~q\ ) ) ) # ( !\aa[3]~input_o\ & ( a_reg(20) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & (\aa[15]~input_o\ 
-- & \LessThan1~15_combout\)))) ) ) ) # ( \aa[3]~input_o\ & ( !a_reg(20) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000000000010001000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_aa[15]~input_o\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[3]~input_o\,
	dataf => ALT_INV_a_reg(20),
	combout => \resto_out~3_combout\);

-- Location: LABCELL_X18_Y3_N12
\resto_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~4_combout\ = ( \aa[4]~input_o\ & ( a_reg(21) & ( \state_reg.done~q\ ) ) ) # ( !\aa[4]~input_o\ & ( a_reg(21) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\aa[15]~input_o\) # (\LessThan1~15_combout\))) # (\b[15]~input_o\ & 
-- (\LessThan1~15_combout\ & \aa[15]~input_o\)))) ) ) ) # ( \aa[4]~input_o\ & ( !a_reg(21) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\LessThan1~15_combout\ & !\aa[15]~input_o\)) # (\b[15]~input_o\ & ((!\LessThan1~15_combout\) # (!\aa[15]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010001000000000100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_aa[15]~input_o\,
	datae => \ALT_INV_aa[4]~input_o\,
	dataf => ALT_INV_a_reg(21),
	combout => \resto_out~4_combout\);

-- Location: LABCELL_X18_Y3_N57
\resto_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~5_combout\ = ( \aa[5]~input_o\ & ( a_reg(22) & ( \state_reg.done~q\ ) ) ) # ( !\aa[5]~input_o\ & ( a_reg(22) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & (\aa[15]~input_o\ 
-- & \LessThan1~15_combout\)))) ) ) ) # ( \aa[5]~input_o\ & ( !a_reg(22) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010001000000000100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_aa[15]~input_o\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[5]~input_o\,
	dataf => ALT_INV_a_reg(22),
	combout => \resto_out~5_combout\);

-- Location: LABCELL_X18_Y3_N54
\resto_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~6_combout\ = ( \aa[6]~input_o\ & ( a_reg(23) & ( \state_reg.done~q\ ) ) ) # ( !\aa[6]~input_o\ & ( a_reg(23) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\aa[15]~input_o\) # (\LessThan1~15_combout\))) # (\b[15]~input_o\ & 
-- (\LessThan1~15_combout\ & \aa[15]~input_o\)))) ) ) ) # ( \aa[6]~input_o\ & ( !a_reg(23) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\LessThan1~15_combout\ & !\aa[15]~input_o\)) # (\b[15]~input_o\ & ((!\LessThan1~15_combout\) # (!\aa[15]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010001000000000100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_aa[15]~input_o\,
	datae => \ALT_INV_aa[6]~input_o\,
	dataf => ALT_INV_a_reg(23),
	combout => \resto_out~6_combout\);

-- Location: LABCELL_X19_Y2_N36
\resto_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~7_combout\ = ( \aa[7]~input_o\ & ( a_reg(24) & ( \state_reg.done~q\ ) ) ) # ( !\aa[7]~input_o\ & ( a_reg(24) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & (\aa[15]~input_o\ 
-- & \LessThan1~15_combout\)))) ) ) ) # ( \aa[7]~input_o\ & ( !a_reg(24) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000010000000010000010110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_aa[15]~input_o\,
	datac => \ALT_INV_state_reg.done~q\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[7]~input_o\,
	dataf => ALT_INV_a_reg(24),
	combout => \resto_out~7_combout\);

-- Location: LABCELL_X17_Y2_N24
\resto_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~8_combout\ = ( \aa[8]~input_o\ & ( a_reg(25) & ( \state_reg.done~q\ ) ) ) # ( !\aa[8]~input_o\ & ( a_reg(25) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & (\LessThan1~15_combout\ & !\b[15]~input_o\)) # (\aa[15]~input_o\ & ((!\b[15]~input_o\) 
-- # (\LessThan1~15_combout\))))) ) ) ) # ( \aa[8]~input_o\ & ( !a_reg(25) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & ((!\LessThan1~15_combout\) # (\b[15]~input_o\))) # (\aa[15]~input_o\ & (!\LessThan1~15_combout\ & \b[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000011001000010011000000010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_aa[8]~input_o\,
	dataf => ALT_INV_a_reg(25),
	combout => \resto_out~8_combout\);

-- Location: LABCELL_X19_Y2_N39
\resto_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~9_combout\ = ( \aa[9]~input_o\ & ( a_reg(26) & ( \state_reg.done~q\ ) ) ) # ( !\aa[9]~input_o\ & ( a_reg(26) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & (\aa[15]~input_o\ 
-- & \LessThan1~15_combout\)))) ) ) ) # ( \aa[9]~input_o\ & ( !a_reg(26) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101010000000000001010110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_aa[15]~input_o\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_state_reg.done~q\,
	datae => \ALT_INV_aa[9]~input_o\,
	dataf => ALT_INV_a_reg(26),
	combout => \resto_out~9_combout\);

-- Location: LABCELL_X16_Y2_N15
\resto_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~10_combout\ = ( \aa[10]~input_o\ & ( \aa[15]~input_o\ & ( (\state_reg.done~q\ & (((!\LessThan1~15_combout\ & \b[15]~input_o\)) # (a_reg(27)))) ) ) ) # ( !\aa[10]~input_o\ & ( \aa[15]~input_o\ & ( (a_reg(27) & (\state_reg.done~q\ & 
-- ((!\b[15]~input_o\) # (\LessThan1~15_combout\)))) ) ) ) # ( \aa[10]~input_o\ & ( !\aa[15]~input_o\ & ( (\state_reg.done~q\ & (((!\LessThan1~15_combout\) # (\b[15]~input_o\)) # (a_reg(27)))) ) ) ) # ( !\aa[10]~input_o\ & ( !\aa[15]~input_o\ & ( (a_reg(27) 
-- & (\LessThan1~15_combout\ & (!\b[15]~input_o\ & \state_reg.done~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000001101111100000000010100010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a_reg(27),
	datab => \ALT_INV_LessThan1~15_combout\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_state_reg.done~q\,
	datae => \ALT_INV_aa[10]~input_o\,
	dataf => \ALT_INV_aa[15]~input_o\,
	combout => \resto_out~10_combout\);

-- Location: LABCELL_X17_Y2_N27
\resto_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~11_combout\ = ( \aa[11]~input_o\ & ( a_reg(28) & ( \state_reg.done~q\ ) ) ) # ( !\aa[11]~input_o\ & ( a_reg(28) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & (!\b[15]~input_o\ & \LessThan1~15_combout\)) # (\aa[15]~input_o\ & 
-- ((!\b[15]~input_o\) # (\LessThan1~15_combout\))))) ) ) ) # ( \aa[11]~input_o\ & ( !a_reg(28) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & ((!\LessThan1~15_combout\) # (\b[15]~input_o\))) # (\aa[15]~input_o\ & (\b[15]~input_o\ & 
-- !\LessThan1~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110000001000010000001100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[15]~input_o\,
	datab => \ALT_INV_state_reg.done~q\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[11]~input_o\,
	dataf => ALT_INV_a_reg(28),
	combout => \resto_out~11_combout\);

-- Location: LABCELL_X17_Y2_N45
\resto_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~12_combout\ = ( \aa[12]~input_o\ & ( a_reg(29) & ( \state_reg.done~q\ ) ) ) # ( !\aa[12]~input_o\ & ( a_reg(29) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & (!\b[15]~input_o\ & \LessThan1~15_combout\)) # (\aa[15]~input_o\ & 
-- ((!\b[15]~input_o\) # (\LessThan1~15_combout\))))) ) ) ) # ( \aa[12]~input_o\ & ( !a_reg(29) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & ((!\LessThan1~15_combout\) # (\b[15]~input_o\))) # (\aa[15]~input_o\ & (\b[15]~input_o\ & 
-- !\LessThan1~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000001000000100000011010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[15]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_state_reg.done~q\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[12]~input_o\,
	dataf => ALT_INV_a_reg(29),
	combout => \resto_out~12_combout\);

-- Location: LABCELL_X17_Y2_N42
\resto_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~13_combout\ = ( \aa[13]~input_o\ & ( a_reg(30) & ( \state_reg.done~q\ ) ) ) # ( !\aa[13]~input_o\ & ( a_reg(30) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & (!\b[15]~input_o\ & \LessThan1~15_combout\)) # (\aa[15]~input_o\ & 
-- ((!\b[15]~input_o\) # (\LessThan1~15_combout\))))) ) ) ) # ( \aa[13]~input_o\ & ( !a_reg(30) & ( (\state_reg.done~q\ & ((!\aa[15]~input_o\ & ((!\LessThan1~15_combout\) # (\b[15]~input_o\))) # (\aa[15]~input_o\ & (\b[15]~input_o\ & 
-- !\LessThan1~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001011001000000000010011010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[15]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => \ALT_INV_state_reg.done~q\,
	datae => \ALT_INV_aa[13]~input_o\,
	dataf => ALT_INV_a_reg(30),
	combout => \resto_out~13_combout\);

-- Location: LABCELL_X18_Y3_N15
\resto_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~14_combout\ = ( \aa[14]~input_o\ & ( a_reg(31) & ( \state_reg.done~q\ ) ) ) # ( !\aa[14]~input_o\ & ( a_reg(31) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & ((\LessThan1~15_combout\) # (\aa[15]~input_o\))) # (\b[15]~input_o\ & 
-- (\aa[15]~input_o\ & \LessThan1~15_combout\)))) ) ) ) # ( \aa[14]~input_o\ & ( !a_reg(31) & ( (\state_reg.done~q\ & ((!\b[15]~input_o\ & (!\aa[15]~input_o\ & !\LessThan1~15_combout\)) # (\b[15]~input_o\ & ((!\aa[15]~input_o\) # 
-- (!\LessThan1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010001000000000100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.done~q\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_aa[15]~input_o\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_aa[14]~input_o\,
	dataf => ALT_INV_a_reg(31),
	combout => \resto_out~14_combout\);

-- Location: LABCELL_X16_Y2_N18
\resto_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \resto_out~15_combout\ = ( \b[15]~input_o\ & ( !\LessThan1~15_combout\ & ( (\aa[15]~input_o\ & \state_reg.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aa[15]~input_o\,
	datac => \ALT_INV_state_reg.done~q\,
	datae => \ALT_INV_b[15]~input_o\,
	dataf => \ALT_INV_LessThan1~15_combout\,
	combout => \resto_out~15_combout\);

-- Location: LABCELL_X19_Y3_N42
\zero_div~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero_div~0_combout\ = ( \state_reg.done~q\ & ( (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_state_reg.done~q\,
	combout => \zero_div~0_combout\);
END structure;


