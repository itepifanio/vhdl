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

-- DATE "11/30/2019 19:13:37"

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

ENTITY 	banco_registradores IS
    PORT (
	ler_escrever : IN std_logic;
	resetar : IN std_logic;
	entrada : IN std_logic_vector(15 DOWNTO 0);
	seletor : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END banco_registradores;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler_escrever	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetar	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF banco_registradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ler_escrever : std_logic;
SIGNAL ww_resetar : std_logic;
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seletor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ler_escrever~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \seletor[2]~input_o\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \resetar~input_o\ : std_logic;
SIGNAL \registrador_escolhido[6]~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \saida[0]~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \registrador_escolhido[7]~1_combout\ : std_logic;
SIGNAL \registrador_escolhido[5]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \saida[0]~0_combout\ : std_logic;
SIGNAL \saida[0]~2_combout\ : std_logic;
SIGNAL \saida[0]$latch~combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \saida[1]~3_combout\ : std_logic;
SIGNAL \saida[1]~4_combout\ : std_logic;
SIGNAL \saida[1]~5_combout\ : std_logic;
SIGNAL \saida[1]$latch~combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \saida[2]~6_combout\ : std_logic;
SIGNAL \saida[2]~7_combout\ : std_logic;
SIGNAL \saida[2]~8_combout\ : std_logic;
SIGNAL \saida[2]$latch~combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saida[3]~9_combout\ : std_logic;
SIGNAL \saida[3]~10_combout\ : std_logic;
SIGNAL \saida[3]~11_combout\ : std_logic;
SIGNAL \saida[3]$latch~combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \saida[4]~13_combout\ : std_logic;
SIGNAL \saida[4]~12_combout\ : std_logic;
SIGNAL \saida[4]~14_combout\ : std_logic;
SIGNAL \saida[4]$latch~combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \saida[5]~16_combout\ : std_logic;
SIGNAL \saida[5]~15_combout\ : std_logic;
SIGNAL \saida[5]~17_combout\ : std_logic;
SIGNAL \saida[5]$latch~combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \saida[6]~18_combout\ : std_logic;
SIGNAL \saida[6]~19_combout\ : std_logic;
SIGNAL \saida[6]~20_combout\ : std_logic;
SIGNAL \saida[6]$latch~combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \saida[7]~21_combout\ : std_logic;
SIGNAL \saida[7]~22_combout\ : std_logic;
SIGNAL \saida[7]~23_combout\ : std_logic;
SIGNAL \saida[7]$latch~combout\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \saida[8]~24_combout\ : std_logic;
SIGNAL \saida[8]~25_combout\ : std_logic;
SIGNAL \saida[8]~26_combout\ : std_logic;
SIGNAL \saida[8]$latch~combout\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \saida[9]~27_combout\ : std_logic;
SIGNAL \saida[9]~28_combout\ : std_logic;
SIGNAL \saida[9]~29_combout\ : std_logic;
SIGNAL \saida[9]$latch~combout\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \saida[10]~31_combout\ : std_logic;
SIGNAL \saida[10]~30_combout\ : std_logic;
SIGNAL \saida[10]~32_combout\ : std_logic;
SIGNAL \saida[10]$latch~combout\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \saida[11]~34_combout\ : std_logic;
SIGNAL \saida[11]~33_combout\ : std_logic;
SIGNAL \saida[11]~35_combout\ : std_logic;
SIGNAL \saida[11]$latch~combout\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \saida[12]~36_combout\ : std_logic;
SIGNAL \saida[12]~37_combout\ : std_logic;
SIGNAL \saida[12]~38_combout\ : std_logic;
SIGNAL \saida[12]$latch~combout\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \saida[13]~40_combout\ : std_logic;
SIGNAL \saida[13]~39_combout\ : std_logic;
SIGNAL \saida[13]~41_combout\ : std_logic;
SIGNAL \saida[13]$latch~combout\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \saida[14]~43_combout\ : std_logic;
SIGNAL \saida[14]~42_combout\ : std_logic;
SIGNAL \saida[14]~44_combout\ : std_logic;
SIGNAL \saida[14]$latch~combout\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \saida[15]~45_combout\ : std_logic;
SIGNAL \saida[15]~46_combout\ : std_logic;
SIGNAL \saida[15]~47_combout\ : std_logic;
SIGNAL \saida[15]$latch~combout\ : std_logic;
SIGNAL registrador_escolhido : std_logic_vector(7 DOWNTO 0);
SIGNAL \r5|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r8|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r6|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r4|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r6|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r2|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r5|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r1|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r7|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r3|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r8|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_saida[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_registrador_escolhido[6]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_registrador_escolhido[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_registrador_escolhido[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_saida[15]~47_combout\ : std_logic;
SIGNAL \ALT_INV_saida[15]~46_combout\ : std_logic;
SIGNAL \ALT_INV_saida[15]~45_combout\ : std_logic;
SIGNAL \ALT_INV_saida[14]~44_combout\ : std_logic;
SIGNAL \ALT_INV_saida[14]~43_combout\ : std_logic;
SIGNAL \ALT_INV_saida[14]~42_combout\ : std_logic;
SIGNAL \ALT_INV_saida[13]~41_combout\ : std_logic;
SIGNAL \ALT_INV_saida[13]~40_combout\ : std_logic;
SIGNAL \ALT_INV_saida[13]~39_combout\ : std_logic;
SIGNAL \ALT_INV_saida[12]~38_combout\ : std_logic;
SIGNAL \ALT_INV_saida[12]~37_combout\ : std_logic;
SIGNAL \ALT_INV_saida[12]~36_combout\ : std_logic;
SIGNAL \ALT_INV_saida[11]~35_combout\ : std_logic;
SIGNAL \ALT_INV_saida[11]~34_combout\ : std_logic;
SIGNAL \ALT_INV_saida[11]~33_combout\ : std_logic;
SIGNAL \ALT_INV_saida[10]~32_combout\ : std_logic;
SIGNAL \ALT_INV_saida[10]~31_combout\ : std_logic;
SIGNAL \ALT_INV_saida[10]~30_combout\ : std_logic;
SIGNAL \ALT_INV_saida[9]~29_combout\ : std_logic;
SIGNAL \ALT_INV_saida[9]~28_combout\ : std_logic;
SIGNAL \ALT_INV_saida[9]~27_combout\ : std_logic;
SIGNAL \ALT_INV_saida[8]~26_combout\ : std_logic;
SIGNAL \ALT_INV_saida[8]~25_combout\ : std_logic;
SIGNAL \ALT_INV_saida[8]~24_combout\ : std_logic;
SIGNAL \ALT_INV_saida[7]~23_combout\ : std_logic;
SIGNAL \ALT_INV_saida[7]~22_combout\ : std_logic;
SIGNAL \ALT_INV_saida[7]~21_combout\ : std_logic;
SIGNAL \ALT_INV_saida[6]~20_combout\ : std_logic;
SIGNAL \ALT_INV_saida[6]~19_combout\ : std_logic;
SIGNAL \ALT_INV_saida[6]~18_combout\ : std_logic;
SIGNAL \ALT_INV_saida[5]~17_combout\ : std_logic;
SIGNAL \ALT_INV_saida[5]~16_combout\ : std_logic;
SIGNAL \ALT_INV_saida[5]~15_combout\ : std_logic;
SIGNAL \ALT_INV_saida[4]~14_combout\ : std_logic;
SIGNAL \ALT_INV_saida[4]~13_combout\ : std_logic;
SIGNAL \ALT_INV_saida[4]~12_combout\ : std_logic;
SIGNAL \ALT_INV_saida[3]~11_combout\ : std_logic;
SIGNAL \ALT_INV_saida[3]~10_combout\ : std_logic;
SIGNAL \ALT_INV_saida[3]~9_combout\ : std_logic;
SIGNAL \ALT_INV_saida[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_saida[2]~7_combout\ : std_logic;
SIGNAL \ALT_INV_saida[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_saida[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_entrada[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_resetar~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ler_escrever~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[0]~input_o\ : std_logic;
SIGNAL ALT_INV_registrador_escolhido : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_ler_escrever <= ler_escrever;
ww_resetar <= resetar;
ww_entrada <= entrada;
ww_seletor <= seletor;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\r4|ALT_INV_q\(1) <= NOT \r4|q\(1);
\r6|ALT_INV_q\(1) <= NOT \r6|q\(1);
\r2|ALT_INV_q\(1) <= NOT \r2|q\(1);
\r5|ALT_INV_q\(0) <= NOT \r5|q\(0);
\r1|ALT_INV_q\(0) <= NOT \r1|q\(0);
\r7|ALT_INV_q\(0) <= NOT \r7|q\(0);
\r3|ALT_INV_q\(0) <= NOT \r3|q\(0);
\r8|ALT_INV_q\(0) <= NOT \r8|q\(0);
\r4|ALT_INV_q\(0) <= NOT \r4|q\(0);
\r6|ALT_INV_q\(0) <= NOT \r6|q\(0);
\r2|ALT_INV_q\(0) <= NOT \r2|q\(0);
\ALT_INV_saida[15]$latch~combout\ <= NOT \saida[15]$latch~combout\;
\ALT_INV_saida[14]$latch~combout\ <= NOT \saida[14]$latch~combout\;
\ALT_INV_saida[13]$latch~combout\ <= NOT \saida[13]$latch~combout\;
\ALT_INV_saida[12]$latch~combout\ <= NOT \saida[12]$latch~combout\;
\ALT_INV_saida[11]$latch~combout\ <= NOT \saida[11]$latch~combout\;
\ALT_INV_saida[10]$latch~combout\ <= NOT \saida[10]$latch~combout\;
\ALT_INV_saida[9]$latch~combout\ <= NOT \saida[9]$latch~combout\;
\ALT_INV_saida[8]$latch~combout\ <= NOT \saida[8]$latch~combout\;
\ALT_INV_saida[7]$latch~combout\ <= NOT \saida[7]$latch~combout\;
\ALT_INV_saida[6]$latch~combout\ <= NOT \saida[6]$latch~combout\;
\ALT_INV_saida[5]$latch~combout\ <= NOT \saida[5]$latch~combout\;
\ALT_INV_saida[4]$latch~combout\ <= NOT \saida[4]$latch~combout\;
\ALT_INV_saida[3]$latch~combout\ <= NOT \saida[3]$latch~combout\;
\ALT_INV_saida[2]$latch~combout\ <= NOT \saida[2]$latch~combout\;
\ALT_INV_saida[1]$latch~combout\ <= NOT \saida[1]$latch~combout\;
\ALT_INV_saida[0]$latch~combout\ <= NOT \saida[0]$latch~combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_registrador_escolhido[6]~2_combout\ <= NOT \registrador_escolhido[6]~2_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_registrador_escolhido[7]~1_combout\ <= NOT \registrador_escolhido[7]~1_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_registrador_escolhido[5]~0_combout\ <= NOT \registrador_escolhido[5]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_saida[15]~47_combout\ <= NOT \saida[15]~47_combout\;
\ALT_INV_saida[15]~46_combout\ <= NOT \saida[15]~46_combout\;
\ALT_INV_saida[15]~45_combout\ <= NOT \saida[15]~45_combout\;
\ALT_INV_saida[14]~44_combout\ <= NOT \saida[14]~44_combout\;
\ALT_INV_saida[14]~43_combout\ <= NOT \saida[14]~43_combout\;
\ALT_INV_saida[14]~42_combout\ <= NOT \saida[14]~42_combout\;
\ALT_INV_saida[13]~41_combout\ <= NOT \saida[13]~41_combout\;
\ALT_INV_saida[13]~40_combout\ <= NOT \saida[13]~40_combout\;
\ALT_INV_saida[13]~39_combout\ <= NOT \saida[13]~39_combout\;
\ALT_INV_saida[12]~38_combout\ <= NOT \saida[12]~38_combout\;
\ALT_INV_saida[12]~37_combout\ <= NOT \saida[12]~37_combout\;
\ALT_INV_saida[12]~36_combout\ <= NOT \saida[12]~36_combout\;
\ALT_INV_saida[11]~35_combout\ <= NOT \saida[11]~35_combout\;
\ALT_INV_saida[11]~34_combout\ <= NOT \saida[11]~34_combout\;
\ALT_INV_saida[11]~33_combout\ <= NOT \saida[11]~33_combout\;
\ALT_INV_saida[10]~32_combout\ <= NOT \saida[10]~32_combout\;
\ALT_INV_saida[10]~31_combout\ <= NOT \saida[10]~31_combout\;
\ALT_INV_saida[10]~30_combout\ <= NOT \saida[10]~30_combout\;
\ALT_INV_saida[9]~29_combout\ <= NOT \saida[9]~29_combout\;
\ALT_INV_saida[9]~28_combout\ <= NOT \saida[9]~28_combout\;
\ALT_INV_saida[9]~27_combout\ <= NOT \saida[9]~27_combout\;
\ALT_INV_saida[8]~26_combout\ <= NOT \saida[8]~26_combout\;
\ALT_INV_saida[8]~25_combout\ <= NOT \saida[8]~25_combout\;
\ALT_INV_saida[8]~24_combout\ <= NOT \saida[8]~24_combout\;
\ALT_INV_saida[7]~23_combout\ <= NOT \saida[7]~23_combout\;
\ALT_INV_saida[7]~22_combout\ <= NOT \saida[7]~22_combout\;
\ALT_INV_saida[7]~21_combout\ <= NOT \saida[7]~21_combout\;
\ALT_INV_saida[6]~20_combout\ <= NOT \saida[6]~20_combout\;
\ALT_INV_saida[6]~19_combout\ <= NOT \saida[6]~19_combout\;
\ALT_INV_saida[6]~18_combout\ <= NOT \saida[6]~18_combout\;
\ALT_INV_saida[5]~17_combout\ <= NOT \saida[5]~17_combout\;
\ALT_INV_saida[5]~16_combout\ <= NOT \saida[5]~16_combout\;
\ALT_INV_saida[5]~15_combout\ <= NOT \saida[5]~15_combout\;
\ALT_INV_saida[4]~14_combout\ <= NOT \saida[4]~14_combout\;
\ALT_INV_saida[4]~13_combout\ <= NOT \saida[4]~13_combout\;
\ALT_INV_saida[4]~12_combout\ <= NOT \saida[4]~12_combout\;
\ALT_INV_saida[3]~11_combout\ <= NOT \saida[3]~11_combout\;
\ALT_INV_saida[3]~10_combout\ <= NOT \saida[3]~10_combout\;
\ALT_INV_saida[3]~9_combout\ <= NOT \saida[3]~9_combout\;
\ALT_INV_saida[2]~8_combout\ <= NOT \saida[2]~8_combout\;
\ALT_INV_saida[2]~7_combout\ <= NOT \saida[2]~7_combout\;
\ALT_INV_saida[2]~6_combout\ <= NOT \saida[2]~6_combout\;
\ALT_INV_saida[1]~5_combout\ <= NOT \saida[1]~5_combout\;
\ALT_INV_saida[1]~4_combout\ <= NOT \saida[1]~4_combout\;
\ALT_INV_saida[1]~3_combout\ <= NOT \saida[1]~3_combout\;
\ALT_INV_saida[0]~2_combout\ <= NOT \saida[0]~2_combout\;
\ALT_INV_saida[0]~1_combout\ <= NOT \saida[0]~1_combout\;
\ALT_INV_saida[0]~0_combout\ <= NOT \saida[0]~0_combout\;
\ALT_INV_entrada[15]~input_o\ <= NOT \entrada[15]~input_o\;
\ALT_INV_entrada[14]~input_o\ <= NOT \entrada[14]~input_o\;
\ALT_INV_entrada[13]~input_o\ <= NOT \entrada[13]~input_o\;
\ALT_INV_entrada[12]~input_o\ <= NOT \entrada[12]~input_o\;
\ALT_INV_entrada[11]~input_o\ <= NOT \entrada[11]~input_o\;
\ALT_INV_entrada[10]~input_o\ <= NOT \entrada[10]~input_o\;
\ALT_INV_entrada[9]~input_o\ <= NOT \entrada[9]~input_o\;
\ALT_INV_entrada[8]~input_o\ <= NOT \entrada[8]~input_o\;
\ALT_INV_entrada[7]~input_o\ <= NOT \entrada[7]~input_o\;
\ALT_INV_entrada[6]~input_o\ <= NOT \entrada[6]~input_o\;
\ALT_INV_entrada[5]~input_o\ <= NOT \entrada[5]~input_o\;
\ALT_INV_entrada[4]~input_o\ <= NOT \entrada[4]~input_o\;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_resetar~input_o\ <= NOT \resetar~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_ler_escrever~input_o\ <= NOT \ler_escrever~input_o\;
\ALT_INV_seletor[1]~input_o\ <= NOT \seletor[1]~input_o\;
\ALT_INV_seletor[2]~input_o\ <= NOT \seletor[2]~input_o\;
\ALT_INV_seletor[0]~input_o\ <= NOT \seletor[0]~input_o\;
ALT_INV_registrador_escolhido(4) <= NOT registrador_escolhido(4);
ALT_INV_registrador_escolhido(0) <= NOT registrador_escolhido(0);
ALT_INV_registrador_escolhido(6) <= NOT registrador_escolhido(6);
ALT_INV_registrador_escolhido(2) <= NOT registrador_escolhido(2);
ALT_INV_registrador_escolhido(7) <= NOT registrador_escolhido(7);
ALT_INV_registrador_escolhido(3) <= NOT registrador_escolhido(3);
ALT_INV_registrador_escolhido(5) <= NOT registrador_escolhido(5);
ALT_INV_registrador_escolhido(1) <= NOT registrador_escolhido(1);
\r5|ALT_INV_q\(15) <= NOT \r5|q\(15);
\r1|ALT_INV_q\(15) <= NOT \r1|q\(15);
\r7|ALT_INV_q\(15) <= NOT \r7|q\(15);
\r3|ALT_INV_q\(15) <= NOT \r3|q\(15);
\r8|ALT_INV_q\(15) <= NOT \r8|q\(15);
\r4|ALT_INV_q\(15) <= NOT \r4|q\(15);
\r6|ALT_INV_q\(15) <= NOT \r6|q\(15);
\r2|ALT_INV_q\(15) <= NOT \r2|q\(15);
\r5|ALT_INV_q\(14) <= NOT \r5|q\(14);
\r1|ALT_INV_q\(14) <= NOT \r1|q\(14);
\r7|ALT_INV_q\(14) <= NOT \r7|q\(14);
\r3|ALT_INV_q\(14) <= NOT \r3|q\(14);
\r8|ALT_INV_q\(14) <= NOT \r8|q\(14);
\r4|ALT_INV_q\(14) <= NOT \r4|q\(14);
\r6|ALT_INV_q\(14) <= NOT \r6|q\(14);
\r2|ALT_INV_q\(14) <= NOT \r2|q\(14);
\r5|ALT_INV_q\(13) <= NOT \r5|q\(13);
\r1|ALT_INV_q\(13) <= NOT \r1|q\(13);
\r7|ALT_INV_q\(13) <= NOT \r7|q\(13);
\r3|ALT_INV_q\(13) <= NOT \r3|q\(13);
\r8|ALT_INV_q\(13) <= NOT \r8|q\(13);
\r4|ALT_INV_q\(13) <= NOT \r4|q\(13);
\r6|ALT_INV_q\(13) <= NOT \r6|q\(13);
\r2|ALT_INV_q\(13) <= NOT \r2|q\(13);
\r5|ALT_INV_q\(12) <= NOT \r5|q\(12);
\r1|ALT_INV_q\(12) <= NOT \r1|q\(12);
\r7|ALT_INV_q\(12) <= NOT \r7|q\(12);
\r3|ALT_INV_q\(12) <= NOT \r3|q\(12);
\r8|ALT_INV_q\(12) <= NOT \r8|q\(12);
\r4|ALT_INV_q\(12) <= NOT \r4|q\(12);
\r6|ALT_INV_q\(12) <= NOT \r6|q\(12);
\r2|ALT_INV_q\(12) <= NOT \r2|q\(12);
\r5|ALT_INV_q\(11) <= NOT \r5|q\(11);
\r1|ALT_INV_q\(11) <= NOT \r1|q\(11);
\r7|ALT_INV_q\(11) <= NOT \r7|q\(11);
\r3|ALT_INV_q\(11) <= NOT \r3|q\(11);
\r8|ALT_INV_q\(11) <= NOT \r8|q\(11);
\r4|ALT_INV_q\(11) <= NOT \r4|q\(11);
\r6|ALT_INV_q\(11) <= NOT \r6|q\(11);
\r2|ALT_INV_q\(11) <= NOT \r2|q\(11);
\r5|ALT_INV_q\(10) <= NOT \r5|q\(10);
\r1|ALT_INV_q\(10) <= NOT \r1|q\(10);
\r7|ALT_INV_q\(10) <= NOT \r7|q\(10);
\r3|ALT_INV_q\(10) <= NOT \r3|q\(10);
\r8|ALT_INV_q\(10) <= NOT \r8|q\(10);
\r4|ALT_INV_q\(10) <= NOT \r4|q\(10);
\r6|ALT_INV_q\(10) <= NOT \r6|q\(10);
\r2|ALT_INV_q\(10) <= NOT \r2|q\(10);
\r5|ALT_INV_q\(9) <= NOT \r5|q\(9);
\r1|ALT_INV_q\(9) <= NOT \r1|q\(9);
\r7|ALT_INV_q\(9) <= NOT \r7|q\(9);
\r3|ALT_INV_q\(9) <= NOT \r3|q\(9);
\r8|ALT_INV_q\(9) <= NOT \r8|q\(9);
\r4|ALT_INV_q\(9) <= NOT \r4|q\(9);
\r6|ALT_INV_q\(9) <= NOT \r6|q\(9);
\r2|ALT_INV_q\(9) <= NOT \r2|q\(9);
\r5|ALT_INV_q\(8) <= NOT \r5|q\(8);
\r1|ALT_INV_q\(8) <= NOT \r1|q\(8);
\r7|ALT_INV_q\(8) <= NOT \r7|q\(8);
\r3|ALT_INV_q\(8) <= NOT \r3|q\(8);
\r8|ALT_INV_q\(8) <= NOT \r8|q\(8);
\r4|ALT_INV_q\(8) <= NOT \r4|q\(8);
\r6|ALT_INV_q\(8) <= NOT \r6|q\(8);
\r2|ALT_INV_q\(8) <= NOT \r2|q\(8);
\r5|ALT_INV_q\(7) <= NOT \r5|q\(7);
\r1|ALT_INV_q\(7) <= NOT \r1|q\(7);
\r7|ALT_INV_q\(7) <= NOT \r7|q\(7);
\r3|ALT_INV_q\(7) <= NOT \r3|q\(7);
\r8|ALT_INV_q\(7) <= NOT \r8|q\(7);
\r4|ALT_INV_q\(7) <= NOT \r4|q\(7);
\r6|ALT_INV_q\(7) <= NOT \r6|q\(7);
\r2|ALT_INV_q\(7) <= NOT \r2|q\(7);
\r5|ALT_INV_q\(6) <= NOT \r5|q\(6);
\r1|ALT_INV_q\(6) <= NOT \r1|q\(6);
\r7|ALT_INV_q\(6) <= NOT \r7|q\(6);
\r3|ALT_INV_q\(6) <= NOT \r3|q\(6);
\r8|ALT_INV_q\(6) <= NOT \r8|q\(6);
\r4|ALT_INV_q\(6) <= NOT \r4|q\(6);
\r6|ALT_INV_q\(6) <= NOT \r6|q\(6);
\r2|ALT_INV_q\(6) <= NOT \r2|q\(6);
\r5|ALT_INV_q\(5) <= NOT \r5|q\(5);
\r1|ALT_INV_q\(5) <= NOT \r1|q\(5);
\r7|ALT_INV_q\(5) <= NOT \r7|q\(5);
\r3|ALT_INV_q\(5) <= NOT \r3|q\(5);
\r8|ALT_INV_q\(5) <= NOT \r8|q\(5);
\r4|ALT_INV_q\(5) <= NOT \r4|q\(5);
\r6|ALT_INV_q\(5) <= NOT \r6|q\(5);
\r2|ALT_INV_q\(5) <= NOT \r2|q\(5);
\r5|ALT_INV_q\(4) <= NOT \r5|q\(4);
\r1|ALT_INV_q\(4) <= NOT \r1|q\(4);
\r7|ALT_INV_q\(4) <= NOT \r7|q\(4);
\r3|ALT_INV_q\(4) <= NOT \r3|q\(4);
\r8|ALT_INV_q\(4) <= NOT \r8|q\(4);
\r4|ALT_INV_q\(4) <= NOT \r4|q\(4);
\r6|ALT_INV_q\(4) <= NOT \r6|q\(4);
\r2|ALT_INV_q\(4) <= NOT \r2|q\(4);
\r5|ALT_INV_q\(3) <= NOT \r5|q\(3);
\r1|ALT_INV_q\(3) <= NOT \r1|q\(3);
\r7|ALT_INV_q\(3) <= NOT \r7|q\(3);
\r3|ALT_INV_q\(3) <= NOT \r3|q\(3);
\r8|ALT_INV_q\(3) <= NOT \r8|q\(3);
\r4|ALT_INV_q\(3) <= NOT \r4|q\(3);
\r6|ALT_INV_q\(3) <= NOT \r6|q\(3);
\r2|ALT_INV_q\(3) <= NOT \r2|q\(3);
\r5|ALT_INV_q\(2) <= NOT \r5|q\(2);
\r1|ALT_INV_q\(2) <= NOT \r1|q\(2);
\r7|ALT_INV_q\(2) <= NOT \r7|q\(2);
\r3|ALT_INV_q\(2) <= NOT \r3|q\(2);
\r8|ALT_INV_q\(2) <= NOT \r8|q\(2);
\r4|ALT_INV_q\(2) <= NOT \r4|q\(2);
\r6|ALT_INV_q\(2) <= NOT \r6|q\(2);
\r2|ALT_INV_q\(2) <= NOT \r2|q\(2);
\r5|ALT_INV_q\(1) <= NOT \r5|q\(1);
\r1|ALT_INV_q\(1) <= NOT \r1|q\(1);
\r7|ALT_INV_q\(1) <= NOT \r7|q\(1);
\r3|ALT_INV_q\(1) <= NOT \r3|q\(1);
\r8|ALT_INV_q\(1) <= NOT \r8|q\(1);

-- Location: IOOBUF_X60_Y0_N2
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X64_Y0_N36
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X72_Y0_N19
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X72_Y0_N2
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X66_Y0_N93
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X89_Y6_N22
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X66_Y0_N59
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X66_Y0_N76
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X68_Y0_N36
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X68_Y0_N2
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X89_Y4_N45
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X89_Y6_N56
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X74_Y81_N59
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X89_Y8_N56
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X64_Y0_N53
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X62_Y0_N36
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOIBUF_X72_Y0_N52
\ler_escrever~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ler_escrever,
	o => \ler_escrever~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\seletor[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\seletor[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(2),
	o => \seletor[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\seletor[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

-- Location: MLABCELL_X72_Y3_N27
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\seletor[0]~input_o\ & ( (!\seletor[2]~input_o\ & \seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seletor[2]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X72_Y3_N30
\registrador_escolhido[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(2) = ( registrador_escolhido(2) & ( (!\ler_escrever~input_o\) # (\Equal0~2_combout\) ) ) # ( !registrador_escolhido(2) & ( (\ler_escrever~input_o\ & \Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ler_escrever~input_o\,
	datac => \ALT_INV_Equal0~2_combout\,
	dataf => ALT_INV_registrador_escolhido(2),
	combout => registrador_escolhido(2));

-- Location: IOIBUF_X70_Y0_N18
\resetar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetar,
	o => \resetar~input_o\);

-- Location: LABCELL_X71_Y3_N18
\r3|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(0) = ( \r3|q\(0) & ( (!\resetar~input_o\ & ((!registrador_escolhido(2)) # (\entrada[0]~input_o\))) ) ) # ( !\r3|q\(0) & ( (\entrada[0]~input_o\ & (registrador_escolhido(2) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[0]~input_o\,
	datac => ALT_INV_registrador_escolhido(2),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r3|ALT_INV_q\(0),
	combout => \r3|q\(0));

-- Location: MLABCELL_X72_Y3_N54
\registrador_escolhido[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \registrador_escolhido[6]~2_combout\ = ( \seletor[2]~input_o\ & ( (!\seletor[0]~input_o\ & \seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[2]~input_o\,
	combout => \registrador_escolhido[6]~2_combout\);

-- Location: MLABCELL_X72_Y3_N48
\registrador_escolhido[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(6) = ( registrador_escolhido(6) & ( (!\ler_escrever~input_o\) # (\registrador_escolhido[6]~2_combout\) ) ) # ( !registrador_escolhido(6) & ( (\registrador_escolhido[6]~2_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_registrador_escolhido[6]~2_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(6),
	combout => registrador_escolhido(6));

-- Location: LABCELL_X71_Y3_N51
\r7|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(0) = ( \r7|q\(0) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[0]~input_o\))) ) ) # ( !\r7|q\(0) & ( (\entrada[0]~input_o\ & (registrador_escolhido(6) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[0]~input_o\,
	datac => ALT_INV_registrador_escolhido(6),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r7|ALT_INV_q\(0),
	combout => \r7|q\(0));

-- Location: LABCELL_X70_Y3_N39
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\seletor[0]~input_o\ & ( (!\seletor[2]~input_o\ & !\seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_seletor[2]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[0]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X72_Y3_N15
\registrador_escolhido[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(0) = ( registrador_escolhido(0) & ( (!\ler_escrever~input_o\) # (\Equal0~3_combout\) ) ) # ( !registrador_escolhido(0) & ( (\Equal0~3_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(0),
	combout => registrador_escolhido(0));

-- Location: LABCELL_X71_Y3_N36
\r1|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(0) = ( registrador_escolhido(0) & ( (\entrada[0]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r1|ALT_INV_q\(0),
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(0));

-- Location: LABCELL_X70_Y3_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\seletor[0]~input_o\ & ( (\seletor[2]~input_o\ & !\seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[0]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X72_Y3_N39
\registrador_escolhido[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(4) = ( registrador_escolhido(4) & ( (!\ler_escrever~input_o\) # (\Equal0~4_combout\) ) ) # ( !registrador_escolhido(4) & ( (\Equal0~4_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(4),
	combout => registrador_escolhido(4));

-- Location: LABCELL_X71_Y3_N9
\r5|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(0) = ( registrador_escolhido(4) & ( (\entrada[0]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(4) & ( (\r5|q\(0) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[0]~input_o\,
	datab => \r5|ALT_INV_q\(0),
	datac => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(0));

-- Location: LABCELL_X71_Y3_N24
\saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[0]~1_combout\ = ( \r1|q\(0) & ( \r5|q\(0) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & (\r3|q\(0))) # (\seletor[2]~input_o\ & ((\r7|q\(0))))) ) ) ) # ( !\r1|q\(0) & ( \r5|q\(0) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\)))) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(0))) # (\seletor[2]~input_o\ & ((\r7|q\(0)))))) ) ) ) # ( \r1|q\(0) & ( !\r5|q\(0) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & 
-- (\r3|q\(0))) # (\seletor[2]~input_o\ & ((\r7|q\(0)))))) ) ) ) # ( !\r1|q\(0) & ( !\r5|q\(0) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(0))) # (\seletor[2]~input_o\ & ((\r7|q\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r3|ALT_INV_q\(0),
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \r7|ALT_INV_q\(0),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r1|ALT_INV_q\(0),
	dataf => \r5|ALT_INV_q\(0),
	combout => \saida[0]~1_combout\);

-- Location: LABCELL_X71_Y3_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\seletor[2]~input_o\ & ( (\seletor[0]~input_o\ & \seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X71_Y3_N6
\registrador_escolhido[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(3) = ( registrador_escolhido(3) & ( (!\ler_escrever~input_o\) # (\Equal0~1_combout\) ) ) # ( !registrador_escolhido(3) & ( (\Equal0~1_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(3),
	combout => registrador_escolhido(3));

-- Location: LABCELL_X71_Y3_N54
\r4|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(0) = ( \r4|q\(0) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[0]~input_o\))) ) ) # ( !\r4|q\(0) & ( (!\resetar~input_o\ & (\entrada[0]~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(0),
	combout => \r4|q\(0));

-- Location: LABCELL_X73_Y3_N48
\registrador_escolhido[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \registrador_escolhido[7]~1_combout\ = ( \seletor[2]~input_o\ & ( (!\seletor[1]~input_o\) # (!\seletor[0]~input_o\) ) ) # ( !\seletor[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	dataf => \ALT_INV_seletor[2]~input_o\,
	combout => \registrador_escolhido[7]~1_combout\);

-- Location: LABCELL_X73_Y3_N33
\registrador_escolhido[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(7) = (!\ler_escrever~input_o\ & (registrador_escolhido(7))) # (\ler_escrever~input_o\ & ((!\registrador_escolhido[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000001010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_registrador_escolhido(7),
	datac => \ALT_INV_registrador_escolhido[7]~1_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	combout => registrador_escolhido(7));

-- Location: LABCELL_X71_Y3_N30
\r8|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(0) = ( \r8|q\(0) & ( (!\resetar~input_o\ & ((!registrador_escolhido(7)) # (\entrada[0]~input_o\))) ) ) # ( !\r8|q\(0) & ( (!\resetar~input_o\ & (\entrada[0]~input_o\ & registrador_escolhido(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => ALT_INV_registrador_escolhido(7),
	dataf => \r8|ALT_INV_q\(0),
	combout => \r8|q\(0));

-- Location: LABCELL_X71_Y3_N48
\registrador_escolhido[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \registrador_escolhido[5]~0_combout\ = ( \seletor[2]~input_o\ & ( (\seletor[0]~input_o\ & !\seletor[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	dataf => \ALT_INV_seletor[2]~input_o\,
	combout => \registrador_escolhido[5]~0_combout\);

-- Location: LABCELL_X71_Y3_N21
\registrador_escolhido[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(5) = ( registrador_escolhido(5) & ( (!\ler_escrever~input_o\) # (\registrador_escolhido[5]~0_combout\) ) ) # ( !registrador_escolhido(5) & ( (\registrador_escolhido[5]~0_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_registrador_escolhido[5]~0_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(5),
	combout => registrador_escolhido(5));

-- Location: LABCELL_X71_Y3_N3
\r6|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(0) = ( \entrada[0]~input_o\ & ( (!\resetar~input_o\ & ((\r6|q\(0)) # (registrador_escolhido(5)))) ) ) # ( !\entrada[0]~input_o\ & ( (!\resetar~input_o\ & (!registrador_escolhido(5) & \r6|q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(5),
	datad => \r6|ALT_INV_q\(0),
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \r6|q\(0));

-- Location: LABCELL_X70_Y3_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & !\seletor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[2]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X71_Y3_N39
\registrador_escolhido[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- registrador_escolhido(1) = ( registrador_escolhido(1) & ( (!\ler_escrever~input_o\) # (\Equal0~0_combout\) ) ) # ( !registrador_escolhido(1) & ( (\Equal0~0_combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => ALT_INV_registrador_escolhido(1),
	combout => registrador_escolhido(1));

-- Location: LABCELL_X71_Y3_N57
\r2|q[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(0) = ( \r2|q\(0) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[0]~input_o\))) ) ) # ( !\r2|q\(0) & ( (!\resetar~input_o\ & (registrador_escolhido(1) & \entrada[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(1),
	datad => \ALT_INV_entrada[0]~input_o\,
	dataf => \r2|ALT_INV_q\(0),
	combout => \r2|q\(0));

-- Location: LABCELL_X71_Y3_N42
\saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[0]~0_combout\ = ( \r6|q\(0) & ( \r2|q\(0) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & (\r4|q\(0))) # (\seletor[2]~input_o\ & ((\r8|q\(0))))) ) ) ) # ( !\r6|q\(0) & ( \r2|q\(0) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\)) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r4|q\(0))) # (\seletor[2]~input_o\ & ((\r8|q\(0)))))) ) ) ) # ( \r6|q\(0) & ( !\r2|q\(0) & ( (!\seletor[1]~input_o\ & (\seletor[2]~input_o\)) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & 
-- (\r4|q\(0))) # (\seletor[2]~input_o\ & ((\r8|q\(0)))))) ) ) ) # ( !\r6|q\(0) & ( !\r2|q\(0) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r4|q\(0))) # (\seletor[2]~input_o\ & ((\r8|q\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r4|ALT_INV_q\(0),
	datad => \r8|ALT_INV_q\(0),
	datae => \r6|ALT_INV_q\(0),
	dataf => \r2|ALT_INV_q\(0),
	combout => \saida[0]~0_combout\);

-- Location: LABCELL_X71_Y3_N12
\saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[0]~2_combout\ = ( \saida[0]~0_combout\ & ( (\saida[0]~1_combout\) # (\seletor[0]~input_o\) ) ) # ( !\saida[0]~0_combout\ & ( (!\seletor[0]~input_o\ & \saida[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[0]~1_combout\,
	dataf => \ALT_INV_saida[0]~0_combout\,
	combout => \saida[0]~2_combout\);

-- Location: LABCELL_X71_Y3_N15
\saida[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[0]$latch~combout\ = ( \saida[0]~2_combout\ & ( (!\ler_escrever~input_o\) # (\saida[0]$latch~combout\) ) ) # ( !\saida[0]~2_combout\ & ( (\saida[0]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[0]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[0]~2_combout\,
	combout => \saida[0]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N18
\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LABCELL_X70_Y3_N3
\r6|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(1) = ( registrador_escolhido(5) & ( (\entrada[1]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r6|ALT_INV_q\(1),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(1));

-- Location: LABCELL_X71_Y3_N0
\r2|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(1) = (!\resetar~input_o\ & ((!registrador_escolhido(1) & ((\r2|q\(1)))) # (registrador_escolhido(1) & (\entrada[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => ALT_INV_registrador_escolhido(1),
	datac => \ALT_INV_entrada[1]~input_o\,
	datad => \r2|ALT_INV_q\(1),
	combout => \r2|q\(1));

-- Location: LABCELL_X70_Y3_N27
\r8|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(1) = ( \r8|q\(1) & ( (!\resetar~input_o\ & ((!registrador_escolhido(7)) # (\entrada[1]~input_o\))) ) ) # ( !\r8|q\(1) & ( (\entrada[1]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(7),
	dataf => \r8|ALT_INV_q\(1),
	combout => \r8|q\(1));

-- Location: LABCELL_X70_Y3_N24
\r4|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(1) = ( \r4|q\(1) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[1]~input_o\))) ) ) # ( !\r4|q\(1) & ( (\entrada[1]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(1),
	combout => \r4|q\(1));

-- Location: LABCELL_X70_Y3_N54
\saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[1]~3_combout\ = ( \r8|q\(1) & ( \r4|q\(1) & ( ((!\seletor[2]~input_o\ & ((\r2|q\(1)))) # (\seletor[2]~input_o\ & (\r6|q\(1)))) # (\seletor[1]~input_o\) ) ) ) # ( !\r8|q\(1) & ( \r4|q\(1) & ( (!\seletor[2]~input_o\ & (((\seletor[1]~input_o\) # 
-- (\r2|q\(1))))) # (\seletor[2]~input_o\ & (\r6|q\(1) & ((!\seletor[1]~input_o\)))) ) ) ) # ( \r8|q\(1) & ( !\r4|q\(1) & ( (!\seletor[2]~input_o\ & (((\r2|q\(1) & !\seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # (\r6|q\(1)))) 
-- ) ) ) # ( !\r8|q\(1) & ( !\r4|q\(1) & ( (!\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r2|q\(1)))) # (\seletor[2]~input_o\ & (\r6|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r6|ALT_INV_q\(1),
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r2|ALT_INV_q\(1),
	datad => \ALT_INV_seletor[1]~input_o\,
	datae => \r8|ALT_INV_q\(1),
	dataf => \r4|ALT_INV_q\(1),
	combout => \saida[1]~3_combout\);

-- Location: LABCELL_X70_Y3_N18
\r5|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(1) = ( registrador_escolhido(4) & ( \r5|q\(1) & ( (\entrada[1]~input_o\ & !\resetar~input_o\) ) ) ) # ( !registrador_escolhido(4) & ( \r5|q\(1) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(4) & ( !\r5|q\(1) & ( (\entrada[1]~input_o\ & 
-- !\resetar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(1),
	combout => \r5|q\(1));

-- Location: LABCELL_X70_Y3_N45
\r7|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(1) = ( \r7|q\(1) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[1]~input_o\))) ) ) # ( !\r7|q\(1) & ( (!\resetar~input_o\ & (registrador_escolhido(6) & \entrada[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101000000000000010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(6),
	datad => \ALT_INV_entrada[1]~input_o\,
	datae => \r7|ALT_INV_q\(1),
	combout => \r7|q\(1));

-- Location: LABCELL_X70_Y3_N36
\r3|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(1) = ( registrador_escolhido(2) & ( (\entrada[1]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (!\resetar~input_o\ & \r3|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r3|ALT_INV_q\(1),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(1));

-- Location: LABCELL_X70_Y3_N48
\r1|q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(1) = ( registrador_escolhido(0) & ( \r1|q\(1) & ( (\entrada[1]~input_o\ & !\resetar~input_o\) ) ) ) # ( !registrador_escolhido(0) & ( \r1|q\(1) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(0) & ( !\r1|q\(1) & ( (\entrada[1]~input_o\ & 
-- !\resetar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(1),
	combout => \r1|q\(1));

-- Location: LABCELL_X70_Y3_N6
\saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[1]~4_combout\ = ( \r3|q\(1) & ( \r1|q\(1) & ( (!\seletor[2]~input_o\) # ((!\seletor[1]~input_o\ & (\r5|q\(1))) # (\seletor[1]~input_o\ & ((\r7|q\(1))))) ) ) ) # ( !\r3|q\(1) & ( \r1|q\(1) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)))) # 
-- (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r5|q\(1))) # (\seletor[1]~input_o\ & ((\r7|q\(1)))))) ) ) ) # ( \r3|q\(1) & ( !\r1|q\(1) & ( (!\seletor[2]~input_o\ & (((\seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & 
-- (\r5|q\(1))) # (\seletor[1]~input_o\ & ((\r7|q\(1)))))) ) ) ) # ( !\r3|q\(1) & ( !\r1|q\(1) & ( (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r5|q\(1))) # (\seletor[1]~input_o\ & ((\r7|q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r5|ALT_INV_q\(1),
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r7|ALT_INV_q\(1),
	datae => \r3|ALT_INV_q\(1),
	dataf => \r1|ALT_INV_q\(1),
	combout => \saida[1]~4_combout\);

-- Location: LABCELL_X70_Y3_N12
\saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[1]~5_combout\ = ( \saida[1]~4_combout\ & ( (!\seletor[0]~input_o\) # (\saida[1]~3_combout\) ) ) # ( !\saida[1]~4_combout\ & ( (\seletor[0]~input_o\ & \saida[1]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[1]~3_combout\,
	dataf => \ALT_INV_saida[1]~4_combout\,
	combout => \saida[1]~5_combout\);

-- Location: LABCELL_X70_Y3_N33
\saida[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[1]$latch~combout\ = ( \ler_escrever~input_o\ & ( \saida[1]~5_combout\ & ( \saida[1]$latch~combout\ ) ) ) # ( !\ler_escrever~input_o\ & ( \saida[1]~5_combout\ ) ) # ( \ler_escrever~input_o\ & ( !\saida[1]~5_combout\ & ( \saida[1]$latch~combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_saida[1]$latch~combout\,
	datae => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[1]~5_combout\,
	combout => \saida[1]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N1
\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: MLABCELL_X72_Y3_N0
\r8|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(2) = ( registrador_escolhido(7) & ( (!\resetar~input_o\ & \entrada[2]~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[2]~input_o\,
	datad => \r8|ALT_INV_q\(2),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(2));

-- Location: MLABCELL_X72_Y3_N57
\r4|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(2) = ( \r4|q\(2) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[2]~input_o\))) ) ) # ( !\r4|q\(2) & ( (!\resetar~input_o\ & (registrador_escolhido(3) & \entrada[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(3),
	datad => \ALT_INV_entrada[2]~input_o\,
	dataf => \r4|ALT_INV_q\(2),
	combout => \r4|q\(2));

-- Location: MLABCELL_X72_Y3_N3
\r2|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(2) = ( registrador_escolhido(1) & ( (!\resetar~input_o\ & \entrada[2]~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[2]~input_o\,
	datad => \r2|ALT_INV_q\(2),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(2));

-- Location: MLABCELL_X72_Y3_N24
\r6|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(2) = ( \r6|q\(2) & ( (!\resetar~input_o\ & ((!registrador_escolhido(5)) # (\entrada[2]~input_o\))) ) ) # ( !\r6|q\(2) & ( (\entrada[2]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(5),
	dataf => \r6|ALT_INV_q\(2),
	combout => \r6|q\(2));

-- Location: MLABCELL_X72_Y3_N18
\saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[2]~6_combout\ = ( \r2|q\(2) & ( \r6|q\(2) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & ((\r4|q\(2)))) # (\seletor[2]~input_o\ & (\r8|q\(2)))) ) ) ) # ( !\r2|q\(2) & ( \r6|q\(2) & ( (!\seletor[1]~input_o\ & (\seletor[2]~input_o\)) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r4|q\(2)))) # (\seletor[2]~input_o\ & (\r8|q\(2))))) ) ) ) # ( \r2|q\(2) & ( !\r6|q\(2) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\)) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & 
-- ((\r4|q\(2)))) # (\seletor[2]~input_o\ & (\r8|q\(2))))) ) ) ) # ( !\r2|q\(2) & ( !\r6|q\(2) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r4|q\(2)))) # (\seletor[2]~input_o\ & (\r8|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r8|ALT_INV_q\(2),
	datad => \r4|ALT_INV_q\(2),
	datae => \r2|ALT_INV_q\(2),
	dataf => \r6|ALT_INV_q\(2),
	combout => \saida[2]~6_combout\);

-- Location: MLABCELL_X72_Y3_N51
\r7|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(2) = ( \r7|q\(2) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[2]~input_o\))) ) ) # ( !\r7|q\(2) & ( (registrador_escolhido(6) & (\entrada[2]~input_o\ & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_registrador_escolhido(6),
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r7|ALT_INV_q\(2),
	combout => \r7|q\(2));

-- Location: MLABCELL_X72_Y3_N33
\r1|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(2) = ( \r1|q\(2) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[2]~input_o\))) ) ) # ( !\r1|q\(2) & ( (\entrada[2]~input_o\ & (registrador_escolhido(0) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => ALT_INV_registrador_escolhido(0),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r1|ALT_INV_q\(2),
	combout => \r1|q\(2));

-- Location: MLABCELL_X72_Y3_N36
\r3|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(2) = ( registrador_escolhido(2) & ( (\entrada[2]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (!\resetar~input_o\ & \r3|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r3|ALT_INV_q\(2),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(2));

-- Location: MLABCELL_X72_Y3_N12
\r5|q[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(2) = ( \r5|q\(2) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[2]~input_o\))) ) ) # ( !\r5|q\(2) & ( (registrador_escolhido(4) & (!\resetar~input_o\ & \entrada[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_registrador_escolhido(4),
	datac => \ALT_INV_resetar~input_o\,
	datad => \ALT_INV_entrada[2]~input_o\,
	dataf => \r5|ALT_INV_q\(2),
	combout => \r5|q\(2));

-- Location: MLABCELL_X72_Y3_N6
\saida[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[2]~7_combout\ = ( \r3|q\(2) & ( \r5|q\(2) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\) # (\r1|q\(2))))) # (\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)) # (\r7|q\(2)))) ) ) ) # ( !\r3|q\(2) & ( \r5|q\(2) & ( (!\seletor[1]~input_o\ & 
-- (((\seletor[2]~input_o\) # (\r1|q\(2))))) # (\seletor[1]~input_o\ & (\r7|q\(2) & ((\seletor[2]~input_o\)))) ) ) ) # ( \r3|q\(2) & ( !\r5|q\(2) & ( (!\seletor[1]~input_o\ & (((\r1|q\(2) & !\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & 
-- (((!\seletor[2]~input_o\)) # (\r7|q\(2)))) ) ) ) # ( !\r3|q\(2) & ( !\r5|q\(2) & ( (!\seletor[1]~input_o\ & (((\r1|q\(2) & !\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & (\r7|q\(2) & ((\seletor[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \r7|ALT_INV_q\(2),
	datac => \r1|ALT_INV_q\(2),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r3|ALT_INV_q\(2),
	dataf => \r5|ALT_INV_q\(2),
	combout => \saida[2]~7_combout\);

-- Location: MLABCELL_X72_Y3_N42
\saida[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[2]~8_combout\ = ( \saida[2]~7_combout\ & ( (!\seletor[0]~input_o\) # (\saida[2]~6_combout\) ) ) # ( !\saida[2]~7_combout\ & ( (\seletor[0]~input_o\ & \saida[2]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[2]~6_combout\,
	dataf => \ALT_INV_saida[2]~7_combout\,
	combout => \saida[2]~8_combout\);

-- Location: MLABCELL_X72_Y3_N45
\saida[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[2]$latch~combout\ = ( \saida[2]~8_combout\ & ( (!\ler_escrever~input_o\) # (\saida[2]$latch~combout\) ) ) # ( !\saida[2]~8_combout\ & ( (\ler_escrever~input_o\ & \saida[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[2]$latch~combout\,
	dataf => \ALT_INV_saida[2]~8_combout\,
	combout => \saida[2]$latch~combout\);

-- Location: IOIBUF_X89_Y6_N4
\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LABCELL_X74_Y3_N45
\r8|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(3) = ( registrador_escolhido(7) & ( (!\resetar~input_o\ & \entrada[3]~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datad => \r8|ALT_INV_q\(3),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(3));

-- Location: LABCELL_X74_Y3_N42
\r6|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(3) = ( \r6|q\(3) & ( (!\resetar~input_o\ & ((!registrador_escolhido(5)) # (\entrada[3]~input_o\))) ) ) # ( !\r6|q\(3) & ( (!\resetar~input_o\ & (\entrada[3]~input_o\ & registrador_escolhido(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datad => ALT_INV_registrador_escolhido(5),
	dataf => \r6|ALT_INV_q\(3),
	combout => \r6|q\(3));

-- Location: LABCELL_X74_Y3_N3
\r4|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(3) = ( \r4|q\(3) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[3]~input_o\))) ) ) # ( !\r4|q\(3) & ( (!\resetar~input_o\ & (\entrada[3]~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[3]~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(3),
	combout => \r4|q\(3));

-- Location: LABCELL_X74_Y3_N12
\r2|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(3) = ( \r2|q\(3) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[3]~input_o\))) ) ) # ( !\r2|q\(3) & ( (!\resetar~input_o\ & (\entrada[3]~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(3),
	combout => \r2|q\(3));

-- Location: LABCELL_X73_Y3_N18
\saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[3]~9_combout\ = ( \r4|q\(3) & ( \r2|q\(3) & ( (!\seletor[2]~input_o\) # ((!\seletor[1]~input_o\ & ((\r6|q\(3)))) # (\seletor[1]~input_o\ & (\r8|q\(3)))) ) ) ) # ( !\r4|q\(3) & ( \r2|q\(3) & ( (!\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # 
-- ((\r6|q\(3))))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & (\r8|q\(3)))) ) ) ) # ( \r4|q\(3) & ( !\r2|q\(3) & ( (!\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r6|q\(3))))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r8|q\(3))))) ) 
-- ) ) # ( !\r4|q\(3) & ( !\r2|q\(3) & ( (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r6|q\(3)))) # (\seletor[1]~input_o\ & (\r8|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r8|ALT_INV_q\(3),
	datad => \r6|ALT_INV_q\(3),
	datae => \r4|ALT_INV_q\(3),
	dataf => \r2|ALT_INV_q\(3),
	combout => \saida[3]~9_combout\);

-- Location: LABCELL_X73_Y2_N54
\r3|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(3) = ( registrador_escolhido(2) & ( (\entrada[3]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (!\resetar~input_o\ & \r3|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r3|ALT_INV_q\(3),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(3));

-- Location: LABCELL_X73_Y2_N45
\r7|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(3) = ( registrador_escolhido(6) & ( (\entrada[3]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(6) & ( (!\resetar~input_o\ & \r7|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r7|ALT_INV_q\(3),
	dataf => ALT_INV_registrador_escolhido(6),
	combout => \r7|q\(3));

-- Location: LABCELL_X73_Y2_N57
\r1|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(3) = ( registrador_escolhido(0) & ( (\entrada[3]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r1|ALT_INV_q\(3),
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(3));

-- Location: LABCELL_X73_Y2_N42
\r5|q[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(3) = ( \r5|q\(3) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[3]~input_o\))) ) ) # ( !\r5|q\(3) & ( (\entrada[3]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(3),
	combout => \r5|q\(3));

-- Location: LABCELL_X73_Y2_N24
\saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[3]~10_combout\ = ( \r1|q\(3) & ( \r5|q\(3) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & (\r3|q\(3))) # (\seletor[2]~input_o\ & ((\r7|q\(3))))) ) ) ) # ( !\r1|q\(3) & ( \r5|q\(3) & ( (!\seletor[2]~input_o\ & (\r3|q\(3) & 
-- ((\seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r7|q\(3))))) ) ) ) # ( \r1|q\(3) & ( !\r5|q\(3) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)) # (\r3|q\(3)))) # (\seletor[2]~input_o\ & (((\r7|q\(3) & 
-- \seletor[1]~input_o\)))) ) ) ) # ( !\r1|q\(3) & ( !\r5|q\(3) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(3))) # (\seletor[2]~input_o\ & ((\r7|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r3|ALT_INV_q\(3),
	datac => \r7|ALT_INV_q\(3),
	datad => \ALT_INV_seletor[1]~input_o\,
	datae => \r1|ALT_INV_q\(3),
	dataf => \r5|ALT_INV_q\(3),
	combout => \saida[3]~10_combout\);

-- Location: LABCELL_X73_Y3_N12
\saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[3]~11_combout\ = ( \saida[3]~10_combout\ & ( (!\seletor[0]~input_o\) # (\saida[3]~9_combout\) ) ) # ( !\saida[3]~10_combout\ & ( (\seletor[0]~input_o\ & \saida[3]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[3]~9_combout\,
	dataf => \ALT_INV_saida[3]~10_combout\,
	combout => \saida[3]~11_combout\);

-- Location: LABCELL_X73_Y3_N15
\saida[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[3]$latch~combout\ = ( \saida[3]~11_combout\ & ( (!\ler_escrever~input_o\) # (\saida[3]$latch~combout\) ) ) # ( !\saida[3]~11_combout\ & ( (\saida[3]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[3]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[3]~11_combout\,
	combout => \saida[3]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N78
\entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: MLABCELL_X72_Y4_N0
\r3|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(4) = (!\resetar~input_o\ & ((!registrador_escolhido(2) & ((\r3|q\(4)))) # (registrador_escolhido(2) & (\entrada[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(2),
	datad => \r3|ALT_INV_q\(4),
	combout => \r3|q\(4));

-- Location: LABCELL_X73_Y4_N51
\r1|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(4) = ( registrador_escolhido(0) & ( \r1|q\(4) & ( (!\resetar~input_o\ & \entrada[4]~input_o\) ) ) ) # ( !registrador_escolhido(0) & ( \r1|q\(4) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(0) & ( !\r1|q\(4) & ( (!\resetar~input_o\ & 
-- \entrada[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[4]~input_o\,
	datae => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(4),
	combout => \r1|q\(4));

-- Location: MLABCELL_X72_Y4_N3
\r7|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(4) = ( \r7|q\(4) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[4]~input_o\))) ) ) # ( !\r7|q\(4) & ( (\entrada[4]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(4),
	combout => \r7|q\(4));

-- Location: LABCELL_X73_Y4_N42
\r5|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(4) = ( registrador_escolhido(4) & ( \r5|q\(4) & ( (\entrada[4]~input_o\ & !\resetar~input_o\) ) ) ) # ( !registrador_escolhido(4) & ( \r5|q\(4) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(4) & ( !\r5|q\(4) & ( (\entrada[4]~input_o\ & 
-- !\resetar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(4),
	combout => \r5|q\(4));

-- Location: MLABCELL_X72_Y4_N6
\saida[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[4]~13_combout\ = ( \r7|q\(4) & ( \r5|q\(4) & ( ((!\seletor[1]~input_o\ & ((\r1|q\(4)))) # (\seletor[1]~input_o\ & (\r3|q\(4)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r7|q\(4) & ( \r5|q\(4) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & 
-- ((\r1|q\(4)))) # (\seletor[1]~input_o\ & (\r3|q\(4))))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( \r7|q\(4) & ( !\r5|q\(4) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(4)))) # (\seletor[1]~input_o\ & 
-- (\r3|q\(4))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)))) ) ) ) # ( !\r7|q\(4) & ( !\r5|q\(4) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(4)))) # (\seletor[1]~input_o\ & (\r3|q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r3|ALT_INV_q\(4),
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r1|ALT_INV_q\(4),
	datad => \ALT_INV_seletor[1]~input_o\,
	datae => \r7|ALT_INV_q\(4),
	dataf => \r5|ALT_INV_q\(4),
	combout => \saida[4]~13_combout\);

-- Location: MLABCELL_X72_Y4_N18
\r4|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(4) = ( registrador_escolhido(3) & ( (\entrada[4]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(3) & ( (\r4|q\(4) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datac => \r4|ALT_INV_q\(4),
	datad => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(4));

-- Location: MLABCELL_X72_Y4_N12
\r6|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(4) = ( \r6|q\(4) & ( (!\resetar~input_o\ & ((!registrador_escolhido(5)) # (\entrada[4]~input_o\))) ) ) # ( !\r6|q\(4) & ( (\entrada[4]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(5),
	dataf => \r6|ALT_INV_q\(4),
	combout => \r6|q\(4));

-- Location: MLABCELL_X72_Y4_N21
\r2|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(4) = ( registrador_escolhido(1) & ( (\entrada[4]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r2|ALT_INV_q\(4),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(4));

-- Location: MLABCELL_X72_Y4_N15
\r8|q[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(4) = ( \r8|q\(4) & ( (!\resetar~input_o\ & ((!registrador_escolhido(7)) # (\entrada[4]~input_o\))) ) ) # ( !\r8|q\(4) & ( (\entrada[4]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[4]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(7),
	dataf => \r8|ALT_INV_q\(4),
	combout => \r8|q\(4));

-- Location: MLABCELL_X72_Y4_N24
\saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[4]~12_combout\ = ( \r2|q\(4) & ( \r8|q\(4) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\) # (\r6|q\(4))))) # (\seletor[1]~input_o\ & (((\seletor[2]~input_o\)) # (\r4|q\(4)))) ) ) ) # ( !\r2|q\(4) & ( \r8|q\(4) & ( (!\seletor[1]~input_o\ & 
-- (((\seletor[2]~input_o\ & \r6|q\(4))))) # (\seletor[1]~input_o\ & (((\seletor[2]~input_o\)) # (\r4|q\(4)))) ) ) ) # ( \r2|q\(4) & ( !\r8|q\(4) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\) # (\r6|q\(4))))) # (\seletor[1]~input_o\ & (\r4|q\(4) & 
-- (!\seletor[2]~input_o\))) ) ) ) # ( !\r2|q\(4) & ( !\r8|q\(4) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\ & \r6|q\(4))))) # (\seletor[1]~input_o\ & (\r4|q\(4) & (!\seletor[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \r4|ALT_INV_q\(4),
	datac => \ALT_INV_seletor[2]~input_o\,
	datad => \r6|ALT_INV_q\(4),
	datae => \r2|ALT_INV_q\(4),
	dataf => \r8|ALT_INV_q\(4),
	combout => \saida[4]~12_combout\);

-- Location: MLABCELL_X72_Y4_N36
\saida[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[4]~14_combout\ = ( \saida[4]~12_combout\ & ( (\saida[4]~13_combout\) # (\seletor[0]~input_o\) ) ) # ( !\saida[4]~12_combout\ & ( (!\seletor[0]~input_o\ & \saida[4]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_saida[4]~13_combout\,
	dataf => \ALT_INV_saida[4]~12_combout\,
	combout => \saida[4]~14_combout\);

-- Location: MLABCELL_X72_Y4_N39
\saida[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[4]$latch~combout\ = ( \saida[4]~14_combout\ & ( (!\ler_escrever~input_o\) # (\saida[4]$latch~combout\) ) ) # ( !\saida[4]~14_combout\ & ( (\saida[4]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[4]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[4]~14_combout\,
	combout => \saida[4]$latch~combout\);

-- Location: IOIBUF_X72_Y0_N35
\entrada[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LABCELL_X75_Y3_N36
\r5|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(5) = ( registrador_escolhido(4) & ( (!\resetar~input_o\ & \entrada[5]~input_o\) ) ) # ( !registrador_escolhido(4) & ( (!\resetar~input_o\ & \r5|q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[5]~input_o\,
	datad => \r5|ALT_INV_q\(5),
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(5));

-- Location: LABCELL_X75_Y3_N39
\r1|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(5) = ( \r1|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[5]~input_o\))) ) ) # ( !\r1|q\(5) & ( (\entrada[5]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[5]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(5),
	combout => \r1|q\(5));

-- Location: LABCELL_X75_Y3_N15
\r7|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(5) = ( \r7|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[5]~input_o\))) ) ) # ( !\r7|q\(5) & ( (!\resetar~input_o\ & (\entrada[5]~input_o\ & registrador_escolhido(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[5]~input_o\,
	datad => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(5),
	combout => \r7|q\(5));

-- Location: LABCELL_X75_Y3_N12
\r3|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(5) = ( \r3|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(2)) # (\entrada[5]~input_o\))) ) ) # ( !\r3|q\(5) & ( (\entrada[5]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[5]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(2),
	dataf => \r3|ALT_INV_q\(5),
	combout => \r3|q\(5));

-- Location: LABCELL_X75_Y3_N48
\saida[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[5]~16_combout\ = ( \r7|q\(5) & ( \r3|q\(5) & ( ((!\seletor[2]~input_o\ & ((\r1|q\(5)))) # (\seletor[2]~input_o\ & (\r5|q\(5)))) # (\seletor[1]~input_o\) ) ) ) # ( !\r7|q\(5) & ( \r3|q\(5) & ( (!\seletor[2]~input_o\ & (((\r1|q\(5)) # 
-- (\seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & (\r5|q\(5) & (!\seletor[1]~input_o\))) ) ) ) # ( \r7|q\(5) & ( !\r3|q\(5) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\ & \r1|q\(5))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # 
-- (\r5|q\(5)))) ) ) ) # ( !\r7|q\(5) & ( !\r3|q\(5) & ( (!\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r1|q\(5)))) # (\seletor[2]~input_o\ & (\r5|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r5|ALT_INV_q\(5),
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r1|ALT_INV_q\(5),
	datae => \r7|ALT_INV_q\(5),
	dataf => \r3|ALT_INV_q\(5),
	combout => \saida[5]~16_combout\);

-- Location: LABCELL_X74_Y3_N6
\r8|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(5) = ( \r8|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(7)) # (\entrada[5]~input_o\))) ) ) # ( !\r8|q\(5) & ( (\entrada[5]~input_o\ & (registrador_escolhido(7) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[5]~input_o\,
	datac => ALT_INV_registrador_escolhido(7),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r8|ALT_INV_q\(5),
	combout => \r8|q\(5));

-- Location: LABCELL_X74_Y3_N9
\r4|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(5) = ( \r4|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[5]~input_o\))) ) ) # ( !\r4|q\(5) & ( (\entrada[5]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[5]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(5),
	combout => \r4|q\(5));

-- Location: LABCELL_X74_Y3_N0
\r6|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(5) = ( registrador_escolhido(5) & ( (\entrada[5]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[5]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r6|ALT_INV_q\(5),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(5));

-- Location: LABCELL_X74_Y3_N15
\r2|q[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(5) = ( \r2|q\(5) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[5]~input_o\))) ) ) # ( !\r2|q\(5) & ( (!\resetar~input_o\ & (\entrada[5]~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[5]~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(5),
	combout => \r2|q\(5));

-- Location: LABCELL_X74_Y3_N48
\saida[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[5]~15_combout\ = ( \r6|q\(5) & ( \r2|q\(5) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & ((\r4|q\(5)))) # (\seletor[2]~input_o\ & (\r8|q\(5)))) ) ) ) # ( !\r6|q\(5) & ( \r2|q\(5) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # 
-- (\r4|q\(5))))) # (\seletor[2]~input_o\ & (\r8|q\(5) & (\seletor[1]~input_o\))) ) ) ) # ( \r6|q\(5) & ( !\r2|q\(5) & ( (!\seletor[2]~input_o\ & (((\seletor[1]~input_o\ & \r4|q\(5))))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)) # (\r8|q\(5)))) ) ) 
-- ) # ( !\r6|q\(5) & ( !\r2|q\(5) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r4|q\(5)))) # (\seletor[2]~input_o\ & (\r8|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r8|ALT_INV_q\(5),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r4|ALT_INV_q\(5),
	datae => \r6|ALT_INV_q\(5),
	dataf => \r2|ALT_INV_q\(5),
	combout => \saida[5]~15_combout\);

-- Location: LABCELL_X75_Y3_N42
\saida[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[5]~17_combout\ = ( \saida[5]~15_combout\ & ( (\saida[5]~16_combout\) # (\seletor[0]~input_o\) ) ) # ( !\saida[5]~15_combout\ & ( (!\seletor[0]~input_o\ & \saida[5]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[5]~16_combout\,
	dataf => \ALT_INV_saida[5]~15_combout\,
	combout => \saida[5]~17_combout\);

-- Location: LABCELL_X75_Y3_N45
\saida[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[5]$latch~combout\ = ( \saida[5]~17_combout\ & ( (!\ler_escrever~input_o\) # (\saida[5]$latch~combout\) ) ) # ( !\saida[5]~17_combout\ & ( (\ler_escrever~input_o\ & \saida[5]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[5]$latch~combout\,
	dataf => \ALT_INV_saida[5]~17_combout\,
	combout => \saida[5]$latch~combout\);

-- Location: IOIBUF_X68_Y0_N52
\entrada[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: MLABCELL_X72_Y2_N24
\r4|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(6) = ( registrador_escolhido(3) & ( (\entrada[6]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(3) & ( (\r4|q\(6) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000001010000010100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r4|ALT_INV_q\(6),
	datab => \ALT_INV_entrada[6]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(6));

-- Location: MLABCELL_X72_Y2_N6
\r2|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(6) = ( \r2|q\(6) & ( registrador_escolhido(1) & ( (\entrada[6]~input_o\ & !\resetar~input_o\) ) ) ) # ( !\r2|q\(6) & ( registrador_escolhido(1) & ( (\entrada[6]~input_o\ & !\resetar~input_o\) ) ) ) # ( \r2|q\(6) & ( !registrador_escolhido(1) & ( 
-- !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[6]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datae => \r2|ALT_INV_q\(6),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(6));

-- Location: MLABCELL_X72_Y2_N3
\r6|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(6) = ( \r6|q\(6) & ( registrador_escolhido(5) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) ) # ( !\r6|q\(6) & ( registrador_escolhido(5) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) ) # ( \r6|q\(6) & ( !registrador_escolhido(5) & ( 
-- !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[6]~input_o\,
	datae => \r6|ALT_INV_q\(6),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(6));

-- Location: MLABCELL_X72_Y2_N39
\r8|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(6) = ( registrador_escolhido(7) & ( \r8|q\(6) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) ) # ( !registrador_escolhido(7) & ( \r8|q\(6) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(7) & ( !\r8|q\(6) & ( (!\resetar~input_o\ & 
-- \entrada[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[6]~input_o\,
	datae => ALT_INV_registrador_escolhido(7),
	dataf => \r8|ALT_INV_q\(6),
	combout => \r8|q\(6));

-- Location: MLABCELL_X72_Y2_N18
\saida[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[6]~18_combout\ = ( \r6|q\(6) & ( \r8|q\(6) & ( ((!\seletor[1]~input_o\ & ((\r2|q\(6)))) # (\seletor[1]~input_o\ & (\r4|q\(6)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r6|q\(6) & ( \r8|q\(6) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & 
-- ((\r2|q\(6))))) # (\seletor[1]~input_o\ & (((\r4|q\(6))) # (\seletor[2]~input_o\))) ) ) ) # ( \r6|q\(6) & ( !\r8|q\(6) & ( (!\seletor[1]~input_o\ & (((\r2|q\(6))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r4|q\(6)))) 
-- ) ) ) # ( !\r6|q\(6) & ( !\r8|q\(6) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r2|q\(6)))) # (\seletor[1]~input_o\ & (\r4|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r4|ALT_INV_q\(6),
	datad => \r2|ALT_INV_q\(6),
	datae => \r6|ALT_INV_q\(6),
	dataf => \r8|ALT_INV_q\(6),
	combout => \saida[6]~18_combout\);

-- Location: LABCELL_X73_Y2_N51
\r3|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(6) = ( registrador_escolhido(2) & ( \r3|q\(6) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) ) # ( !registrador_escolhido(2) & ( \r3|q\(6) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(2) & ( !\r3|q\(6) & ( (!\resetar~input_o\ & 
-- \entrada[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101010101010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datad => \ALT_INV_entrada[6]~input_o\,
	datae => ALT_INV_registrador_escolhido(2),
	dataf => \r3|ALT_INV_q\(6),
	combout => \r3|q\(6));

-- Location: LABCELL_X73_Y2_N39
\r1|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(6) = ( registrador_escolhido(0) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) # ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \r1|ALT_INV_q\(6),
	datad => \ALT_INV_entrada[6]~input_o\,
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(6));

-- Location: LABCELL_X73_Y2_N36
\r7|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(6) = ( registrador_escolhido(6) & ( (!\resetar~input_o\ & \entrada[6]~input_o\) ) ) # ( !registrador_escolhido(6) & ( (!\resetar~input_o\ & \r7|q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[6]~input_o\,
	datad => \r7|ALT_INV_q\(6),
	dataf => ALT_INV_registrador_escolhido(6),
	combout => \r7|q\(6));

-- Location: LABCELL_X73_Y2_N0
\r5|q[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(6) = ( \r5|q\(6) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[6]~input_o\))) ) ) # ( !\r5|q\(6) & ( (\entrada[6]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111100000101000000000000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[6]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	datae => \r5|ALT_INV_q\(6),
	combout => \r5|q\(6));

-- Location: LABCELL_X73_Y2_N30
\saida[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[6]~19_combout\ = ( \r7|q\(6) & ( \r5|q\(6) & ( ((!\seletor[1]~input_o\ & ((\r1|q\(6)))) # (\seletor[1]~input_o\ & (\r3|q\(6)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r7|q\(6) & ( \r5|q\(6) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & 
-- ((\r1|q\(6)))) # (\seletor[1]~input_o\ & (\r3|q\(6))))) # (\seletor[2]~input_o\ & (!\seletor[1]~input_o\)) ) ) ) # ( \r7|q\(6) & ( !\r5|q\(6) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(6)))) # (\seletor[1]~input_o\ & (\r3|q\(6))))) # 
-- (\seletor[2]~input_o\ & (\seletor[1]~input_o\)) ) ) ) # ( !\r7|q\(6) & ( !\r5|q\(6) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(6)))) # (\seletor[1]~input_o\ & (\r3|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \r3|ALT_INV_q\(6),
	datad => \r1|ALT_INV_q\(6),
	datae => \r7|ALT_INV_q\(6),
	dataf => \r5|ALT_INV_q\(6),
	combout => \saida[6]~19_combout\);

-- Location: MLABCELL_X72_Y2_N42
\saida[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[6]~20_combout\ = ( \saida[6]~19_combout\ & ( (!\seletor[0]~input_o\) # (\saida[6]~18_combout\) ) ) # ( !\saida[6]~19_combout\ & ( (\seletor[0]~input_o\ & \saida[6]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[6]~18_combout\,
	dataf => \ALT_INV_saida[6]~19_combout\,
	combout => \saida[6]~20_combout\);

-- Location: MLABCELL_X72_Y2_N45
\saida[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[6]$latch~combout\ = ( \saida[6]~20_combout\ & ( (!\ler_escrever~input_o\) # (\saida[6]$latch~combout\) ) ) # ( !\saida[6]~20_combout\ & ( (\saida[6]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[6]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[6]~20_combout\,
	combout => \saida[6]$latch~combout\);

-- Location: IOIBUF_X68_Y0_N18
\entrada[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: MLABCELL_X72_Y2_N51
\r2|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(7) = ( registrador_escolhido(1) & ( (!\resetar~input_o\ & \entrada[7]~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[7]~input_o\,
	datad => \r2|ALT_INV_q\(7),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(7));

-- Location: MLABCELL_X72_Y2_N57
\r8|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(7) = ( registrador_escolhido(7) & ( (!\resetar~input_o\ & \entrada[7]~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[7]~input_o\,
	datad => \r8|ALT_INV_q\(7),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(7));

-- Location: MLABCELL_X72_Y2_N54
\r6|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(7) = ( registrador_escolhido(5) & ( (!\resetar~input_o\ & \entrada[7]~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[7]~input_o\,
	datad => \r6|ALT_INV_q\(7),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(7));

-- Location: MLABCELL_X72_Y2_N48
\r4|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(7) = (!\resetar~input_o\ & ((!registrador_escolhido(3) & ((\r4|q\(7)))) # (registrador_escolhido(3) & (\entrada[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[7]~input_o\,
	datac => \r4|ALT_INV_q\(7),
	datad => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(7));

-- Location: MLABCELL_X72_Y2_N12
\saida[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[7]~21_combout\ = ( \r6|q\(7) & ( \r4|q\(7) & ( (!\seletor[1]~input_o\ & (((\r2|q\(7))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r8|q\(7))))) ) ) ) # ( !\r6|q\(7) & ( \r4|q\(7) & ( (!\seletor[1]~input_o\ & 
-- (!\seletor[2]~input_o\ & (\r2|q\(7)))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r8|q\(7))))) ) ) ) # ( \r6|q\(7) & ( !\r4|q\(7) & ( (!\seletor[1]~input_o\ & (((\r2|q\(7))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & 
-- (\seletor[2]~input_o\ & ((\r8|q\(7))))) ) ) ) # ( !\r6|q\(7) & ( !\r4|q\(7) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r2|q\(7)))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r8|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r2|ALT_INV_q\(7),
	datad => \r8|ALT_INV_q\(7),
	datae => \r6|ALT_INV_q\(7),
	dataf => \r4|ALT_INV_q\(7),
	combout => \saida[7]~21_combout\);

-- Location: LABCELL_X73_Y2_N21
\r3|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(7) = ( registrador_escolhido(2) & ( (\entrada[7]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (!\resetar~input_o\ & \r3|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[7]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r3|ALT_INV_q\(7),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(7));

-- Location: LABCELL_X73_Y2_N6
\r7|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(7) = ( \r7|q\(7) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[7]~input_o\))) ) ) # ( !\r7|q\(7) & ( (\entrada[7]~input_o\ & (registrador_escolhido(6) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[7]~input_o\,
	datac => ALT_INV_registrador_escolhido(6),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r7|ALT_INV_q\(7),
	combout => \r7|q\(7));

-- Location: LABCELL_X73_Y2_N9
\r5|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(7) = ( \r5|q\(7) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[7]~input_o\))) ) ) # ( !\r5|q\(7) & ( (\entrada[7]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[7]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(7),
	combout => \r5|q\(7));

-- Location: LABCELL_X73_Y2_N18
\r1|q[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(7) = ( registrador_escolhido(0) & ( (\entrada[7]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[7]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r1|ALT_INV_q\(7),
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(7));

-- Location: LABCELL_X73_Y2_N12
\saida[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[7]~22_combout\ = ( \r5|q\(7) & ( \r1|q\(7) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & (\r3|q\(7))) # (\seletor[2]~input_o\ & ((\r7|q\(7))))) ) ) ) # ( !\r5|q\(7) & ( \r1|q\(7) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\)) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(7))) # (\seletor[2]~input_o\ & ((\r7|q\(7)))))) ) ) ) # ( \r5|q\(7) & ( !\r1|q\(7) & ( (!\seletor[1]~input_o\ & (\seletor[2]~input_o\)) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & 
-- (\r3|q\(7))) # (\seletor[2]~input_o\ & ((\r7|q\(7)))))) ) ) ) # ( !\r5|q\(7) & ( !\r1|q\(7) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(7))) # (\seletor[2]~input_o\ & ((\r7|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r3|ALT_INV_q\(7),
	datad => \r7|ALT_INV_q\(7),
	datae => \r5|ALT_INV_q\(7),
	dataf => \r1|ALT_INV_q\(7),
	combout => \saida[7]~22_combout\);

-- Location: MLABCELL_X72_Y2_N33
\saida[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[7]~23_combout\ = ( \saida[7]~22_combout\ & ( (!\seletor[0]~input_o\) # (\saida[7]~21_combout\) ) ) # ( !\saida[7]~22_combout\ & ( (\saida[7]~21_combout\ & \seletor[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[7]~21_combout\,
	datad => \ALT_INV_seletor[0]~input_o\,
	dataf => \ALT_INV_saida[7]~22_combout\,
	combout => \saida[7]~23_combout\);

-- Location: MLABCELL_X72_Y2_N30
\saida[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[7]$latch~combout\ = ( \saida[7]~23_combout\ & ( (!\ler_escrever~input_o\) # (\saida[7]$latch~combout\) ) ) # ( !\saida[7]~23_combout\ & ( (\saida[7]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saida[7]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[7]~23_combout\,
	combout => \saida[7]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N41
\entrada[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: LABCELL_X71_Y2_N39
\r4|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(8) = ( registrador_escolhido(3) & ( \r4|q\(8) & ( (\entrada[8]~input_o\ & !\resetar~input_o\) ) ) ) # ( !registrador_escolhido(3) & ( \r4|q\(8) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(3) & ( !\r4|q\(8) & ( (\entrada[8]~input_o\ & 
-- !\resetar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[8]~input_o\,
	datad => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(8),
	combout => \r4|q\(8));

-- Location: LABCELL_X71_Y2_N18
\r2|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(8) = ( registrador_escolhido(1) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[8]~input_o\,
	datac => \r2|ALT_INV_q\(8),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(8));

-- Location: LABCELL_X71_Y2_N30
\r8|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(8) = ( registrador_escolhido(7) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[8]~input_o\,
	datad => \r8|ALT_INV_q\(8),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(8));

-- Location: LABCELL_X71_Y2_N21
\r6|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(8) = ( registrador_escolhido(5) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[8]~input_o\,
	datad => \r6|ALT_INV_q\(8),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(8));

-- Location: LABCELL_X71_Y2_N42
\saida[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[8]~24_combout\ = ( \seletor[1]~input_o\ & ( \r6|q\(8) & ( (!\seletor[2]~input_o\ & (\r4|q\(8))) # (\seletor[2]~input_o\ & ((\r8|q\(8)))) ) ) ) # ( !\seletor[1]~input_o\ & ( \r6|q\(8) & ( (\r2|q\(8)) # (\seletor[2]~input_o\) ) ) ) # ( 
-- \seletor[1]~input_o\ & ( !\r6|q\(8) & ( (!\seletor[2]~input_o\ & (\r4|q\(8))) # (\seletor[2]~input_o\ & ((\r8|q\(8)))) ) ) ) # ( !\seletor[1]~input_o\ & ( !\r6|q\(8) & ( (!\seletor[2]~input_o\ & \r2|q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r4|ALT_INV_q\(8),
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r2|ALT_INV_q\(8),
	datad => \r8|ALT_INV_q\(8),
	datae => \ALT_INV_seletor[1]~input_o\,
	dataf => \r6|ALT_INV_q\(8),
	combout => \saida[8]~24_combout\);

-- Location: LABCELL_X71_Y2_N24
\r1|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(8) = ( \entrada[8]~input_o\ & ( registrador_escolhido(0) & ( !\resetar~input_o\ ) ) ) # ( \entrada[8]~input_o\ & ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(8)) ) ) ) # ( !\entrada[8]~input_o\ & ( !registrador_escolhido(0) & ( 
-- (!\resetar~input_o\ & \r1|q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \r1|ALT_INV_q\(8),
	datae => \ALT_INV_entrada[8]~input_o\,
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(8));

-- Location: LABCELL_X71_Y2_N9
\r7|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(8) = ( registrador_escolhido(6) & ( \r7|q\(8) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) ) # ( !registrador_escolhido(6) & ( \r7|q\(8) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(6) & ( !\r7|q\(8) & ( (!\resetar~input_o\ & 
-- \entrada[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[8]~input_o\,
	datae => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(8),
	combout => \r7|q\(8));

-- Location: LABCELL_X71_Y2_N0
\r3|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(8) = ( \r3|q\(8) & ( registrador_escolhido(2) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) ) # ( !\r3|q\(8) & ( registrador_escolhido(2) & ( (!\resetar~input_o\ & \entrada[8]~input_o\) ) ) ) # ( \r3|q\(8) & ( !registrador_escolhido(2) & ( 
-- !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[8]~input_o\,
	datae => \r3|ALT_INV_q\(8),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(8));

-- Location: LABCELL_X71_Y2_N15
\r5|q[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(8) = ( registrador_escolhido(4) & ( \r5|q\(8) & ( (\entrada[8]~input_o\ & !\resetar~input_o\) ) ) ) # ( !registrador_escolhido(4) & ( \r5|q\(8) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(4) & ( !\r5|q\(8) & ( (\entrada[8]~input_o\ & 
-- !\resetar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entrada[8]~input_o\,
	datad => \ALT_INV_resetar~input_o\,
	datae => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(8),
	combout => \r5|q\(8));

-- Location: LABCELL_X71_Y2_N54
\saida[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[8]~25_combout\ = ( \r3|q\(8) & ( \r5|q\(8) & ( (!\seletor[1]~input_o\ & (((\r1|q\(8))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r7|q\(8))))) ) ) ) # ( !\r3|q\(8) & ( \r5|q\(8) & ( (!\seletor[1]~input_o\ & 
-- (((\r1|q\(8))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r7|q\(8))))) ) ) ) # ( \r3|q\(8) & ( !\r5|q\(8) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r1|q\(8)))) # (\seletor[1]~input_o\ & 
-- ((!\seletor[2]~input_o\) # ((\r7|q\(8))))) ) ) ) # ( !\r3|q\(8) & ( !\r5|q\(8) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r1|q\(8)))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r7|q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r1|ALT_INV_q\(8),
	datad => \r7|ALT_INV_q\(8),
	datae => \r3|ALT_INV_q\(8),
	dataf => \r5|ALT_INV_q\(8),
	combout => \saida[8]~25_combout\);

-- Location: LABCELL_X71_Y2_N51
\saida[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[8]~26_combout\ = ( \saida[8]~25_combout\ & ( (!\seletor[0]~input_o\) # (\saida[8]~24_combout\) ) ) # ( !\saida[8]~25_combout\ & ( (\seletor[0]~input_o\ & \saida[8]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[8]~24_combout\,
	dataf => \ALT_INV_saida[8]~25_combout\,
	combout => \saida[8]~26_combout\);

-- Location: LABCELL_X71_Y2_N48
\saida[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[8]$latch~combout\ = ( \saida[8]~26_combout\ & ( (!\ler_escrever~input_o\) # (\saida[8]$latch~combout\) ) ) # ( !\saida[8]~26_combout\ & ( (\saida[8]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[8]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[8]~26_combout\,
	combout => \saida[8]$latch~combout\);

-- Location: IOIBUF_X89_Y8_N4
\entrada[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: LABCELL_X73_Y3_N36
\r6|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(9) = (!\resetar~input_o\ & ((!registrador_escolhido(5) & ((\r6|q\(9)))) # (registrador_escolhido(5) & (\entrada[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[9]~input_o\,
	datac => \r6|ALT_INV_q\(9),
	datad => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(9));

-- Location: LABCELL_X73_Y3_N24
\r4|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(9) = (!\resetar~input_o\ & ((!registrador_escolhido(3) & ((\r4|q\(9)))) # (registrador_escolhido(3) & (\entrada[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[9]~input_o\,
	datac => \r4|ALT_INV_q\(9),
	datad => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(9));

-- Location: LABCELL_X73_Y3_N27
\r2|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(9) = ( registrador_escolhido(1) & ( (!\resetar~input_o\ & \entrada[9]~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[9]~input_o\,
	datad => \r2|ALT_INV_q\(9),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(9));

-- Location: LABCELL_X73_Y3_N39
\r8|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(9) = ( registrador_escolhido(7) & ( (\entrada[9]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (\r8|q\(9) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[9]~input_o\,
	datac => \r8|ALT_INV_q\(9),
	datad => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(9));

-- Location: LABCELL_X73_Y3_N42
\saida[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[9]~27_combout\ = ( \r2|q\(9) & ( \r8|q\(9) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)) # (\r6|q\(9)))) # (\seletor[1]~input_o\ & (((\seletor[2]~input_o\) # (\r4|q\(9))))) ) ) ) # ( !\r2|q\(9) & ( \r8|q\(9) & ( (!\seletor[1]~input_o\ & 
-- (\r6|q\(9) & ((\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & (((\seletor[2]~input_o\) # (\r4|q\(9))))) ) ) ) # ( \r2|q\(9) & ( !\r8|q\(9) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)) # (\r6|q\(9)))) # (\seletor[1]~input_o\ & (((\r4|q\(9) & 
-- !\seletor[2]~input_o\)))) ) ) ) # ( !\r2|q\(9) & ( !\r8|q\(9) & ( (!\seletor[1]~input_o\ & (\r6|q\(9) & ((\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & (((\r4|q\(9) & !\seletor[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r6|ALT_INV_q\(9),
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \r4|ALT_INV_q\(9),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r2|ALT_INV_q\(9),
	dataf => \r8|ALT_INV_q\(9),
	combout => \saida[9]~27_combout\);

-- Location: LABCELL_X73_Y3_N51
\r7|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(9) = ( \r7|q\(9) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[9]~input_o\))) ) ) # ( !\r7|q\(9) & ( (\entrada[9]~input_o\ & (registrador_escolhido(6) & !\resetar~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[9]~input_o\,
	datac => ALT_INV_registrador_escolhido(6),
	datad => \ALT_INV_resetar~input_o\,
	dataf => \r7|ALT_INV_q\(9),
	combout => \r7|q\(9));

-- Location: LABCELL_X73_Y3_N3
\r3|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(9) = ( registrador_escolhido(2) & ( (!\resetar~input_o\ & \entrada[9]~input_o\) ) ) # ( !registrador_escolhido(2) & ( (!\resetar~input_o\ & \r3|q\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[9]~input_o\,
	datad => \r3|ALT_INV_q\(9),
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(9));

-- Location: LABCELL_X73_Y3_N0
\r1|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(9) = ( \r1|q\(9) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[9]~input_o\))) ) ) # ( !\r1|q\(9) & ( (!\resetar~input_o\ & (\entrada[9]~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datab => \ALT_INV_entrada[9]~input_o\,
	datad => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(9),
	combout => \r1|q\(9));

-- Location: LABCELL_X73_Y3_N30
\r5|q[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(9) = ( registrador_escolhido(4) & ( (!\resetar~input_o\ & \entrada[9]~input_o\) ) ) # ( !registrador_escolhido(4) & ( (\r5|q\(9) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r5|ALT_INV_q\(9),
	datac => \ALT_INV_resetar~input_o\,
	datad => \ALT_INV_entrada[9]~input_o\,
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(9));

-- Location: LABCELL_X73_Y3_N6
\saida[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[9]~28_combout\ = ( \r1|q\(9) & ( \r5|q\(9) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & ((\r3|q\(9)))) # (\seletor[2]~input_o\ & (\r7|q\(9)))) ) ) ) # ( !\r1|q\(9) & ( \r5|q\(9) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\)))) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r3|q\(9)))) # (\seletor[2]~input_o\ & (\r7|q\(9))))) ) ) ) # ( \r1|q\(9) & ( !\r5|q\(9) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & 
-- ((\r3|q\(9)))) # (\seletor[2]~input_o\ & (\r7|q\(9))))) ) ) ) # ( !\r1|q\(9) & ( !\r5|q\(9) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & ((\r3|q\(9)))) # (\seletor[2]~input_o\ & (\r7|q\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \r7|ALT_INV_q\(9),
	datac => \r3|ALT_INV_q\(9),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r1|ALT_INV_q\(9),
	dataf => \r5|ALT_INV_q\(9),
	combout => \saida[9]~28_combout\);

-- Location: LABCELL_X73_Y3_N57
\saida[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[9]~29_combout\ = ( \saida[9]~28_combout\ & ( (!\seletor[0]~input_o\) # (\saida[9]~27_combout\) ) ) # ( !\saida[9]~28_combout\ & ( (\seletor[0]~input_o\ & \saida[9]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[9]~27_combout\,
	dataf => \ALT_INV_saida[9]~28_combout\,
	combout => \saida[9]~29_combout\);

-- Location: LABCELL_X73_Y3_N54
\saida[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[9]$latch~combout\ = ( \saida[9]~29_combout\ & ( (!\ler_escrever~input_o\) # (\saida[9]$latch~combout\) ) ) # ( !\saida[9]~29_combout\ & ( (\ler_escrever~input_o\ & \saida[9]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[9]$latch~combout\,
	dataf => \ALT_INV_saida[9]~29_combout\,
	combout => \saida[9]$latch~combout\);

-- Location: IOIBUF_X89_Y6_N38
\entrada[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: LABCELL_X77_Y3_N18
\r1|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(10) = ( \r1|q\(10) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[10]~input_o\))) ) ) # ( !\r1|q\(10) & ( (\entrada[10]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(10),
	combout => \r1|q\(10));

-- Location: LABCELL_X77_Y3_N36
\r7|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(10) = (!\resetar~input_o\ & ((!registrador_escolhido(6) & ((\r7|q\(10)))) # (registrador_escolhido(6) & (\entrada[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000001100010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r7|ALT_INV_q\(10),
	datad => ALT_INV_registrador_escolhido(6),
	combout => \r7|q\(10));

-- Location: LABCELL_X77_Y3_N3
\r3|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(10) = (!\resetar~input_o\ & ((!registrador_escolhido(2) & ((\r3|q\(10)))) # (registrador_escolhido(2) & (\entrada[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(2),
	datad => \r3|ALT_INV_q\(10),
	combout => \r3|q\(10));

-- Location: LABCELL_X77_Y3_N21
\r5|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(10) = ( registrador_escolhido(4) & ( (\entrada[10]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(4) & ( (!\resetar~input_o\ & \r5|q\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r5|ALT_INV_q\(10),
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(10));

-- Location: LABCELL_X77_Y3_N6
\saida[10]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[10]~31_combout\ = ( \r3|q\(10) & ( \r5|q\(10) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\)) # (\r1|q\(10)))) # (\seletor[1]~input_o\ & (((!\seletor[2]~input_o\) # (\r7|q\(10))))) ) ) ) # ( !\r3|q\(10) & ( \r5|q\(10) & ( 
-- (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\)) # (\r1|q\(10)))) # (\seletor[1]~input_o\ & (((\r7|q\(10) & \seletor[2]~input_o\)))) ) ) ) # ( \r3|q\(10) & ( !\r5|q\(10) & ( (!\seletor[1]~input_o\ & (\r1|q\(10) & ((!\seletor[2]~input_o\)))) # 
-- (\seletor[1]~input_o\ & (((!\seletor[2]~input_o\) # (\r7|q\(10))))) ) ) ) # ( !\r3|q\(10) & ( !\r5|q\(10) & ( (!\seletor[1]~input_o\ & (\r1|q\(10) & ((!\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & (((\r7|q\(10) & \seletor[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|ALT_INV_q\(10),
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \r7|ALT_INV_q\(10),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r3|ALT_INV_q\(10),
	dataf => \r5|ALT_INV_q\(10),
	combout => \saida[10]~31_combout\);

-- Location: LABCELL_X77_Y3_N0
\r6|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(10) = (!\resetar~input_o\ & ((!registrador_escolhido(5) & ((\r6|q\(10)))) # (registrador_escolhido(5) & (\entrada[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(5),
	datad => \r6|ALT_INV_q\(10),
	combout => \r6|q\(10));

-- Location: LABCELL_X77_Y3_N27
\r8|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(10) = ( registrador_escolhido(7) & ( (\entrada[10]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r8|ALT_INV_q\(10),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(10));

-- Location: LABCELL_X77_Y3_N24
\r4|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(10) = ( registrador_escolhido(3) & ( (\entrada[10]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(3) & ( (!\resetar~input_o\ & \r4|q\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r4|ALT_INV_q\(10),
	dataf => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(10));

-- Location: LABCELL_X77_Y3_N39
\r2|q[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(10) = ( \r2|q\(10) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[10]~input_o\))) ) ) # ( !\r2|q\(10) & ( (\entrada[10]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[10]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(10),
	combout => \r2|q\(10));

-- Location: LABCELL_X77_Y3_N30
\saida[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[10]~30_combout\ = ( \r4|q\(10) & ( \r2|q\(10) & ( (!\seletor[2]~input_o\) # ((!\seletor[1]~input_o\ & (\r6|q\(10))) # (\seletor[1]~input_o\ & ((\r8|q\(10))))) ) ) ) # ( !\r4|q\(10) & ( \r2|q\(10) & ( (!\seletor[1]~input_o\ & 
-- (((!\seletor[2]~input_o\)) # (\r6|q\(10)))) # (\seletor[1]~input_o\ & (((\r8|q\(10) & \seletor[2]~input_o\)))) ) ) ) # ( \r4|q\(10) & ( !\r2|q\(10) & ( (!\seletor[1]~input_o\ & (\r6|q\(10) & ((\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & 
-- (((!\seletor[2]~input_o\) # (\r8|q\(10))))) ) ) ) # ( !\r4|q\(10) & ( !\r2|q\(10) & ( (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r6|q\(10))) # (\seletor[1]~input_o\ & ((\r8|q\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r6|ALT_INV_q\(10),
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \r8|ALT_INV_q\(10),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r4|ALT_INV_q\(10),
	dataf => \r2|ALT_INV_q\(10),
	combout => \saida[10]~30_combout\);

-- Location: LABCELL_X77_Y3_N12
\saida[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[10]~32_combout\ = ( \saida[10]~30_combout\ & ( (\seletor[0]~input_o\) # (\saida[10]~31_combout\) ) ) # ( !\saida[10]~30_combout\ & ( (\saida[10]~31_combout\ & !\seletor[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saida[10]~31_combout\,
	datac => \ALT_INV_seletor[0]~input_o\,
	dataf => \ALT_INV_saida[10]~30_combout\,
	combout => \saida[10]~32_combout\);

-- Location: LABCELL_X77_Y3_N15
\saida[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[10]$latch~combout\ = ( \saida[10]~32_combout\ & ( (!\ler_escrever~input_o\) # (\saida[10]$latch~combout\) ) ) # ( !\saida[10]~32_combout\ & ( (\ler_escrever~input_o\ & \saida[10]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ler_escrever~input_o\,
	datac => \ALT_INV_saida[10]$latch~combout\,
	dataf => \ALT_INV_saida[10]~32_combout\,
	combout => \saida[10]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N95
\entrada[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: LABCELL_X75_Y3_N0
\r1|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(11) = ( registrador_escolhido(0) & ( (\entrada[11]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(0) & ( (!\resetar~input_o\ & \r1|q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => \r1|ALT_INV_q\(11),
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(11));

-- Location: LABCELL_X75_Y3_N6
\r7|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(11) = ( \r7|q\(11) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[11]~input_o\))) ) ) # ( !\r7|q\(11) & ( (\entrada[11]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(11),
	combout => \r7|q\(11));

-- Location: LABCELL_X75_Y3_N3
\r3|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(11) = (!\resetar~input_o\ & ((!registrador_escolhido(2) & ((\r3|q\(11)))) # (registrador_escolhido(2) & (\entrada[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(2),
	datad => \r3|ALT_INV_q\(11),
	combout => \r3|q\(11));

-- Location: LABCELL_X75_Y3_N9
\r5|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(11) = ( \r5|q\(11) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[11]~input_o\))) ) ) # ( !\r5|q\(11) & ( (\entrada[11]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(11),
	combout => \r5|q\(11));

-- Location: LABCELL_X75_Y3_N30
\saida[11]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[11]~34_combout\ = ( \r3|q\(11) & ( \r5|q\(11) & ( (!\seletor[1]~input_o\ & (((\r1|q\(11))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r7|q\(11))))) ) ) ) # ( !\r3|q\(11) & ( \r5|q\(11) & ( 
-- (!\seletor[1]~input_o\ & (((\r1|q\(11))) # (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r7|q\(11))))) ) ) ) # ( \r3|q\(11) & ( !\r5|q\(11) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r1|q\(11)))) # 
-- (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\) # ((\r7|q\(11))))) ) ) ) # ( !\r3|q\(11) & ( !\r5|q\(11) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r1|q\(11)))) # (\seletor[1]~input_o\ & (\seletor[2]~input_o\ & ((\r7|q\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r1|ALT_INV_q\(11),
	datad => \r7|ALT_INV_q\(11),
	datae => \r3|ALT_INV_q\(11),
	dataf => \r5|ALT_INV_q\(11),
	combout => \saida[11]~34_combout\);

-- Location: LABCELL_X74_Y3_N36
\r2|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(11) = ( \r2|q\(11) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[11]~input_o\))) ) ) # ( !\r2|q\(11) & ( (\entrada[11]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(11),
	combout => \r2|q\(11));

-- Location: LABCELL_X74_Y3_N39
\r4|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(11) = ( \r4|q\(11) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[11]~input_o\))) ) ) # ( !\r4|q\(11) & ( (\entrada[11]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(11),
	combout => \r4|q\(11));

-- Location: LABCELL_X74_Y3_N27
\r8|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(11) = ( registrador_escolhido(7) & ( (\entrada[11]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[11]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r8|ALT_INV_q\(11),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(11));

-- Location: LABCELL_X74_Y3_N54
\r6|q[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(11) = ( registrador_escolhido(5) & ( (!\resetar~input_o\ & \entrada[11]~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[11]~input_o\,
	datad => \r6|ALT_INV_q\(11),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(11));

-- Location: LABCELL_X74_Y3_N30
\saida[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[11]~33_combout\ = ( \r8|q\(11) & ( \r6|q\(11) & ( ((!\seletor[1]~input_o\ & (\r2|q\(11))) # (\seletor[1]~input_o\ & ((\r4|q\(11))))) # (\seletor[2]~input_o\) ) ) ) # ( !\r8|q\(11) & ( \r6|q\(11) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ 
-- & (\r2|q\(11))) # (\seletor[1]~input_o\ & ((\r4|q\(11)))))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( \r8|q\(11) & ( !\r6|q\(11) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r2|q\(11))) # (\seletor[1]~input_o\ & 
-- ((\r4|q\(11)))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)))) ) ) ) # ( !\r8|q\(11) & ( !\r6|q\(11) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r2|q\(11))) # (\seletor[1]~input_o\ & ((\r4|q\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r2|ALT_INV_q\(11),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r4|ALT_INV_q\(11),
	datae => \r8|ALT_INV_q\(11),
	dataf => \r6|ALT_INV_q\(11),
	combout => \saida[11]~33_combout\);

-- Location: LABCELL_X75_Y3_N18
\saida[11]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[11]~35_combout\ = ( \saida[11]~33_combout\ & ( (\seletor[0]~input_o\) # (\saida[11]~34_combout\) ) ) # ( !\saida[11]~33_combout\ & ( (\saida[11]~34_combout\ & !\seletor[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saida[11]~34_combout\,
	datac => \ALT_INV_seletor[0]~input_o\,
	dataf => \ALT_INV_saida[11]~33_combout\,
	combout => \saida[11]~35_combout\);

-- Location: LABCELL_X75_Y3_N21
\saida[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[11]$latch~combout\ = ( \saida[11]~35_combout\ & ( (!\ler_escrever~input_o\) # (\saida[11]$latch~combout\) ) ) # ( !\saida[11]~35_combout\ & ( (\ler_escrever~input_o\ & \saida[11]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[11]$latch~combout\,
	dataf => \ALT_INV_saida[11]~35_combout\,
	combout => \saida[11]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N61
\entrada[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: LABCELL_X74_Y3_N18
\r2|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(12) = ( \r2|q\(12) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[12]~input_o\))) ) ) # ( !\r2|q\(12) & ( (\entrada[12]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(12),
	combout => \r2|q\(12));

-- Location: LABCELL_X74_Y3_N57
\r8|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(12) = ( registrador_escolhido(7) & ( (\entrada[12]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r8|ALT_INV_q\(12),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(12));

-- Location: LABCELL_X74_Y3_N21
\r6|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(12) = ( registrador_escolhido(5) & ( (\entrada[12]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(5) & ( (!\resetar~input_o\ & \r6|q\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r6|ALT_INV_q\(12),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(12));

-- Location: LABCELL_X74_Y3_N24
\r4|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(12) = ( \r4|q\(12) & ( (!\resetar~input_o\ & ((!registrador_escolhido(3)) # (\entrada[12]~input_o\))) ) ) # ( !\r4|q\(12) & ( (!\resetar~input_o\ & (\entrada[12]~input_o\ & registrador_escolhido(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[12]~input_o\,
	datad => ALT_INV_registrador_escolhido(3),
	dataf => \r4|ALT_INV_q\(12),
	combout => \r4|q\(12));

-- Location: LABCELL_X75_Y3_N24
\saida[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[12]~36_combout\ = ( \r6|q\(12) & ( \r4|q\(12) & ( (!\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # (\r2|q\(12)))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r8|q\(12))))) ) ) ) # ( !\r6|q\(12) & ( \r4|q\(12) & ( 
-- (!\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # (\r2|q\(12)))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\ & \r8|q\(12))))) ) ) ) # ( \r6|q\(12) & ( !\r4|q\(12) & ( (!\seletor[2]~input_o\ & (\r2|q\(12) & (!\seletor[1]~input_o\))) # 
-- (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r8|q\(12))))) ) ) ) # ( !\r6|q\(12) & ( !\r4|q\(12) & ( (!\seletor[2]~input_o\ & (\r2|q\(12) & (!\seletor[1]~input_o\))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\ & \r8|q\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r2|ALT_INV_q\(12),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r8|ALT_INV_q\(12),
	datae => \r6|ALT_INV_q\(12),
	dataf => \r4|ALT_INV_q\(12),
	combout => \saida[12]~36_combout\);

-- Location: LABCELL_X77_Y3_N48
\r1|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(12) = ( \r1|q\(12) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[12]~input_o\))) ) ) # ( !\r1|q\(12) & ( (\entrada[12]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(12),
	combout => \r1|q\(12));

-- Location: LABCELL_X77_Y3_N51
\r3|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(12) = ( \r3|q\(12) & ( (!\resetar~input_o\ & ((!registrador_escolhido(2)) # (\entrada[12]~input_o\))) ) ) # ( !\r3|q\(12) & ( (\entrada[12]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(2),
	dataf => \r3|ALT_INV_q\(12),
	combout => \r3|q\(12));

-- Location: LABCELL_X77_Y3_N45
\r5|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(12) = ( registrador_escolhido(4) & ( (\entrada[12]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(4) & ( (!\resetar~input_o\ & \r5|q\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[12]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r5|ALT_INV_q\(12),
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(12));

-- Location: LABCELL_X77_Y3_N42
\r7|q[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(12) = ( \r7|q\(12) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[12]~input_o\))) ) ) # ( !\r7|q\(12) & ( (!\resetar~input_o\ & (\entrada[12]~input_o\ & registrador_escolhido(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[12]~input_o\,
	datad => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(12),
	combout => \r7|q\(12));

-- Location: LABCELL_X77_Y3_N54
\saida[12]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[12]~37_combout\ = ( \r5|q\(12) & ( \r7|q\(12) & ( ((!\seletor[1]~input_o\ & (\r1|q\(12))) # (\seletor[1]~input_o\ & ((\r3|q\(12))))) # (\seletor[2]~input_o\) ) ) ) # ( !\r5|q\(12) & ( \r7|q\(12) & ( (!\seletor[1]~input_o\ & (\r1|q\(12) & 
-- ((!\seletor[2]~input_o\)))) # (\seletor[1]~input_o\ & (((\seletor[2]~input_o\) # (\r3|q\(12))))) ) ) ) # ( \r5|q\(12) & ( !\r7|q\(12) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\)) # (\r1|q\(12)))) # (\seletor[1]~input_o\ & (((\r3|q\(12) & 
-- !\seletor[2]~input_o\)))) ) ) ) # ( !\r5|q\(12) & ( !\r7|q\(12) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & (\r1|q\(12))) # (\seletor[1]~input_o\ & ((\r3|q\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \r1|ALT_INV_q\(12),
	datac => \r3|ALT_INV_q\(12),
	datad => \ALT_INV_seletor[2]~input_o\,
	datae => \r5|ALT_INV_q\(12),
	dataf => \r7|ALT_INV_q\(12),
	combout => \saida[12]~37_combout\);

-- Location: LABCELL_X75_Y3_N54
\saida[12]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[12]~38_combout\ = ( \saida[12]~37_combout\ & ( (!\seletor[0]~input_o\) # (\saida[12]~36_combout\) ) ) # ( !\saida[12]~37_combout\ & ( (\seletor[0]~input_o\ & \saida[12]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_saida[12]~36_combout\,
	dataf => \ALT_INV_saida[12]~37_combout\,
	combout => \saida[12]~38_combout\);

-- Location: LABCELL_X75_Y3_N57
\saida[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[12]$latch~combout\ = ( \saida[12]~38_combout\ & ( (!\ler_escrever~input_o\) # (\saida[12]$latch~combout\) ) ) # ( !\saida[12]~38_combout\ & ( (\ler_escrever~input_o\ & \saida[12]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[12]$latch~combout\,
	dataf => \ALT_INV_saida[12]~38_combout\,
	combout => \saida[12]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N52
\entrada[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: LABCELL_X71_Y4_N9
\r3|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(13) = ( registrador_escolhido(2) & ( (\entrada[13]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (\r3|q\(13) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datac => \r3|ALT_INV_q\(13),
	datad => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(13));

-- Location: LABCELL_X71_Y4_N6
\r1|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(13) = ( \r1|q\(13) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[13]~input_o\))) ) ) # ( !\r1|q\(13) & ( (\entrada[13]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(13),
	combout => \r1|q\(13));

-- Location: LABCELL_X71_Y4_N21
\r5|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(13) = ( \r5|q\(13) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[13]~input_o\))) ) ) # ( !\r5|q\(13) & ( (\entrada[13]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datac => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(13),
	combout => \r5|q\(13));

-- Location: LABCELL_X71_Y4_N15
\r7|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(13) = ( registrador_escolhido(6) & ( (\entrada[13]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(6) & ( (!\resetar~input_o\ & \r7|q\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r7|ALT_INV_q\(13),
	dataf => ALT_INV_registrador_escolhido(6),
	combout => \r7|q\(13));

-- Location: LABCELL_X71_Y4_N0
\saida[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[13]~40_combout\ = ( \r5|q\(13) & ( \r7|q\(13) & ( ((!\seletor[1]~input_o\ & ((\r1|q\(13)))) # (\seletor[1]~input_o\ & (\r3|q\(13)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r5|q\(13) & ( \r7|q\(13) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ 
-- & ((\r1|q\(13)))) # (\seletor[1]~input_o\ & (\r3|q\(13))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)))) ) ) ) # ( \r5|q\(13) & ( !\r7|q\(13) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(13)))) # (\seletor[1]~input_o\ & 
-- (\r3|q\(13))))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\r5|q\(13) & ( !\r7|q\(13) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r1|q\(13)))) # (\seletor[1]~input_o\ & (\r3|q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r3|ALT_INV_q\(13),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r1|ALT_INV_q\(13),
	datae => \r5|ALT_INV_q\(13),
	dataf => \r7|ALT_INV_q\(13),
	combout => \saida[13]~40_combout\);

-- Location: LABCELL_X71_Y4_N54
\r4|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(13) = (!\resetar~input_o\ & ((!registrador_escolhido(3) & ((\r4|q\(13)))) # (registrador_escolhido(3) & (\entrada[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000001100010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r4|ALT_INV_q\(13),
	datad => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(13));

-- Location: LABCELL_X71_Y4_N12
\r2|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(13) = ( registrador_escolhido(1) & ( (\entrada[13]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r2|ALT_INV_q\(13),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(13));

-- Location: LABCELL_X71_Y4_N57
\r8|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(13) = ( \r8|q\(13) & ( (!\resetar~input_o\ & ((!registrador_escolhido(7)) # (\entrada[13]~input_o\))) ) ) # ( !\r8|q\(13) & ( (\entrada[13]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(7),
	dataf => \r8|ALT_INV_q\(13),
	combout => \r8|q\(13));

-- Location: LABCELL_X71_Y4_N18
\r6|q[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(13) = ( \r6|q\(13) & ( (!\resetar~input_o\ & ((!registrador_escolhido(5)) # (\entrada[13]~input_o\))) ) ) # ( !\r6|q\(13) & ( (\entrada[13]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[13]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(5),
	dataf => \r6|ALT_INV_q\(13),
	combout => \r6|q\(13));

-- Location: LABCELL_X71_Y4_N30
\saida[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[13]~39_combout\ = ( \r8|q\(13) & ( \r6|q\(13) & ( ((!\seletor[1]~input_o\ & ((\r2|q\(13)))) # (\seletor[1]~input_o\ & (\r4|q\(13)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r8|q\(13) & ( \r6|q\(13) & ( (!\seletor[1]~input_o\ & (((\r2|q\(13))) # 
-- (\seletor[2]~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & (\r4|q\(13)))) ) ) ) # ( \r8|q\(13) & ( !\r6|q\(13) & ( (!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & ((\r2|q\(13))))) # (\seletor[1]~input_o\ & (((\r4|q\(13))) # 
-- (\seletor[2]~input_o\))) ) ) ) # ( !\r8|q\(13) & ( !\r6|q\(13) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r2|q\(13)))) # (\seletor[1]~input_o\ & (\r4|q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[2]~input_o\,
	datac => \r4|ALT_INV_q\(13),
	datad => \r2|ALT_INV_q\(13),
	datae => \r8|ALT_INV_q\(13),
	dataf => \r6|ALT_INV_q\(13),
	combout => \saida[13]~39_combout\);

-- Location: LABCELL_X71_Y4_N39
\saida[13]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[13]~41_combout\ = ( \saida[13]~39_combout\ & ( (\saida[13]~40_combout\) # (\seletor[0]~input_o\) ) ) # ( !\saida[13]~39_combout\ & ( (!\seletor[0]~input_o\ & \saida[13]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_saida[13]~40_combout\,
	dataf => \ALT_INV_saida[13]~39_combout\,
	combout => \saida[13]~41_combout\);

-- Location: LABCELL_X71_Y4_N36
\saida[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[13]$latch~combout\ = ( \saida[13]~41_combout\ & ( (!\ler_escrever~input_o\) # (\saida[13]$latch~combout\) ) ) # ( !\saida[13]~41_combout\ & ( (\ler_escrever~input_o\ & \saida[13]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[13]$latch~combout\,
	dataf => \ALT_INV_saida[13]~41_combout\,
	combout => \saida[13]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N18
\entrada[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: LABCELL_X70_Y2_N57
\r5|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(14) = ( \r5|q\(14) & ( registrador_escolhido(4) & ( (\entrada[14]~input_o\ & !\resetar~input_o\) ) ) ) # ( !\r5|q\(14) & ( registrador_escolhido(4) & ( (\entrada[14]~input_o\ & !\resetar~input_o\) ) ) ) # ( \r5|q\(14) & ( !registrador_escolhido(4) 
-- & ( !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[14]~input_o\,
	datad => \ALT_INV_resetar~input_o\,
	datae => \r5|ALT_INV_q\(14),
	dataf => ALT_INV_registrador_escolhido(4),
	combout => \r5|q\(14));

-- Location: LABCELL_X70_Y2_N6
\r3|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(14) = ( registrador_escolhido(2) & ( \r3|q\(14) & ( (!\resetar~input_o\ & \entrada[14]~input_o\) ) ) ) # ( !registrador_escolhido(2) & ( \r3|q\(14) & ( !\resetar~input_o\ ) ) ) # ( registrador_escolhido(2) & ( !\r3|q\(14) & ( (!\resetar~input_o\ & 
-- \entrada[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[14]~input_o\,
	datae => ALT_INV_registrador_escolhido(2),
	dataf => \r3|ALT_INV_q\(14),
	combout => \r3|q\(14));

-- Location: LABCELL_X70_Y2_N0
\r1|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(14) = ( \r1|q\(14) & ( registrador_escolhido(0) & ( (!\resetar~input_o\ & \entrada[14]~input_o\) ) ) ) # ( !\r1|q\(14) & ( registrador_escolhido(0) & ( (!\resetar~input_o\ & \entrada[14]~input_o\) ) ) ) # ( \r1|q\(14) & ( !registrador_escolhido(0) 
-- & ( !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[14]~input_o\,
	datae => \r1|ALT_INV_q\(14),
	dataf => ALT_INV_registrador_escolhido(0),
	combout => \r1|q\(14));

-- Location: LABCELL_X70_Y2_N18
\r7|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(14) = ( \r7|q\(14) & ( (!\resetar~input_o\ & ((!registrador_escolhido(6)) # (\entrada[14]~input_o\))) ) ) # ( !\r7|q\(14) & ( (!\resetar~input_o\ & (\entrada[14]~input_o\ & registrador_escolhido(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[14]~input_o\,
	datad => ALT_INV_registrador_escolhido(6),
	dataf => \r7|ALT_INV_q\(14),
	combout => \r7|q\(14));

-- Location: LABCELL_X70_Y2_N27
\saida[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[14]~43_combout\ = ( \r1|q\(14) & ( \r7|q\(14) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r3|q\(14))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # (\r5|q\(14)))) ) ) ) # ( !\r1|q\(14) & ( \r7|q\(14) & ( 
-- (!\seletor[2]~input_o\ & (((\r3|q\(14) & \seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)) # (\r5|q\(14)))) ) ) ) # ( \r1|q\(14) & ( !\r7|q\(14) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r3|q\(14))))) # 
-- (\seletor[2]~input_o\ & (\r5|q\(14) & ((!\seletor[1]~input_o\)))) ) ) ) # ( !\r1|q\(14) & ( !\r7|q\(14) & ( (!\seletor[2]~input_o\ & (((\r3|q\(14) & \seletor[1]~input_o\)))) # (\seletor[2]~input_o\ & (\r5|q\(14) & ((!\seletor[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r5|ALT_INV_q\(14),
	datac => \r3|ALT_INV_q\(14),
	datad => \ALT_INV_seletor[1]~input_o\,
	datae => \r1|ALT_INV_q\(14),
	dataf => \r7|ALT_INV_q\(14),
	combout => \saida[14]~43_combout\);

-- Location: LABCELL_X70_Y2_N36
\r4|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(14) = ( \r4|q\(14) & ( registrador_escolhido(3) & ( (!\resetar~input_o\ & \entrada[14]~input_o\) ) ) ) # ( !\r4|q\(14) & ( registrador_escolhido(3) & ( (!\resetar~input_o\ & \entrada[14]~input_o\) ) ) ) # ( \r4|q\(14) & ( !registrador_escolhido(3) 
-- & ( !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[14]~input_o\,
	datae => \r4|ALT_INV_q\(14),
	dataf => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(14));

-- Location: LABCELL_X70_Y2_N51
\r2|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(14) = ( \r2|q\(14) & ( (!\resetar~input_o\ & ((!registrador_escolhido(1)) # (\entrada[14]~input_o\))) ) ) # ( !\r2|q\(14) & ( (\entrada[14]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[14]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(1),
	dataf => \r2|ALT_INV_q\(14),
	combout => \r2|q\(14));

-- Location: LABCELL_X70_Y2_N48
\r8|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(14) = ( registrador_escolhido(7) & ( (\entrada[14]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[14]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r8|ALT_INV_q\(14),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(14));

-- Location: LABCELL_X70_Y2_N45
\r6|q[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(14) = ( \r6|q\(14) & ( registrador_escolhido(5) & ( (\entrada[14]~input_o\ & !\resetar~input_o\) ) ) ) # ( !\r6|q\(14) & ( registrador_escolhido(5) & ( (\entrada[14]~input_o\ & !\resetar~input_o\) ) ) ) # ( \r6|q\(14) & ( !registrador_escolhido(5) 
-- & ( !\resetar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[14]~input_o\,
	datad => \ALT_INV_resetar~input_o\,
	datae => \r6|ALT_INV_q\(14),
	dataf => ALT_INV_registrador_escolhido(5),
	combout => \r6|q\(14));

-- Location: LABCELL_X70_Y2_N33
\saida[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[14]~42_combout\ = ( \r8|q\(14) & ( \r6|q\(14) & ( ((!\seletor[1]~input_o\ & ((\r2|q\(14)))) # (\seletor[1]~input_o\ & (\r4|q\(14)))) # (\seletor[2]~input_o\) ) ) ) # ( !\r8|q\(14) & ( \r6|q\(14) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ 
-- & ((\r2|q\(14)))) # (\seletor[1]~input_o\ & (\r4|q\(14))))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( \r8|q\(14) & ( !\r6|q\(14) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r2|q\(14)))) # (\seletor[1]~input_o\ & 
-- (\r4|q\(14))))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\)))) ) ) ) # ( !\r8|q\(14) & ( !\r6|q\(14) & ( (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r2|q\(14)))) # (\seletor[1]~input_o\ & (\r4|q\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r4|ALT_INV_q\(14),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r2|ALT_INV_q\(14),
	datae => \r8|ALT_INV_q\(14),
	dataf => \r6|ALT_INV_q\(14),
	combout => \saida[14]~42_combout\);

-- Location: LABCELL_X70_Y2_N15
\saida[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[14]~44_combout\ = ( \saida[14]~43_combout\ & ( \saida[14]~42_combout\ ) ) # ( !\saida[14]~43_combout\ & ( \saida[14]~42_combout\ & ( \seletor[0]~input_o\ ) ) ) # ( \saida[14]~43_combout\ & ( !\saida[14]~42_combout\ & ( !\seletor[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_seletor[0]~input_o\,
	datae => \ALT_INV_saida[14]~43_combout\,
	dataf => \ALT_INV_saida[14]~42_combout\,
	combout => \saida[14]~44_combout\);

-- Location: LABCELL_X70_Y2_N21
\saida[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[14]$latch~combout\ = ( \saida[14]~44_combout\ & ( (!\ler_escrever~input_o\) # (\saida[14]$latch~combout\) ) ) # ( !\saida[14]~44_combout\ & ( (\ler_escrever~input_o\ & \saida[14]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ler_escrever~input_o\,
	datad => \ALT_INV_saida[14]$latch~combout\,
	dataf => \ALT_INV_saida[14]~44_combout\,
	combout => \saida[14]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N1
\entrada[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: MLABCELL_X72_Y4_N45
\r8|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r8|q\(15) = ( registrador_escolhido(7) & ( (\entrada[15]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(7) & ( (!\resetar~input_o\ & \r8|q\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r8|ALT_INV_q\(15),
	dataf => ALT_INV_registrador_escolhido(7),
	combout => \r8|q\(15));

-- Location: MLABCELL_X72_Y4_N42
\r6|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r6|q\(15) = ( \r6|q\(15) & ( (!\resetar~input_o\ & ((!registrador_escolhido(5)) # (\entrada[15]~input_o\))) ) ) # ( !\r6|q\(15) & ( (\entrada[15]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(5),
	dataf => \r6|ALT_INV_q\(15),
	combout => \r6|q\(15));

-- Location: MLABCELL_X72_Y4_N51
\r2|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2|q\(15) = ( registrador_escolhido(1) & ( (\entrada[15]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(1) & ( (!\resetar~input_o\ & \r2|q\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => \r2|ALT_INV_q\(15),
	dataf => ALT_INV_registrador_escolhido(1),
	combout => \r2|q\(15));

-- Location: MLABCELL_X72_Y4_N48
\r4|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4|q\(15) = ( registrador_escolhido(3) & ( (\entrada[15]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(3) & ( (!\resetar~input_o\ & \r4|q\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datac => \r4|ALT_INV_q\(15),
	dataf => ALT_INV_registrador_escolhido(3),
	combout => \r4|q\(15));

-- Location: MLABCELL_X72_Y4_N54
\saida[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[15]~45_combout\ = ( \r2|q\(15) & ( \r4|q\(15) & ( (!\seletor[2]~input_o\) # ((!\seletor[1]~input_o\ & ((\r6|q\(15)))) # (\seletor[1]~input_o\ & (\r8|q\(15)))) ) ) ) # ( !\r2|q\(15) & ( \r4|q\(15) & ( (!\seletor[1]~input_o\ & (((\seletor[2]~input_o\ 
-- & \r6|q\(15))))) # (\seletor[1]~input_o\ & (((!\seletor[2]~input_o\)) # (\r8|q\(15)))) ) ) ) # ( \r2|q\(15) & ( !\r4|q\(15) & ( (!\seletor[1]~input_o\ & (((!\seletor[2]~input_o\) # (\r6|q\(15))))) # (\seletor[1]~input_o\ & (\r8|q\(15) & 
-- (\seletor[2]~input_o\))) ) ) ) # ( !\r2|q\(15) & ( !\r4|q\(15) & ( (\seletor[2]~input_o\ & ((!\seletor[1]~input_o\ & ((\r6|q\(15)))) # (\seletor[1]~input_o\ & (\r8|q\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \r8|ALT_INV_q\(15),
	datac => \ALT_INV_seletor[2]~input_o\,
	datad => \r6|ALT_INV_q\(15),
	datae => \r2|ALT_INV_q\(15),
	dataf => \r4|ALT_INV_q\(15),
	combout => \saida[15]~45_combout\);

-- Location: LABCELL_X71_Y4_N42
\r3|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3|q\(15) = ( registrador_escolhido(2) & ( (\entrada[15]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(2) & ( (\r3|q\(15) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \r3|ALT_INV_q\(15),
	datad => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(2),
	combout => \r3|q\(15));

-- Location: LABCELL_X71_Y4_N45
\r7|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7|q\(15) = ( registrador_escolhido(6) & ( (\entrada[15]~input_o\ & !\resetar~input_o\) ) ) # ( !registrador_escolhido(6) & ( (\r7|q\(15) & !\resetar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datac => \r7|ALT_INV_q\(15),
	datad => \ALT_INV_resetar~input_o\,
	dataf => ALT_INV_registrador_escolhido(6),
	combout => \r7|q\(15));

-- Location: LABCELL_X71_Y4_N27
\r1|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|q\(15) = ( \r1|q\(15) & ( (!\resetar~input_o\ & ((!registrador_escolhido(0)) # (\entrada[15]~input_o\))) ) ) # ( !\r1|q\(15) & ( (\entrada[15]~input_o\ & (!\resetar~input_o\ & registrador_escolhido(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[15]~input_o\,
	datab => \ALT_INV_resetar~input_o\,
	datad => ALT_INV_registrador_escolhido(0),
	dataf => \r1|ALT_INV_q\(15),
	combout => \r1|q\(15));

-- Location: LABCELL_X71_Y4_N24
\r5|q[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \r5|q\(15) = ( \r5|q\(15) & ( (!\resetar~input_o\ & ((!registrador_escolhido(4)) # (\entrada[15]~input_o\))) ) ) # ( !\r5|q\(15) & ( (!\resetar~input_o\ & (\entrada[15]~input_o\ & registrador_escolhido(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetar~input_o\,
	datac => \ALT_INV_entrada[15]~input_o\,
	datad => ALT_INV_registrador_escolhido(4),
	dataf => \r5|ALT_INV_q\(15),
	combout => \r5|q\(15));

-- Location: LABCELL_X71_Y4_N48
\saida[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[15]~46_combout\ = ( \r1|q\(15) & ( \r5|q\(15) & ( (!\seletor[1]~input_o\) # ((!\seletor[2]~input_o\ & (\r3|q\(15))) # (\seletor[2]~input_o\ & ((\r7|q\(15))))) ) ) ) # ( !\r1|q\(15) & ( \r5|q\(15) & ( (!\seletor[2]~input_o\ & (\r3|q\(15) & 
-- (\seletor[1]~input_o\))) # (\seletor[2]~input_o\ & (((!\seletor[1]~input_o\) # (\r7|q\(15))))) ) ) ) # ( \r1|q\(15) & ( !\r5|q\(15) & ( (!\seletor[2]~input_o\ & (((!\seletor[1]~input_o\)) # (\r3|q\(15)))) # (\seletor[2]~input_o\ & (((\seletor[1]~input_o\ 
-- & \r7|q\(15))))) ) ) ) # ( !\r1|q\(15) & ( !\r5|q\(15) & ( (\seletor[1]~input_o\ & ((!\seletor[2]~input_o\ & (\r3|q\(15))) # (\seletor[2]~input_o\ & ((\r7|q\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[2]~input_o\,
	datab => \r3|ALT_INV_q\(15),
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \r7|ALT_INV_q\(15),
	datae => \r1|ALT_INV_q\(15),
	dataf => \r5|ALT_INV_q\(15),
	combout => \saida[15]~46_combout\);

-- Location: MLABCELL_X72_Y4_N33
\saida[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[15]~47_combout\ = ( \saida[15]~46_combout\ & ( (!\seletor[0]~input_o\) # (\saida[15]~45_combout\) ) ) # ( !\saida[15]~46_combout\ & ( (\saida[15]~45_combout\ & \seletor[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saida[15]~45_combout\,
	datad => \ALT_INV_seletor[0]~input_o\,
	dataf => \ALT_INV_saida[15]~46_combout\,
	combout => \saida[15]~47_combout\);

-- Location: MLABCELL_X72_Y4_N30
\saida[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[15]$latch~combout\ = ( \saida[15]~47_combout\ & ( (!\ler_escrever~input_o\) # (\saida[15]$latch~combout\) ) ) # ( !\saida[15]~47_combout\ & ( (\saida[15]$latch~combout\ & \ler_escrever~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida[15]$latch~combout\,
	datad => \ALT_INV_ler_escrever~input_o\,
	dataf => \ALT_INV_saida[15]~47_combout\,
	combout => \saida[15]$latch~combout\);

-- Location: LABCELL_X79_Y37_N0
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


