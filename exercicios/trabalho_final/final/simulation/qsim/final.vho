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

-- DATE "12/01/2019 15:51:42"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
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
	sd4 : BUFFER std_logic_vector(6 DOWNTO 0);
	l1 : BUFFER std_logic;
	l2 : BUFFER std_logic;
	l3 : BUFFER std_logic;
	l4 : BUFFER std_logic;
	valor_ula_out : BUFFER std_logic_vector(15 DOWNTO 0);
	valor_banco_regs_out : BUFFER std_logic_vector(15 DOWNTO 0);
	d_ula_a : BUFFER std_logic_vector(15 DOWNTO 0);
	d_ula_b : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_reg : BUFFER std_logic_vector(15 DOWNTO 0);
	d_seletor : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- sd1[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[5]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l4	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[14]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[15]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[14]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[15]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_a[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[10]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[12]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula_b[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[11]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_seletor[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_seletor[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_seletor[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[17]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt3	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l3 : std_logic;
SIGNAL ww_l4 : std_logic;
SIGNAL ww_valor_ula_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_valor_banco_regs_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_ula_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_ula_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_seletor : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \l1~output_o\ : std_logic;
SIGNAL \l2~output_o\ : std_logic;
SIGNAL \l3~output_o\ : std_logic;
SIGNAL \l4~output_o\ : std_logic;
SIGNAL \valor_ula_out[0]~output_o\ : std_logic;
SIGNAL \valor_ula_out[1]~output_o\ : std_logic;
SIGNAL \valor_ula_out[2]~output_o\ : std_logic;
SIGNAL \valor_ula_out[3]~output_o\ : std_logic;
SIGNAL \valor_ula_out[4]~output_o\ : std_logic;
SIGNAL \valor_ula_out[5]~output_o\ : std_logic;
SIGNAL \valor_ula_out[6]~output_o\ : std_logic;
SIGNAL \valor_ula_out[7]~output_o\ : std_logic;
SIGNAL \valor_ula_out[8]~output_o\ : std_logic;
SIGNAL \valor_ula_out[9]~output_o\ : std_logic;
SIGNAL \valor_ula_out[10]~output_o\ : std_logic;
SIGNAL \valor_ula_out[11]~output_o\ : std_logic;
SIGNAL \valor_ula_out[12]~output_o\ : std_logic;
SIGNAL \valor_ula_out[13]~output_o\ : std_logic;
SIGNAL \valor_ula_out[14]~output_o\ : std_logic;
SIGNAL \valor_ula_out[15]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[0]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[1]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[2]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[3]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[4]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[5]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[6]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[7]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[8]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[9]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[10]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[11]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[12]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[13]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[14]~output_o\ : std_logic;
SIGNAL \valor_banco_regs_out[15]~output_o\ : std_logic;
SIGNAL \d_ula_a[0]~output_o\ : std_logic;
SIGNAL \d_ula_a[1]~output_o\ : std_logic;
SIGNAL \d_ula_a[2]~output_o\ : std_logic;
SIGNAL \d_ula_a[3]~output_o\ : std_logic;
SIGNAL \d_ula_a[4]~output_o\ : std_logic;
SIGNAL \d_ula_a[5]~output_o\ : std_logic;
SIGNAL \d_ula_a[6]~output_o\ : std_logic;
SIGNAL \d_ula_a[7]~output_o\ : std_logic;
SIGNAL \d_ula_a[8]~output_o\ : std_logic;
SIGNAL \d_ula_a[9]~output_o\ : std_logic;
SIGNAL \d_ula_a[10]~output_o\ : std_logic;
SIGNAL \d_ula_a[11]~output_o\ : std_logic;
SIGNAL \d_ula_a[12]~output_o\ : std_logic;
SIGNAL \d_ula_a[13]~output_o\ : std_logic;
SIGNAL \d_ula_a[14]~output_o\ : std_logic;
SIGNAL \d_ula_a[15]~output_o\ : std_logic;
SIGNAL \d_ula_b[0]~output_o\ : std_logic;
SIGNAL \d_ula_b[1]~output_o\ : std_logic;
SIGNAL \d_ula_b[2]~output_o\ : std_logic;
SIGNAL \d_ula_b[3]~output_o\ : std_logic;
SIGNAL \d_ula_b[4]~output_o\ : std_logic;
SIGNAL \d_ula_b[5]~output_o\ : std_logic;
SIGNAL \d_ula_b[6]~output_o\ : std_logic;
SIGNAL \d_ula_b[7]~output_o\ : std_logic;
SIGNAL \d_ula_b[8]~output_o\ : std_logic;
SIGNAL \d_ula_b[9]~output_o\ : std_logic;
SIGNAL \d_ula_b[10]~output_o\ : std_logic;
SIGNAL \d_ula_b[11]~output_o\ : std_logic;
SIGNAL \d_ula_b[12]~output_o\ : std_logic;
SIGNAL \d_ula_b[13]~output_o\ : std_logic;
SIGNAL \d_ula_b[14]~output_o\ : std_logic;
SIGNAL \d_ula_b[15]~output_o\ : std_logic;
SIGNAL \debug_reg[0]~output_o\ : std_logic;
SIGNAL \debug_reg[1]~output_o\ : std_logic;
SIGNAL \debug_reg[2]~output_o\ : std_logic;
SIGNAL \debug_reg[3]~output_o\ : std_logic;
SIGNAL \debug_reg[4]~output_o\ : std_logic;
SIGNAL \debug_reg[5]~output_o\ : std_logic;
SIGNAL \debug_reg[6]~output_o\ : std_logic;
SIGNAL \debug_reg[7]~output_o\ : std_logic;
SIGNAL \debug_reg[8]~output_o\ : std_logic;
SIGNAL \debug_reg[9]~output_o\ : std_logic;
SIGNAL \debug_reg[10]~output_o\ : std_logic;
SIGNAL \debug_reg[11]~output_o\ : std_logic;
SIGNAL \debug_reg[12]~output_o\ : std_logic;
SIGNAL \debug_reg[13]~output_o\ : std_logic;
SIGNAL \debug_reg[14]~output_o\ : std_logic;
SIGNAL \debug_reg[15]~output_o\ : std_logic;
SIGNAL \d_seletor[0]~output_o\ : std_logic;
SIGNAL \d_seletor[1]~output_o\ : std_logic;
SIGNAL \d_seletor[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \i2|pc_banco[1]~1_combout\ : std_logic;
SIGNAL \i2|pc_banco[0]~0_combout\ : std_logic;
SIGNAL \i2|exec_op_out~0_combout\ : std_logic;
SIGNAL \i2|exec_op_out~q\ : std_logic;
SIGNAL \instrucao[2]~input_o\ : std_logic;
SIGNAL \i2|a[5]~0_combout\ : std_logic;
SIGNAL \instrucao[3]~input_o\ : std_logic;
SIGNAL \i2|a[1]~feeder_combout\ : std_logic;
SIGNAL \instrucao[4]~input_o\ : std_logic;
SIGNAL \i2|a[2]~feeder_combout\ : std_logic;
SIGNAL \instrucao[5]~input_o\ : std_logic;
SIGNAL \i2|a[3]~feeder_combout\ : std_logic;
SIGNAL \instrucao[6]~input_o\ : std_logic;
SIGNAL \instrucao[7]~input_o\ : std_logic;
SIGNAL \i2|a[5]~feeder_combout\ : std_logic;
SIGNAL \instrucao[8]~input_o\ : std_logic;
SIGNAL \i2|a[6]~feeder_combout\ : std_logic;
SIGNAL \instrucao[9]~input_o\ : std_logic;
SIGNAL \i2|a[7]~feeder_combout\ : std_logic;
SIGNAL \instrucao[10]~input_o\ : std_logic;
SIGNAL \i2|a[8]~feeder_combout\ : std_logic;
SIGNAL \instrucao[11]~input_o\ : std_logic;
SIGNAL \i2|a[9]~feeder_combout\ : std_logic;
SIGNAL \instrucao[12]~input_o\ : std_logic;
SIGNAL \instrucao[13]~input_o\ : std_logic;
SIGNAL \i2|a[11]~feeder_combout\ : std_logic;
SIGNAL \instrucao[14]~input_o\ : std_logic;
SIGNAL \instrucao[15]~input_o\ : std_logic;
SIGNAL \i2|a[13]~feeder_combout\ : std_logic;
SIGNAL \instrucao[16]~input_o\ : std_logic;
SIGNAL \instrucao[17]~input_o\ : std_logic;
SIGNAL \i2|a[15]~feeder_combout\ : std_logic;
SIGNAL \i2|b[0]~0_combout\ : std_logic;
SIGNAL \i2|b[1]~feeder_combout\ : std_logic;
SIGNAL \i2|b[3]~feeder_combout\ : std_logic;
SIGNAL \i2|b[4]~feeder_combout\ : std_logic;
SIGNAL \i2|b[5]~feeder_combout\ : std_logic;
SIGNAL \i2|b[6]~feeder_combout\ : std_logic;
SIGNAL \i2|b[7]~feeder_combout\ : std_logic;
SIGNAL \i2|b[8]~feeder_combout\ : std_logic;
SIGNAL \i2|b[10]~feeder_combout\ : std_logic;
SIGNAL \i2|b[11]~feeder_combout\ : std_logic;
SIGNAL \i2|b[13]~feeder_combout\ : std_logic;
SIGNAL \i2|b[14]~feeder_combout\ : std_logic;
SIGNAL \i2|b[0]~1_combout\ : std_logic;
SIGNAL \bt3~input_o\ : std_logic;
SIGNAL \i3|r1|q~0_combout\ : std_logic;
SIGNAL \instrucao[1]~input_o\ : std_logic;
SIGNAL \i2|seletor[1]~feeder_combout\ : std_logic;
SIGNAL \instrucao[0]~input_o\ : std_logic;
SIGNAL \i2|seletor[0]~feeder_combout\ : std_logic;
SIGNAL \i3|Equal2~0_combout\ : std_logic;
SIGNAL \i3|r2|q[7]~0_combout\ : std_logic;
SIGNAL \i3|r4|q[0]~feeder_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[3]~2_combout\ : std_logic;
SIGNAL \i3|r4|q[10]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[0]~1_combout\ : std_logic;
SIGNAL \i3|r1|q[2]~1_combout\ : std_logic;
SIGNAL \i3|r3|q[0]~feeder_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido~0_combout\ : std_logic;
SIGNAL \i3|r3|q[3]~0_combout\ : std_logic;
SIGNAL \i3|saida~0_combout\ : std_logic;
SIGNAL \i3|saida~1_combout\ : std_logic;
SIGNAL \i3|r1|q~2_combout\ : std_logic;
SIGNAL \i3|r2|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~2_combout\ : std_logic;
SIGNAL \i3|r4|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~3_combout\ : std_logic;
SIGNAL \i3|r1|q~3_combout\ : std_logic;
SIGNAL \i3|r3|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~4_combout\ : std_logic;
SIGNAL \i3|r2|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~5_combout\ : std_logic;
SIGNAL \i3|r1|q~4_combout\ : std_logic;
SIGNAL \i3|r2|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~6_combout\ : std_logic;
SIGNAL \i3|r4|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~7_combout\ : std_logic;
SIGNAL \i3|r1|q~5_combout\ : std_logic;
SIGNAL \i3|r3|q[4]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~8_combout\ : std_logic;
SIGNAL \i3|r4|q[4]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~9_combout\ : std_logic;
SIGNAL \i3|r1|q~6_combout\ : std_logic;
SIGNAL \i3|r3|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~10_combout\ : std_logic;
SIGNAL \i3|r4|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~11_combout\ : std_logic;
SIGNAL \i3|r1|q~7_combout\ : std_logic;
SIGNAL \i3|r2|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~12_combout\ : std_logic;
SIGNAL \i3|saida~13_combout\ : std_logic;
SIGNAL \i3|r1|q~8_combout\ : std_logic;
SIGNAL \i3|r4|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~14_combout\ : std_logic;
SIGNAL \i3|saida~15_combout\ : std_logic;
SIGNAL \i3|r1|q~9_combout\ : std_logic;
SIGNAL \i3|r4|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~16_combout\ : std_logic;
SIGNAL \i3|saida~17_combout\ : std_logic;
SIGNAL \i3|r1|q~10_combout\ : std_logic;
SIGNAL \i3|r3|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~18_combout\ : std_logic;
SIGNAL \i3|r4|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~19_combout\ : std_logic;
SIGNAL \i3|r1|q~11_combout\ : std_logic;
SIGNAL \i3|r2|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~20_combout\ : std_logic;
SIGNAL \i3|saida~21_combout\ : std_logic;
SIGNAL \i3|r1|q~12_combout\ : std_logic;
SIGNAL \i3|r3|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~22_combout\ : std_logic;
SIGNAL \i3|r4|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~23_combout\ : std_logic;
SIGNAL \i3|r1|q~13_combout\ : std_logic;
SIGNAL \i3|r4|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|r2|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~24_combout\ : std_logic;
SIGNAL \i3|saida~25_combout\ : std_logic;
SIGNAL \i3|r1|q~14_combout\ : std_logic;
SIGNAL \i3|r2|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~26_combout\ : std_logic;
SIGNAL \i3|r4|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~27_combout\ : std_logic;
SIGNAL \i3|r1|q~15_combout\ : std_logic;
SIGNAL \i3|r2|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|r3|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~28_combout\ : std_logic;
SIGNAL \i3|saida~29_combout\ : std_logic;
SIGNAL \i3|r1|q~16_combout\ : std_logic;
SIGNAL \i3|r2|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~30_combout\ : std_logic;
SIGNAL \i3|r3|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~31_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i3|registrador_clear\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|seletor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i3|r4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|pc_banco\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i2|a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|valor_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_bt1~input_o\ : std_logic;

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
l1 <= ww_l1;
l2 <= ww_l2;
l3 <= ww_l3;
l4 <= ww_l4;
valor_ula_out <= ww_valor_ula_out;
valor_banco_regs_out <= ww_valor_banco_regs_out;
d_ula_a <= ww_d_ula_a;
d_ula_b <= ww_d_ula_b;
debug_reg <= ww_debug_reg;
d_seletor <= ww_d_seletor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_bt1~input_o\ <= NOT \bt1~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X0_Y8_N2
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

-- Location: IOOBUF_X28_Y0_N9
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X3_Y24_N2
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X3_Y24_N9
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X34_Y8_N9
\l1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l1~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\l2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l2~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\l3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l3~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\l4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|exec_op_out~q\,
	devoe => ww_devoe,
	o => \l4~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\valor_ula_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\valor_ula_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\valor_ula_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\valor_ula_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\valor_ula_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\valor_ula_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\valor_ula_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\valor_ula_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\valor_ula_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\valor_ula_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\valor_ula_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\valor_ula_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\valor_ula_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\valor_ula_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\valor_ula_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\valor_ula_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_ula_out[15]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\valor_banco_regs_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\valor_banco_regs_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\valor_banco_regs_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[2]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\valor_banco_regs_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\valor_banco_regs_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\valor_banco_regs_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\valor_banco_regs_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[6]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\valor_banco_regs_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\valor_banco_regs_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[8]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\valor_banco_regs_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\valor_banco_regs_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[10]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\valor_banco_regs_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\valor_banco_regs_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\valor_banco_regs_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\valor_banco_regs_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[14]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\valor_banco_regs_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_banco_regs_out[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\d_ula_a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(0),
	devoe => ww_devoe,
	o => \d_ula_a[0]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\d_ula_a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(1),
	devoe => ww_devoe,
	o => \d_ula_a[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\d_ula_a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(2),
	devoe => ww_devoe,
	o => \d_ula_a[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\d_ula_a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(3),
	devoe => ww_devoe,
	o => \d_ula_a[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\d_ula_a[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(4),
	devoe => ww_devoe,
	o => \d_ula_a[4]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\d_ula_a[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(5),
	devoe => ww_devoe,
	o => \d_ula_a[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\d_ula_a[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(6),
	devoe => ww_devoe,
	o => \d_ula_a[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\d_ula_a[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(7),
	devoe => ww_devoe,
	o => \d_ula_a[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\d_ula_a[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(8),
	devoe => ww_devoe,
	o => \d_ula_a[8]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\d_ula_a[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(9),
	devoe => ww_devoe,
	o => \d_ula_a[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\d_ula_a[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(10),
	devoe => ww_devoe,
	o => \d_ula_a[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\d_ula_a[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(11),
	devoe => ww_devoe,
	o => \d_ula_a[11]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\d_ula_a[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(12),
	devoe => ww_devoe,
	o => \d_ula_a[12]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\d_ula_a[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(13),
	devoe => ww_devoe,
	o => \d_ula_a[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\d_ula_a[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(14),
	devoe => ww_devoe,
	o => \d_ula_a[14]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\d_ula_a[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(15),
	devoe => ww_devoe,
	o => \d_ula_a[15]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\d_ula_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(0),
	devoe => ww_devoe,
	o => \d_ula_b[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\d_ula_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(1),
	devoe => ww_devoe,
	o => \d_ula_b[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\d_ula_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(2),
	devoe => ww_devoe,
	o => \d_ula_b[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\d_ula_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(3),
	devoe => ww_devoe,
	o => \d_ula_b[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\d_ula_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(4),
	devoe => ww_devoe,
	o => \d_ula_b[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\d_ula_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(5),
	devoe => ww_devoe,
	o => \d_ula_b[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\d_ula_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(6),
	devoe => ww_devoe,
	o => \d_ula_b[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\d_ula_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(7),
	devoe => ww_devoe,
	o => \d_ula_b[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\d_ula_b[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(8),
	devoe => ww_devoe,
	o => \d_ula_b[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\d_ula_b[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(9),
	devoe => ww_devoe,
	o => \d_ula_b[9]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\d_ula_b[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(10),
	devoe => ww_devoe,
	o => \d_ula_b[10]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\d_ula_b[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(11),
	devoe => ww_devoe,
	o => \d_ula_b[11]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\d_ula_b[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(12),
	devoe => ww_devoe,
	o => \d_ula_b[12]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\d_ula_b[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(13),
	devoe => ww_devoe,
	o => \d_ula_b[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\d_ula_b[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(14),
	devoe => ww_devoe,
	o => \d_ula_b[14]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\d_ula_b[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(15),
	devoe => ww_devoe,
	o => \d_ula_b[15]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\debug_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(0),
	devoe => ww_devoe,
	o => \debug_reg[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\debug_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(1),
	devoe => ww_devoe,
	o => \debug_reg[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\debug_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(2),
	devoe => ww_devoe,
	o => \debug_reg[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\debug_reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(3),
	devoe => ww_devoe,
	o => \debug_reg[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\debug_reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(4),
	devoe => ww_devoe,
	o => \debug_reg[4]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\debug_reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(5),
	devoe => ww_devoe,
	o => \debug_reg[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\debug_reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(6),
	devoe => ww_devoe,
	o => \debug_reg[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\debug_reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(7),
	devoe => ww_devoe,
	o => \debug_reg[7]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\debug_reg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(8),
	devoe => ww_devoe,
	o => \debug_reg[8]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\debug_reg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(9),
	devoe => ww_devoe,
	o => \debug_reg[9]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\debug_reg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(10),
	devoe => ww_devoe,
	o => \debug_reg[10]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\debug_reg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(11),
	devoe => ww_devoe,
	o => \debug_reg[11]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\debug_reg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(12),
	devoe => ww_devoe,
	o => \debug_reg[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\debug_reg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(13),
	devoe => ww_devoe,
	o => \debug_reg[13]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\debug_reg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(14),
	devoe => ww_devoe,
	o => \debug_reg[14]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\debug_reg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|saida\(15),
	devoe => ww_devoe,
	o => \debug_reg[15]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\d_seletor[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|seletor\(0),
	devoe => ww_devoe,
	o => \d_seletor[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\d_seletor[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|seletor\(1),
	devoe => ww_devoe,
	o => \d_seletor[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\d_seletor[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d_seletor[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y24_N8
\bt2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\bt1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: LCCOMB_X24_Y20_N18
\i2|pc_banco[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc_banco[1]~1_combout\ = (!\bt2~input_o\ & (\i2|pc_banco\(1) $ (((\bt1~input_o\ & !\i2|pc_banco\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt2~input_o\,
	datab => \bt1~input_o\,
	datac => \i2|pc_banco\(1),
	datad => \i2|pc_banco\(0),
	combout => \i2|pc_banco[1]~1_combout\);

-- Location: FF_X24_Y20_N19
\i2|pc_banco[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc_banco[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc_banco\(1));

-- Location: LCCOMB_X24_Y20_N12
\i2|pc_banco[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc_banco[0]~0_combout\ = (!\bt2~input_o\ & ((\i2|pc_banco\(0)) # ((\bt1~input_o\ & \i2|pc_banco\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt2~input_o\,
	datab => \bt1~input_o\,
	datac => \i2|pc_banco\(0),
	datad => \i2|pc_banco\(1),
	combout => \i2|pc_banco[0]~0_combout\);

-- Location: FF_X24_Y20_N13
\i2|pc_banco[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc_banco[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc_banco\(0));

-- Location: LCCOMB_X24_Y20_N28
\i2|exec_op_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|exec_op_out~0_combout\ = (\bt2~input_o\) # ((\i2|exec_op_out~q\ & ((\i2|pc_banco\(0)) # (!\bt1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt2~input_o\,
	datab => \bt1~input_o\,
	datac => \i2|exec_op_out~q\,
	datad => \i2|pc_banco\(0),
	combout => \i2|exec_op_out~0_combout\);

-- Location: FF_X24_Y20_N29
\i2|exec_op_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|exec_op_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|exec_op_out~q\);

-- Location: IOIBUF_X34_Y19_N15
\instrucao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(2),
	o => \instrucao[2]~input_o\);

-- Location: LCCOMB_X24_Y20_N22
\i2|a[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[5]~0_combout\ = (\bt1~input_o\ & (!\i2|pc_banco\(1) & !\i2|pc_banco\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \i2|pc_banco\(1),
	datad => \i2|pc_banco\(0),
	combout => \i2|a[5]~0_combout\);

-- Location: FF_X24_Y20_N23
\i2|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[2]~input_o\,
	sload => VCC,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(0));

-- Location: IOIBUF_X21_Y0_N1
\instrucao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(3),
	o => \instrucao[3]~input_o\);

-- Location: LCCOMB_X19_Y20_N4
\i2|a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[1]~feeder_combout\ = \instrucao[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[3]~input_o\,
	combout => \i2|a[1]~feeder_combout\);

-- Location: FF_X19_Y20_N5
\i2|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[1]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(1));

-- Location: IOIBUF_X13_Y24_N8
\instrucao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(4),
	o => \instrucao[4]~input_o\);

-- Location: LCCOMB_X23_Y20_N4
\i2|a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[2]~feeder_combout\ = \instrucao[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[4]~input_o\,
	combout => \i2|a[2]~feeder_combout\);

-- Location: FF_X23_Y20_N5
\i2|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[2]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(2));

-- Location: IOIBUF_X28_Y24_N1
\instrucao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(5),
	o => \instrucao[5]~input_o\);

-- Location: LCCOMB_X19_Y20_N6
\i2|a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[3]~feeder_combout\ = \instrucao[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[5]~input_o\,
	combout => \i2|a[3]~feeder_combout\);

-- Location: FF_X19_Y20_N7
\i2|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[3]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(3));

-- Location: IOIBUF_X5_Y24_N1
\instrucao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(6),
	o => \instrucao[6]~input_o\);

-- Location: FF_X24_Y20_N5
\i2|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[6]~input_o\,
	sload => VCC,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(4));

-- Location: IOIBUF_X9_Y24_N15
\instrucao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(7),
	o => \instrucao[7]~input_o\);

-- Location: LCCOMB_X19_Y20_N12
\i2|a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[5]~feeder_combout\ = \instrucao[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[7]~input_o\,
	combout => \i2|a[5]~feeder_combout\);

-- Location: FF_X19_Y20_N13
\i2|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[5]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(5));

-- Location: IOIBUF_X18_Y24_N22
\instrucao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(8),
	o => \instrucao[8]~input_o\);

-- Location: LCCOMB_X19_Y20_N26
\i2|a[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[6]~feeder_combout\ = \instrucao[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[8]~input_o\,
	combout => \i2|a[6]~feeder_combout\);

-- Location: FF_X19_Y20_N27
\i2|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[6]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(6));

-- Location: IOIBUF_X34_Y20_N8
\instrucao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(9),
	o => \instrucao[9]~input_o\);

-- Location: LCCOMB_X23_Y20_N2
\i2|a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[7]~feeder_combout\ = \instrucao[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[9]~input_o\,
	combout => \i2|a[7]~feeder_combout\);

-- Location: FF_X23_Y20_N3
\i2|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[7]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(7));

-- Location: IOIBUF_X25_Y24_N1
\instrucao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(10),
	o => \instrucao[10]~input_o\);

-- Location: LCCOMB_X24_Y20_N30
\i2|a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[8]~feeder_combout\ = \instrucao[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[10]~input_o\,
	combout => \i2|a[8]~feeder_combout\);

-- Location: FF_X24_Y20_N31
\i2|a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[8]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(8));

-- Location: IOIBUF_X34_Y19_N8
\instrucao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(11),
	o => \instrucao[11]~input_o\);

-- Location: LCCOMB_X24_Y20_N20
\i2|a[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[9]~feeder_combout\ = \instrucao[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[11]~input_o\,
	combout => \i2|a[9]~feeder_combout\);

-- Location: FF_X24_Y20_N21
\i2|a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[9]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(9));

-- Location: IOIBUF_X16_Y24_N15
\instrucao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(12),
	o => \instrucao[12]~input_o\);

-- Location: FF_X24_Y20_N15
\i2|a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[12]~input_o\,
	sload => VCC,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(10));

-- Location: IOIBUF_X30_Y24_N1
\instrucao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(13),
	o => \instrucao[13]~input_o\);

-- Location: LCCOMB_X23_Y20_N0
\i2|a[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[11]~feeder_combout\ = \instrucao[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[13]~input_o\,
	combout => \i2|a[11]~feeder_combout\);

-- Location: FF_X23_Y20_N1
\i2|a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[11]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(11));

-- Location: IOIBUF_X21_Y0_N8
\instrucao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(14),
	o => \instrucao[14]~input_o\);

-- Location: FF_X19_Y20_N17
\i2|a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[14]~input_o\,
	sload => VCC,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(12));

-- Location: IOIBUF_X30_Y24_N22
\instrucao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(15),
	o => \instrucao[15]~input_o\);

-- Location: LCCOMB_X23_Y20_N22
\i2|a[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[13]~feeder_combout\ = \instrucao[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[15]~input_o\,
	combout => \i2|a[13]~feeder_combout\);

-- Location: FF_X23_Y20_N23
\i2|a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[13]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(13));

-- Location: IOIBUF_X9_Y24_N22
\instrucao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(16),
	o => \instrucao[16]~input_o\);

-- Location: FF_X24_Y20_N9
\i2|a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[16]~input_o\,
	sload => VCC,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(14));

-- Location: IOIBUF_X28_Y24_N8
\instrucao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(17),
	o => \instrucao[17]~input_o\);

-- Location: LCCOMB_X24_Y20_N26
\i2|a[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[15]~feeder_combout\ = \instrucao[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[17]~input_o\,
	combout => \i2|a[15]~feeder_combout\);

-- Location: FF_X24_Y20_N27
\i2|a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|a[15]~feeder_combout\,
	ena => \i2|a[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(15));

-- Location: LCCOMB_X24_Y20_N4
\i2|b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[0]~0_combout\ = (\bt1~input_o\ & (\i2|pc_banco\(1) & !\i2|pc_banco\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \i2|pc_banco\(1),
	datad => \i2|pc_banco\(0),
	combout => \i2|b[0]~0_combout\);

-- Location: FF_X23_Y20_N21
\i2|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[2]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(0));

-- Location: LCCOMB_X19_Y20_N10
\i2|b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[1]~feeder_combout\ = \instrucao[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[3]~input_o\,
	combout => \i2|b[1]~feeder_combout\);

-- Location: FF_X19_Y20_N11
\i2|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[1]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(1));

-- Location: FF_X19_Y20_N1
\i2|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[4]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(2));

-- Location: LCCOMB_X19_Y20_N18
\i2|b[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[3]~feeder_combout\ = \instrucao[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[5]~input_o\,
	combout => \i2|b[3]~feeder_combout\);

-- Location: FF_X19_Y20_N19
\i2|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[3]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(3));

-- Location: LCCOMB_X19_Y20_N28
\i2|b[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[4]~feeder_combout\ = \instrucao[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[6]~input_o\,
	combout => \i2|b[4]~feeder_combout\);

-- Location: FF_X19_Y20_N29
\i2|b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[4]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(4));

-- Location: LCCOMB_X19_Y20_N14
\i2|b[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[5]~feeder_combout\ = \instrucao[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[7]~input_o\,
	combout => \i2|b[5]~feeder_combout\);

-- Location: FF_X19_Y20_N15
\i2|b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[5]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(5));

-- Location: LCCOMB_X19_Y20_N24
\i2|b[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[6]~feeder_combout\ = \instrucao[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[8]~input_o\,
	combout => \i2|b[6]~feeder_combout\);

-- Location: FF_X19_Y20_N25
\i2|b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[6]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(6));

-- Location: LCCOMB_X23_Y20_N14
\i2|b[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[7]~feeder_combout\ = \instrucao[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[9]~input_o\,
	combout => \i2|b[7]~feeder_combout\);

-- Location: FF_X23_Y20_N15
\i2|b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[7]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(7));

-- Location: LCCOMB_X23_Y20_N24
\i2|b[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[8]~feeder_combout\ = \instrucao[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[10]~input_o\,
	combout => \i2|b[8]~feeder_combout\);

-- Location: FF_X23_Y20_N25
\i2|b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[8]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(8));

-- Location: FF_X23_Y20_N11
\i2|b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[11]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(9));

-- Location: LCCOMB_X19_Y20_N22
\i2|b[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[10]~feeder_combout\ = \instrucao[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[12]~input_o\,
	combout => \i2|b[10]~feeder_combout\);

-- Location: FF_X19_Y20_N23
\i2|b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[10]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(10));

-- Location: LCCOMB_X23_Y20_N28
\i2|b[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[11]~feeder_combout\ = \instrucao[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[13]~input_o\,
	combout => \i2|b[11]~feeder_combout\);

-- Location: FF_X23_Y20_N29
\i2|b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[11]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(11));

-- Location: FF_X19_Y20_N21
\i2|b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[14]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(12));

-- Location: LCCOMB_X23_Y20_N18
\i2|b[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[13]~feeder_combout\ = \instrucao[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[15]~input_o\,
	combout => \i2|b[13]~feeder_combout\);

-- Location: FF_X23_Y20_N19
\i2|b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[13]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(13));

-- Location: LCCOMB_X19_Y20_N30
\i2|b[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[14]~feeder_combout\ = \instrucao[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[16]~input_o\,
	combout => \i2|b[14]~feeder_combout\);

-- Location: FF_X19_Y20_N31
\i2|b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|b[14]~feeder_combout\,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(14));

-- Location: FF_X23_Y20_N13
\i2|b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[17]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(15));

-- Location: LCCOMB_X24_Y20_N24
\i2|b[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[0]~1_combout\ = (\bt1~input_o\ & !\i2|pc_banco\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bt1~input_o\,
	datad => \i2|pc_banco\(0),
	combout => \i2|b[0]~1_combout\);

-- Location: FF_X24_Y18_N21
\i2|valor_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[2]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(0));

-- Location: IOIBUF_X34_Y9_N1
\bt3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt3,
	o => \bt3~input_o\);

-- Location: FF_X29_Y18_N5
\i3|registrador_clear[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bt3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_clear\(0));

-- Location: LCCOMB_X24_Y18_N20
\i3|r1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~0_combout\ = (\i2|valor_out\(0) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(0),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~0_combout\);

-- Location: IOIBUF_X32_Y24_N22
\instrucao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(1),
	o => \instrucao[1]~input_o\);

-- Location: LCCOMB_X31_Y20_N6
\i2|seletor[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor[1]~feeder_combout\ = \instrucao[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[1]~input_o\,
	combout => \i2|seletor[1]~feeder_combout\);

-- Location: FF_X31_Y20_N7
\i2|seletor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|seletor[1]~feeder_combout\,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|seletor\(1));

-- Location: IOIBUF_X32_Y24_N15
\instrucao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(0),
	o => \instrucao[0]~input_o\);

-- Location: LCCOMB_X31_Y20_N4
\i2|seletor[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor[0]~feeder_combout\ = \instrucao[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[0]~input_o\,
	combout => \i2|seletor[0]~feeder_combout\);

-- Location: FF_X31_Y20_N5
\i2|seletor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|seletor[0]~feeder_combout\,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|seletor\(0));

-- Location: LCCOMB_X30_Y18_N28
\i3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Equal2~0_combout\ = (!\i2|seletor\(1) & \i2|seletor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|seletor\(1),
	datad => \i2|seletor\(0),
	combout => \i3|Equal2~0_combout\);

-- Location: FF_X30_Y18_N29
\i3|registrador_escolhido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|Equal2~0_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(1));

-- Location: LCCOMB_X29_Y18_N0
\i3|r2|q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[7]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(1),
	combout => \i3|r2|q[7]~0_combout\);

-- Location: FF_X29_Y18_N1
\i3|r2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~0_combout\,
	sload => VCC,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(0));

-- Location: LCCOMB_X24_Y18_N12
\i3|r4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[0]~feeder_combout\ = \i3|r1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~0_combout\,
	combout => \i3|r4|q[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y18_N22
\i3|registrador_escolhido[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[3]~2_combout\ = (\bt1~input_o\ & (\i2|seletor\(0) & ((\i2|seletor\(1))))) # (!\bt1~input_o\ & (((\i3|registrador_escolhido\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \bt1~input_o\,
	datac => \i3|registrador_escolhido\(3),
	datad => \i2|seletor\(1),
	combout => \i3|registrador_escolhido[3]~2_combout\);

-- Location: FF_X29_Y18_N23
\i3|registrador_escolhido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(3));

-- Location: LCCOMB_X29_Y18_N12
\i3|r4|q[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[10]~0_combout\ = (\i3|registrador_escolhido\(3)) # (\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|registrador_escolhido\(3),
	datab => \i3|registrador_clear\(0),
	combout => \i3|r4|q[10]~0_combout\);

-- Location: FF_X24_Y18_N13
\i3|r4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[0]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(0));

-- Location: LCCOMB_X30_Y18_N12
\i3|registrador_escolhido[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[0]~1_combout\ = (\bt1~input_o\ & (!\i2|seletor\(1) & ((!\i2|seletor\(0))))) # (!\bt1~input_o\ & (((\i3|registrador_escolhido\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \bt1~input_o\,
	datac => \i3|registrador_escolhido\(0),
	datad => \i2|seletor\(0),
	combout => \i3|registrador_escolhido[0]~1_combout\);

-- Location: FF_X30_Y18_N13
\i3|registrador_escolhido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(0));

-- Location: LCCOMB_X31_Y18_N14
\i3|r1|q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q[2]~1_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(0),
	combout => \i3|r1|q[2]~1_combout\);

-- Location: FF_X31_Y18_N31
\i3|r1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~0_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(0));

-- Location: LCCOMB_X25_Y18_N12
\i3|r3|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[0]~feeder_combout\ = \i3|r1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~0_combout\,
	combout => \i3|r3|q[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y18_N2
\i3|registrador_escolhido~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido~0_combout\ = (\i2|seletor\(1) & !\i2|seletor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|seletor\(1),
	datad => \i2|seletor\(0),
	combout => \i3|registrador_escolhido~0_combout\);

-- Location: FF_X30_Y18_N3
\i3|registrador_escolhido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido~0_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(2));

-- Location: LCCOMB_X25_Y18_N30
\i3|r3|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[3]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(2),
	combout => \i3|r3|q[3]~0_combout\);

-- Location: FF_X25_Y18_N13
\i3|r3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[0]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(0));

-- Location: LCCOMB_X31_Y18_N30
\i3|saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~0_combout\ = (\i2|seletor\(1) & ((\i2|seletor\(0)) # ((\i3|r3|q\(0))))) # (!\i2|seletor\(1) & (!\i2|seletor\(0) & (\i3|r1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(0),
	datad => \i3|r3|q\(0),
	combout => \i3|saida~0_combout\);

-- Location: LCCOMB_X31_Y18_N8
\i3|saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~1_combout\ = (\i3|saida~0_combout\ & (((\i3|r4|q\(0)) # (!\i2|seletor\(0))))) # (!\i3|saida~0_combout\ & (\i3|r2|q\(0) & ((\i2|seletor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r2|q\(0),
	datab => \i3|r4|q\(0),
	datac => \i3|saida~0_combout\,
	datad => \i2|seletor\(0),
	combout => \i3|saida~1_combout\);

-- Location: FF_X31_Y18_N9
\i3|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~1_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(0));

-- Location: FF_X28_Y18_N9
\i2|valor_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[3]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(1));

-- Location: LCCOMB_X28_Y18_N8
\i3|r1|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~2_combout\ = (\i2|valor_out\(1) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(1),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~2_combout\);

-- Location: FF_X31_Y18_N29
\i3|r1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~2_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(1));

-- Location: LCCOMB_X26_Y18_N20
\i3|r2|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~2_combout\,
	combout => \i3|r2|q[1]~feeder_combout\);

-- Location: FF_X26_Y18_N21
\i3|r2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[1]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(1));

-- Location: LCCOMB_X31_Y18_N28
\i3|saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~2_combout\ = (\i2|seletor\(1) & (\i2|seletor\(0))) # (!\i2|seletor\(1) & ((\i2|seletor\(0) & ((\i3|r2|q\(1)))) # (!\i2|seletor\(0) & (\i3|r1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(1),
	datad => \i3|r2|q\(1),
	combout => \i3|saida~2_combout\);

-- Location: LCCOMB_X28_Y18_N16
\i3|r4|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~2_combout\,
	combout => \i3|r4|q[1]~feeder_combout\);

-- Location: FF_X28_Y18_N17
\i3|r4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[1]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(1));

-- Location: LCCOMB_X25_Y18_N10
\i3|r3|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~2_combout\,
	combout => \i3|r3|q[1]~feeder_combout\);

-- Location: FF_X25_Y18_N11
\i3|r3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[1]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(1));

-- Location: LCCOMB_X31_Y18_N18
\i3|saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~3_combout\ = (\i2|seletor\(1) & ((\i3|saida~2_combout\ & (\i3|r4|q\(1))) # (!\i3|saida~2_combout\ & ((\i3|r3|q\(1)))))) # (!\i2|seletor\(1) & (\i3|saida~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|saida~2_combout\,
	datac => \i3|r4|q\(1),
	datad => \i3|r3|q\(1),
	combout => \i3|saida~3_combout\);

-- Location: FF_X31_Y18_N19
\i3|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~3_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(1));

-- Location: FF_X24_Y18_N11
\i2|valor_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[4]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(2));

-- Location: LCCOMB_X24_Y18_N10
\i3|r1|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~3_combout\ = (\i2|valor_out\(2) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(2),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~3_combout\);

-- Location: FF_X31_Y18_N27
\i3|r1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~3_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(2));

-- Location: LCCOMB_X25_Y18_N14
\i3|r3|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~3_combout\,
	combout => \i3|r3|q[2]~feeder_combout\);

-- Location: FF_X25_Y18_N15
\i3|r3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[2]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(2));

-- Location: LCCOMB_X31_Y18_N26
\i3|saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~4_combout\ = (\i2|seletor\(1) & ((\i2|seletor\(0)) # ((\i3|r3|q\(2))))) # (!\i2|seletor\(1) & (!\i2|seletor\(0) & (\i3|r1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(2),
	datad => \i3|r3|q\(2),
	combout => \i3|saida~4_combout\);

-- Location: LCCOMB_X25_Y18_N8
\i3|r2|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~3_combout\,
	combout => \i3|r2|q[2]~feeder_combout\);

-- Location: FF_X25_Y18_N9
\i3|r2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[2]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(2));

-- Location: LCCOMB_X24_Y18_N2
\i3|r4|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~3_combout\,
	combout => \i3|r4|q[2]~feeder_combout\);

-- Location: FF_X24_Y18_N3
\i3|r4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[2]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(2));

-- Location: LCCOMB_X31_Y18_N16
\i3|saida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~5_combout\ = (\i3|saida~4_combout\ & (((\i3|r4|q\(2))) # (!\i2|seletor\(0)))) # (!\i3|saida~4_combout\ & (\i2|seletor\(0) & (\i3|r2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~4_combout\,
	datab => \i2|seletor\(0),
	datac => \i3|r2|q\(2),
	datad => \i3|r4|q\(2),
	combout => \i3|saida~5_combout\);

-- Location: FF_X31_Y18_N17
\i3|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~5_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(2));

-- Location: FF_X28_Y18_N3
\i2|valor_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[5]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(3));

-- Location: LCCOMB_X28_Y18_N2
\i3|r1|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~4_combout\ = (\i2|valor_out\(3) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(3),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~4_combout\);

-- Location: LCCOMB_X29_Y18_N30
\i3|r2|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~4_combout\,
	combout => \i3|r2|q[3]~feeder_combout\);

-- Location: FF_X29_Y18_N31
\i3|r2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[3]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(3));

-- Location: FF_X31_Y18_N13
\i3|r1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~4_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(3));

-- Location: LCCOMB_X31_Y18_N12
\i3|saida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~6_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(0))))) # (!\i2|seletor\(1) & ((\i2|seletor\(0) & (\i3|r2|q\(3))) # (!\i2|seletor\(0) & ((\i3|r1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r2|q\(3),
	datac => \i3|r1|q\(3),
	datad => \i2|seletor\(0),
	combout => \i3|saida~6_combout\);

-- Location: LCCOMB_X28_Y18_N18
\i3|r4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~4_combout\,
	combout => \i3|r4|q[3]~feeder_combout\);

-- Location: FF_X28_Y18_N19
\i3|r4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[3]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(3));

-- Location: LCCOMB_X25_Y18_N24
\i3|r3|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~4_combout\,
	combout => \i3|r3|q[3]~feeder_combout\);

-- Location: FF_X25_Y18_N25
\i3|r3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[3]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(3));

-- Location: LCCOMB_X31_Y18_N10
\i3|saida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~7_combout\ = (\i3|saida~6_combout\ & ((\i3|r4|q\(3)) # ((!\i2|seletor\(1))))) # (!\i3|saida~6_combout\ & (((\i2|seletor\(1) & \i3|r3|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~6_combout\,
	datab => \i3|r4|q\(3),
	datac => \i2|seletor\(1),
	datad => \i3|r3|q\(3),
	combout => \i3|saida~7_combout\);

-- Location: FF_X31_Y18_N11
\i3|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~7_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(3));

-- Location: FF_X24_Y18_N17
\i2|valor_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[6]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(4));

-- Location: LCCOMB_X24_Y18_N16
\i3|r1|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~5_combout\ = (\i2|valor_out\(4) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(4),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~5_combout\);

-- Location: FF_X31_Y18_N23
\i3|r1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~5_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(4));

-- Location: LCCOMB_X25_Y18_N18
\i3|r3|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[4]~feeder_combout\ = \i3|r1|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~5_combout\,
	combout => \i3|r3|q[4]~feeder_combout\);

-- Location: FF_X25_Y18_N19
\i3|r3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[4]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(4));

-- Location: LCCOMB_X31_Y18_N22
\i3|saida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~8_combout\ = (\i2|seletor\(1) & ((\i2|seletor\(0)) # ((\i3|r3|q\(4))))) # (!\i2|seletor\(1) & (!\i2|seletor\(0) & (\i3|r1|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(4),
	datad => \i3|r3|q\(4),
	combout => \i3|saida~8_combout\);

-- Location: FF_X29_Y18_N13
\i3|r2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~5_combout\,
	sload => VCC,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(4));

-- Location: LCCOMB_X24_Y18_N24
\i3|r4|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[4]~feeder_combout\ = \i3|r1|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~5_combout\,
	combout => \i3|r4|q[4]~feeder_combout\);

-- Location: FF_X24_Y18_N25
\i3|r4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[4]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(4));

-- Location: LCCOMB_X31_Y18_N20
\i3|saida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~9_combout\ = (\i3|saida~8_combout\ & (((\i3|r4|q\(4))) # (!\i2|seletor\(0)))) # (!\i3|saida~8_combout\ & (\i2|seletor\(0) & (\i3|r2|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~8_combout\,
	datab => \i2|seletor\(0),
	datac => \i3|r2|q\(4),
	datad => \i3|r4|q\(4),
	combout => \i3|saida~9_combout\);

-- Location: FF_X31_Y18_N21
\i3|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~9_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(4));

-- Location: FF_X28_Y18_N29
\i2|valor_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[7]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(5));

-- Location: LCCOMB_X28_Y18_N28
\i3|r1|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~6_combout\ = (\i2|valor_out\(5) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(5),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~6_combout\);

-- Location: LCCOMB_X25_Y18_N20
\i3|r3|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~6_combout\,
	combout => \i3|r3|q[5]~feeder_combout\);

-- Location: FF_X25_Y18_N21
\i3|r3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[5]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(5));

-- Location: FF_X31_Y18_N1
\i3|r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~6_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(5));

-- Location: LCCOMB_X29_Y18_N6
\i3|r2|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~6_combout\,
	combout => \i3|r2|q[5]~feeder_combout\);

-- Location: FF_X29_Y18_N7
\i3|r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[5]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(5));

-- Location: LCCOMB_X31_Y18_N0
\i3|saida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~10_combout\ = (\i2|seletor\(1) & (\i2|seletor\(0))) # (!\i2|seletor\(1) & ((\i2|seletor\(0) & ((\i3|r2|q\(5)))) # (!\i2|seletor\(0) & (\i3|r1|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(5),
	datad => \i3|r2|q\(5),
	combout => \i3|saida~10_combout\);

-- Location: LCCOMB_X28_Y18_N24
\i3|r4|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~6_combout\,
	combout => \i3|r4|q[5]~feeder_combout\);

-- Location: FF_X28_Y18_N25
\i3|r4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[5]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(5));

-- Location: LCCOMB_X31_Y18_N2
\i3|saida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~11_combout\ = (\i3|saida~10_combout\ & (((\i3|r4|q\(5)) # (!\i2|seletor\(1))))) # (!\i3|saida~10_combout\ & (\i3|r3|q\(5) & (\i2|seletor\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r3|q\(5),
	datab => \i3|saida~10_combout\,
	datac => \i2|seletor\(1),
	datad => \i3|r4|q\(5),
	combout => \i3|saida~11_combout\);

-- Location: FF_X31_Y18_N3
\i3|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~11_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(5));

-- Location: FF_X24_Y18_N7
\i2|valor_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[8]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(6));

-- Location: LCCOMB_X24_Y18_N6
\i3|r1|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~7_combout\ = (\i2|valor_out\(6) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(6),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~7_combout\);

-- Location: LCCOMB_X29_Y18_N16
\i3|r2|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~7_combout\,
	combout => \i3|r2|q[6]~feeder_combout\);

-- Location: FF_X29_Y18_N17
\i3|r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[6]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(6));

-- Location: LCCOMB_X24_Y18_N30
\i3|r4|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~7_combout\,
	combout => \i3|r4|q[6]~feeder_combout\);

-- Location: FF_X24_Y18_N31
\i3|r4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[6]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(6));

-- Location: FF_X31_Y18_N7
\i3|r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~7_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(6));

-- Location: LCCOMB_X25_Y18_N22
\i3|r3|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~7_combout\,
	combout => \i3|r3|q[6]~feeder_combout\);

-- Location: FF_X25_Y18_N23
\i3|r3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[6]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(6));

-- Location: LCCOMB_X31_Y18_N6
\i3|saida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~12_combout\ = (\i2|seletor\(1) & ((\i2|seletor\(0)) # ((\i3|r3|q\(6))))) # (!\i2|seletor\(1) & (!\i2|seletor\(0) & (\i3|r1|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i2|seletor\(0),
	datac => \i3|r1|q\(6),
	datad => \i3|r3|q\(6),
	combout => \i3|saida~12_combout\);

-- Location: LCCOMB_X33_Y18_N24
\i3|saida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~13_combout\ = (\i2|seletor\(0) & ((\i3|saida~12_combout\ & ((\i3|r4|q\(6)))) # (!\i3|saida~12_combout\ & (\i3|r2|q\(6))))) # (!\i2|seletor\(0) & (((\i3|saida~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r2|q\(6),
	datab => \i3|r4|q\(6),
	datac => \i2|seletor\(0),
	datad => \i3|saida~12_combout\,
	combout => \i3|saida~13_combout\);

-- Location: FF_X33_Y18_N25
\i3|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~13_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(6));

-- Location: FF_X28_Y18_N27
\i2|valor_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[9]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(7));

-- Location: LCCOMB_X28_Y18_N26
\i3|r1|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~8_combout\ = (\i2|valor_out\(7) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(7),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~8_combout\);

-- Location: LCCOMB_X28_Y18_N30
\i3|r4|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[7]~feeder_combout\ = \i3|r1|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~8_combout\,
	combout => \i3|r4|q[7]~feeder_combout\);

-- Location: FF_X28_Y18_N31
\i3|r4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[7]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(7));

-- Location: LCCOMB_X25_Y18_N4
\i3|r3|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[7]~feeder_combout\ = \i3|r1|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~8_combout\,
	combout => \i3|r3|q[7]~feeder_combout\);

-- Location: FF_X25_Y18_N5
\i3|r3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[7]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(7));

-- Location: LCCOMB_X29_Y18_N2
\i3|r2|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[7]~feeder_combout\ = \i3|r1|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~8_combout\,
	combout => \i3|r2|q[7]~feeder_combout\);

-- Location: FF_X29_Y18_N3
\i3|r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[7]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(7));

-- Location: FF_X31_Y18_N25
\i3|r1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~8_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(7));

-- Location: LCCOMB_X31_Y18_N24
\i3|saida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~14_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(0))))) # (!\i2|seletor\(1) & ((\i2|seletor\(0) & (\i3|r2|q\(7))) # (!\i2|seletor\(0) & ((\i3|r1|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r2|q\(7),
	datac => \i3|r1|q\(7),
	datad => \i2|seletor\(0),
	combout => \i3|saida~14_combout\);

-- Location: LCCOMB_X31_Y18_N4
\i3|saida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~15_combout\ = (\i2|seletor\(1) & ((\i3|saida~14_combout\ & (\i3|r4|q\(7))) # (!\i3|saida~14_combout\ & ((\i3|r3|q\(7)))))) # (!\i2|seletor\(1) & (((\i3|saida~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(7),
	datac => \i3|r3|q\(7),
	datad => \i3|saida~14_combout\,
	combout => \i3|saida~15_combout\);

-- Location: FF_X31_Y18_N5
\i3|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~15_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(7));

-- Location: FF_X24_Y18_N5
\i2|valor_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[10]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(8));

-- Location: LCCOMB_X24_Y18_N4
\i3|r1|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~9_combout\ = (\i2|valor_out\(8) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(8),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~9_combout\);

-- Location: LCCOMB_X24_Y18_N0
\i3|r4|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~9_combout\,
	combout => \i3|r4|q[8]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\i3|r4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[8]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(8));

-- Location: LCCOMB_X29_Y18_N28
\i3|r2|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~9_combout\,
	combout => \i3|r2|q[8]~feeder_combout\);

-- Location: FF_X29_Y18_N29
\i3|r2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[8]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(8));

-- Location: FF_X32_Y18_N21
\i3|r1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~9_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(8));

-- Location: LCCOMB_X25_Y18_N26
\i3|r3|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~9_combout\,
	combout => \i3|r3|q[8]~feeder_combout\);

-- Location: FF_X25_Y18_N27
\i3|r3|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[8]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(8));

-- Location: LCCOMB_X32_Y18_N20
\i3|saida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~16_combout\ = (\i2|seletor\(0) & (\i2|seletor\(1))) # (!\i2|seletor\(0) & ((\i2|seletor\(1) & ((\i3|r3|q\(8)))) # (!\i2|seletor\(1) & (\i3|r1|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i2|seletor\(1),
	datac => \i3|r1|q\(8),
	datad => \i3|r3|q\(8),
	combout => \i3|saida~16_combout\);

-- Location: LCCOMB_X32_Y18_N0
\i3|saida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~17_combout\ = (\i2|seletor\(0) & ((\i3|saida~16_combout\ & (\i3|r4|q\(8))) # (!\i3|saida~16_combout\ & ((\i3|r2|q\(8)))))) # (!\i2|seletor\(0) & (((\i3|saida~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r4|q\(8),
	datab => \i3|r2|q\(8),
	datac => \i2|seletor\(0),
	datad => \i3|saida~16_combout\,
	combout => \i3|saida~17_combout\);

-- Location: FF_X32_Y18_N1
\i3|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~17_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(8));

-- Location: FF_X28_Y18_N13
\i2|valor_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[11]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(9));

-- Location: LCCOMB_X28_Y18_N12
\i3|r1|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~10_combout\ = (\i2|valor_out\(9) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(9),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~10_combout\);

-- Location: LCCOMB_X25_Y18_N16
\i3|r3|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[9]~feeder_combout\ = \i3|r1|q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~10_combout\,
	combout => \i3|r3|q[9]~feeder_combout\);

-- Location: FF_X25_Y18_N17
\i3|r3|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[9]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(9));

-- Location: FF_X32_Y18_N3
\i3|r1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~10_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(9));

-- Location: LCCOMB_X29_Y18_N14
\i3|r2|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[9]~feeder_combout\ = \i3|r1|q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~10_combout\,
	combout => \i3|r2|q[9]~feeder_combout\);

-- Location: FF_X29_Y18_N15
\i3|r2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[9]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(9));

-- Location: LCCOMB_X32_Y18_N2
\i3|saida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~18_combout\ = (\i2|seletor\(0) & ((\i2|seletor\(1)) # ((\i3|r2|q\(9))))) # (!\i2|seletor\(0) & (!\i2|seletor\(1) & (\i3|r1|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i2|seletor\(1),
	datac => \i3|r1|q\(9),
	datad => \i3|r2|q\(9),
	combout => \i3|saida~18_combout\);

-- Location: LCCOMB_X28_Y18_N4
\i3|r4|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[9]~feeder_combout\ = \i3|r1|q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~10_combout\,
	combout => \i3|r4|q[9]~feeder_combout\);

-- Location: FF_X28_Y18_N5
\i3|r4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[9]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(9));

-- Location: LCCOMB_X32_Y18_N22
\i3|saida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~19_combout\ = (\i3|saida~18_combout\ & (((\i3|r4|q\(9)) # (!\i2|seletor\(1))))) # (!\i3|saida~18_combout\ & (\i3|r3|q\(9) & ((\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r3|q\(9),
	datab => \i3|saida~18_combout\,
	datac => \i3|r4|q\(9),
	datad => \i2|seletor\(1),
	combout => \i3|saida~19_combout\);

-- Location: FF_X32_Y18_N23
\i3|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~19_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(9));

-- Location: FF_X24_Y18_N15
\i2|valor_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[12]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(10));

-- Location: LCCOMB_X24_Y18_N14
\i3|r1|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~11_combout\ = (\i2|valor_out\(10) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(10),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~11_combout\);

-- Location: LCCOMB_X29_Y18_N8
\i3|r2|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~11_combout\,
	combout => \i3|r2|q[10]~feeder_combout\);

-- Location: FF_X29_Y18_N9
\i3|r2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[10]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(10));

-- Location: LCCOMB_X24_Y18_N18
\i3|r4|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~11_combout\,
	combout => \i3|r4|q[10]~feeder_combout\);

-- Location: FF_X24_Y18_N19
\i3|r4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[10]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(10));

-- Location: LCCOMB_X25_Y18_N6
\i3|r3|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~11_combout\,
	combout => \i3|r3|q[10]~feeder_combout\);

-- Location: FF_X25_Y18_N7
\i3|r3|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[10]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(10));

-- Location: FF_X32_Y18_N17
\i3|r1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~11_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(10));

-- Location: LCCOMB_X32_Y18_N16
\i3|saida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~20_combout\ = (\i2|seletor\(0) & (((\i2|seletor\(1))))) # (!\i2|seletor\(0) & ((\i2|seletor\(1) & (\i3|r3|q\(10))) # (!\i2|seletor\(1) & ((\i3|r1|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|r3|q\(10),
	datac => \i3|r1|q\(10),
	datad => \i2|seletor\(1),
	combout => \i3|saida~20_combout\);

-- Location: LCCOMB_X32_Y18_N4
\i3|saida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~21_combout\ = (\i2|seletor\(0) & ((\i3|saida~20_combout\ & ((\i3|r4|q\(10)))) # (!\i3|saida~20_combout\ & (\i3|r2|q\(10))))) # (!\i2|seletor\(0) & (((\i3|saida~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r2|q\(10),
	datab => \i3|r4|q\(10),
	datac => \i2|seletor\(0),
	datad => \i3|saida~20_combout\,
	combout => \i3|saida~21_combout\);

-- Location: FF_X32_Y18_N5
\i3|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~21_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(10));

-- Location: FF_X28_Y18_N23
\i2|valor_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[13]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(11));

-- Location: LCCOMB_X28_Y18_N22
\i3|r1|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~12_combout\ = (\i2|valor_out\(11) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(11),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~12_combout\);

-- Location: LCCOMB_X26_Y18_N30
\i3|r3|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~12_combout\,
	combout => \i3|r3|q[11]~feeder_combout\);

-- Location: FF_X26_Y18_N31
\i3|r3|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[11]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(11));

-- Location: LCCOMB_X29_Y18_N10
\i3|r2|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~12_combout\,
	combout => \i3|r2|q[11]~feeder_combout\);

-- Location: FF_X29_Y18_N11
\i3|r2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[11]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(11));

-- Location: FF_X31_Y18_N15
\i3|r1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~12_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(11));

-- Location: LCCOMB_X32_Y18_N26
\i3|saida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~22_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(0))))) # (!\i2|seletor\(1) & ((\i2|seletor\(0) & (\i3|r2|q\(11))) # (!\i2|seletor\(0) & ((\i3|r1|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r2|q\(11),
	datab => \i2|seletor\(1),
	datac => \i2|seletor\(0),
	datad => \i3|r1|q\(11),
	combout => \i3|saida~22_combout\);

-- Location: LCCOMB_X28_Y18_N10
\i3|r4|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~12_combout\,
	combout => \i3|r4|q[11]~feeder_combout\);

-- Location: FF_X28_Y18_N11
\i3|r4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[11]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(11));

-- Location: LCCOMB_X32_Y18_N14
\i3|saida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~23_combout\ = (\i2|seletor\(1) & ((\i3|saida~22_combout\ & ((\i3|r4|q\(11)))) # (!\i3|saida~22_combout\ & (\i3|r3|q\(11))))) # (!\i2|seletor\(1) & (((\i3|saida~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r3|q\(11),
	datab => \i2|seletor\(1),
	datac => \i3|saida~22_combout\,
	datad => \i3|r4|q\(11),
	combout => \i3|saida~23_combout\);

-- Location: FF_X32_Y18_N15
\i3|saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~23_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(11));

-- Location: FF_X24_Y18_N29
\i2|valor_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[14]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(12));

-- Location: LCCOMB_X24_Y18_N28
\i3|r1|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~13_combout\ = (\i2|valor_out\(12) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(12),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~13_combout\);

-- Location: LCCOMB_X24_Y18_N8
\i3|r4|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[12]~feeder_combout\ = \i3|r1|q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~13_combout\,
	combout => \i3|r4|q[12]~feeder_combout\);

-- Location: FF_X24_Y18_N9
\i3|r4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[12]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(12));

-- Location: LCCOMB_X29_Y18_N20
\i3|r2|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[12]~feeder_combout\ = \i3|r1|q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~13_combout\,
	combout => \i3|r2|q[12]~feeder_combout\);

-- Location: FF_X29_Y18_N21
\i3|r2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[12]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(12));

-- Location: LCCOMB_X25_Y18_N0
\i3|r3|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[12]~feeder_combout\ = \i3|r1|q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~13_combout\,
	combout => \i3|r3|q[12]~feeder_combout\);

-- Location: FF_X25_Y18_N1
\i3|r3|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[12]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(12));

-- Location: FF_X32_Y18_N13
\i3|r1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(12));

-- Location: LCCOMB_X32_Y18_N12
\i3|saida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~24_combout\ = (\i2|seletor\(0) & (((\i2|seletor\(1))))) # (!\i2|seletor\(0) & ((\i2|seletor\(1) & (\i3|r3|q\(12))) # (!\i2|seletor\(1) & ((\i3|r1|q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|r3|q\(12),
	datac => \i3|r1|q\(12),
	datad => \i2|seletor\(1),
	combout => \i3|saida~24_combout\);

-- Location: LCCOMB_X32_Y18_N8
\i3|saida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~25_combout\ = (\i2|seletor\(0) & ((\i3|saida~24_combout\ & (\i3|r4|q\(12))) # (!\i3|saida~24_combout\ & ((\i3|r2|q\(12)))))) # (!\i2|seletor\(0) & (((\i3|saida~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r4|q\(12),
	datab => \i3|r2|q\(12),
	datac => \i2|seletor\(0),
	datad => \i3|saida~24_combout\,
	combout => \i3|saida~25_combout\);

-- Location: FF_X32_Y18_N9
\i3|saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~25_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(12));

-- Location: FF_X28_Y18_N1
\i2|valor_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[15]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(13));

-- Location: LCCOMB_X28_Y18_N0
\i3|r1|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~14_combout\ = (\i2|valor_out\(13) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(13),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~14_combout\);

-- Location: LCCOMB_X29_Y18_N26
\i3|r2|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~14_combout\,
	combout => \i3|r2|q[13]~feeder_combout\);

-- Location: FF_X29_Y18_N27
\i3|r2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[13]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(13));

-- Location: FF_X32_Y18_N7
\i3|r1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~14_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(13));

-- Location: LCCOMB_X32_Y18_N6
\i3|saida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~26_combout\ = (\i2|seletor\(0) & ((\i3|r2|q\(13)) # ((\i2|seletor\(1))))) # (!\i2|seletor\(0) & (((\i3|r1|q\(13) & !\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|r2|q\(13),
	datac => \i3|r1|q\(13),
	datad => \i2|seletor\(1),
	combout => \i3|saida~26_combout\);

-- Location: FF_X25_Y18_N31
\i3|r3|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~14_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(13));

-- Location: LCCOMB_X28_Y18_N20
\i3|r4|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~14_combout\,
	combout => \i3|r4|q[13]~feeder_combout\);

-- Location: FF_X28_Y18_N21
\i3|r4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[13]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(13));

-- Location: LCCOMB_X32_Y18_N18
\i3|saida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~27_combout\ = (\i3|saida~26_combout\ & (((\i3|r4|q\(13))) # (!\i2|seletor\(1)))) # (!\i3|saida~26_combout\ & (\i2|seletor\(1) & (\i3|r3|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~26_combout\,
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(13),
	datad => \i3|r4|q\(13),
	combout => \i3|saida~27_combout\);

-- Location: FF_X32_Y18_N19
\i3|saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~27_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(13));

-- Location: FF_X24_Y18_N27
\i2|valor_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[16]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(14));

-- Location: LCCOMB_X24_Y18_N26
\i3|r1|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~15_combout\ = (\i2|valor_out\(14) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(14),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~15_combout\);

-- Location: LCCOMB_X29_Y18_N24
\i3|r2|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~15_combout\,
	combout => \i3|r2|q[14]~feeder_combout\);

-- Location: FF_X29_Y18_N25
\i3|r2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[14]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(14));

-- Location: LCCOMB_X24_Y18_N22
\i3|r4|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~15_combout\,
	combout => \i3|r4|q[14]~feeder_combout\);

-- Location: FF_X24_Y18_N23
\i3|r4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[14]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(14));

-- Location: FF_X32_Y18_N25
\i3|r1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~15_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(14));

-- Location: LCCOMB_X25_Y18_N28
\i3|r3|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~15_combout\,
	combout => \i3|r3|q[14]~feeder_combout\);

-- Location: FF_X25_Y18_N29
\i3|r3|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[14]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(14));

-- Location: LCCOMB_X32_Y18_N24
\i3|saida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~28_combout\ = (\i2|seletor\(0) & (\i2|seletor\(1))) # (!\i2|seletor\(0) & ((\i2|seletor\(1) & ((\i3|r3|q\(14)))) # (!\i2|seletor\(1) & (\i3|r1|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i2|seletor\(1),
	datac => \i3|r1|q\(14),
	datad => \i3|r3|q\(14),
	combout => \i3|saida~28_combout\);

-- Location: LCCOMB_X32_Y18_N28
\i3|saida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~29_combout\ = (\i2|seletor\(0) & ((\i3|saida~28_combout\ & ((\i3|r4|q\(14)))) # (!\i3|saida~28_combout\ & (\i3|r2|q\(14))))) # (!\i2|seletor\(0) & (((\i3|saida~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|r2|q\(14),
	datac => \i3|r4|q\(14),
	datad => \i3|saida~28_combout\,
	combout => \i3|saida~29_combout\);

-- Location: FF_X32_Y18_N29
\i3|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~29_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(14));

-- Location: FF_X28_Y18_N15
\i2|valor_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[17]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(15));

-- Location: LCCOMB_X28_Y18_N14
\i3|r1|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~16_combout\ = (\i2|valor_out\(15) & !\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|valor_out\(15),
	datad => \i3|registrador_clear\(0),
	combout => \i3|r1|q~16_combout\);

-- Location: LCCOMB_X29_Y18_N18
\i3|r2|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[15]~feeder_combout\ = \i3|r1|q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~16_combout\,
	combout => \i3|r2|q[15]~feeder_combout\);

-- Location: FF_X29_Y18_N19
\i3|r2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r2|q[15]~feeder_combout\,
	ena => \i3|r2|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(15));

-- Location: FF_X32_Y18_N11
\i3|r1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~16_combout\,
	sload => VCC,
	ena => \i3|r1|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(15));

-- Location: LCCOMB_X32_Y18_N10
\i3|saida~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~30_combout\ = (\i2|seletor\(0) & ((\i3|r2|q\(15)) # ((\i2|seletor\(1))))) # (!\i2|seletor\(0) & (((\i3|r1|q\(15) & !\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|r2|q\(15),
	datac => \i3|r1|q\(15),
	datad => \i2|seletor\(1),
	combout => \i3|saida~30_combout\);

-- Location: LCCOMB_X25_Y18_N2
\i3|r3|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[15]~feeder_combout\ = \i3|r1|q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~16_combout\,
	combout => \i3|r3|q[15]~feeder_combout\);

-- Location: FF_X25_Y18_N3
\i3|r3|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r3|q[15]~feeder_combout\,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(15));

-- Location: LCCOMB_X28_Y18_N6
\i3|r4|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[15]~feeder_combout\ = \i3|r1|q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~16_combout\,
	combout => \i3|r4|q[15]~feeder_combout\);

-- Location: FF_X28_Y18_N7
\i3|r4|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[15]~feeder_combout\,
	ena => \i3|r4|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(15));

-- Location: LCCOMB_X32_Y18_N30
\i3|saida~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~31_combout\ = (\i3|saida~30_combout\ & (((\i3|r4|q\(15))) # (!\i2|seletor\(1)))) # (!\i3|saida~30_combout\ & (\i2|seletor\(1) & (\i3|r3|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~30_combout\,
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(15),
	datad => \i3|r4|q\(15),
	combout => \i3|saida~31_combout\);

-- Location: FF_X32_Y18_N31
\i3|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~31_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(15));

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

ww_l1 <= \l1~output_o\;

ww_l2 <= \l2~output_o\;

ww_l3 <= \l3~output_o\;

ww_l4 <= \l4~output_o\;

ww_valor_ula_out(0) <= \valor_ula_out[0]~output_o\;

ww_valor_ula_out(1) <= \valor_ula_out[1]~output_o\;

ww_valor_ula_out(2) <= \valor_ula_out[2]~output_o\;

ww_valor_ula_out(3) <= \valor_ula_out[3]~output_o\;

ww_valor_ula_out(4) <= \valor_ula_out[4]~output_o\;

ww_valor_ula_out(5) <= \valor_ula_out[5]~output_o\;

ww_valor_ula_out(6) <= \valor_ula_out[6]~output_o\;

ww_valor_ula_out(7) <= \valor_ula_out[7]~output_o\;

ww_valor_ula_out(8) <= \valor_ula_out[8]~output_o\;

ww_valor_ula_out(9) <= \valor_ula_out[9]~output_o\;

ww_valor_ula_out(10) <= \valor_ula_out[10]~output_o\;

ww_valor_ula_out(11) <= \valor_ula_out[11]~output_o\;

ww_valor_ula_out(12) <= \valor_ula_out[12]~output_o\;

ww_valor_ula_out(13) <= \valor_ula_out[13]~output_o\;

ww_valor_ula_out(14) <= \valor_ula_out[14]~output_o\;

ww_valor_ula_out(15) <= \valor_ula_out[15]~output_o\;

ww_valor_banco_regs_out(0) <= \valor_banco_regs_out[0]~output_o\;

ww_valor_banco_regs_out(1) <= \valor_banco_regs_out[1]~output_o\;

ww_valor_banco_regs_out(2) <= \valor_banco_regs_out[2]~output_o\;

ww_valor_banco_regs_out(3) <= \valor_banco_regs_out[3]~output_o\;

ww_valor_banco_regs_out(4) <= \valor_banco_regs_out[4]~output_o\;

ww_valor_banco_regs_out(5) <= \valor_banco_regs_out[5]~output_o\;

ww_valor_banco_regs_out(6) <= \valor_banco_regs_out[6]~output_o\;

ww_valor_banco_regs_out(7) <= \valor_banco_regs_out[7]~output_o\;

ww_valor_banco_regs_out(8) <= \valor_banco_regs_out[8]~output_o\;

ww_valor_banco_regs_out(9) <= \valor_banco_regs_out[9]~output_o\;

ww_valor_banco_regs_out(10) <= \valor_banco_regs_out[10]~output_o\;

ww_valor_banco_regs_out(11) <= \valor_banco_regs_out[11]~output_o\;

ww_valor_banco_regs_out(12) <= \valor_banco_regs_out[12]~output_o\;

ww_valor_banco_regs_out(13) <= \valor_banco_regs_out[13]~output_o\;

ww_valor_banco_regs_out(14) <= \valor_banco_regs_out[14]~output_o\;

ww_valor_banco_regs_out(15) <= \valor_banco_regs_out[15]~output_o\;

ww_d_ula_a(0) <= \d_ula_a[0]~output_o\;

ww_d_ula_a(1) <= \d_ula_a[1]~output_o\;

ww_d_ula_a(2) <= \d_ula_a[2]~output_o\;

ww_d_ula_a(3) <= \d_ula_a[3]~output_o\;

ww_d_ula_a(4) <= \d_ula_a[4]~output_o\;

ww_d_ula_a(5) <= \d_ula_a[5]~output_o\;

ww_d_ula_a(6) <= \d_ula_a[6]~output_o\;

ww_d_ula_a(7) <= \d_ula_a[7]~output_o\;

ww_d_ula_a(8) <= \d_ula_a[8]~output_o\;

ww_d_ula_a(9) <= \d_ula_a[9]~output_o\;

ww_d_ula_a(10) <= \d_ula_a[10]~output_o\;

ww_d_ula_a(11) <= \d_ula_a[11]~output_o\;

ww_d_ula_a(12) <= \d_ula_a[12]~output_o\;

ww_d_ula_a(13) <= \d_ula_a[13]~output_o\;

ww_d_ula_a(14) <= \d_ula_a[14]~output_o\;

ww_d_ula_a(15) <= \d_ula_a[15]~output_o\;

ww_d_ula_b(0) <= \d_ula_b[0]~output_o\;

ww_d_ula_b(1) <= \d_ula_b[1]~output_o\;

ww_d_ula_b(2) <= \d_ula_b[2]~output_o\;

ww_d_ula_b(3) <= \d_ula_b[3]~output_o\;

ww_d_ula_b(4) <= \d_ula_b[4]~output_o\;

ww_d_ula_b(5) <= \d_ula_b[5]~output_o\;

ww_d_ula_b(6) <= \d_ula_b[6]~output_o\;

ww_d_ula_b(7) <= \d_ula_b[7]~output_o\;

ww_d_ula_b(8) <= \d_ula_b[8]~output_o\;

ww_d_ula_b(9) <= \d_ula_b[9]~output_o\;

ww_d_ula_b(10) <= \d_ula_b[10]~output_o\;

ww_d_ula_b(11) <= \d_ula_b[11]~output_o\;

ww_d_ula_b(12) <= \d_ula_b[12]~output_o\;

ww_d_ula_b(13) <= \d_ula_b[13]~output_o\;

ww_d_ula_b(14) <= \d_ula_b[14]~output_o\;

ww_d_ula_b(15) <= \d_ula_b[15]~output_o\;

ww_debug_reg(0) <= \debug_reg[0]~output_o\;

ww_debug_reg(1) <= \debug_reg[1]~output_o\;

ww_debug_reg(2) <= \debug_reg[2]~output_o\;

ww_debug_reg(3) <= \debug_reg[3]~output_o\;

ww_debug_reg(4) <= \debug_reg[4]~output_o\;

ww_debug_reg(5) <= \debug_reg[5]~output_o\;

ww_debug_reg(6) <= \debug_reg[6]~output_o\;

ww_debug_reg(7) <= \debug_reg[7]~output_o\;

ww_debug_reg(8) <= \debug_reg[8]~output_o\;

ww_debug_reg(9) <= \debug_reg[9]~output_o\;

ww_debug_reg(10) <= \debug_reg[10]~output_o\;

ww_debug_reg(11) <= \debug_reg[11]~output_o\;

ww_debug_reg(12) <= \debug_reg[12]~output_o\;

ww_debug_reg(13) <= \debug_reg[13]~output_o\;

ww_debug_reg(14) <= \debug_reg[14]~output_o\;

ww_debug_reg(15) <= \debug_reg[15]~output_o\;

ww_d_seletor(0) <= \d_seletor[0]~output_o\;

ww_d_seletor(1) <= \d_seletor[1]~output_o\;

ww_d_seletor(2) <= \d_seletor[2]~output_o\;
END structure;


