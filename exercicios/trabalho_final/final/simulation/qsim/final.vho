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

-- DATE "12/01/2019 16:33:03"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
	d_ula : BUFFER std_logic_vector(15 DOWNTO 0);
	d_a : BUFFER std_logic_vector(15 DOWNTO 0);
	d_b : BUFFER std_logic_vector(15 DOWNTO 0);
	d_op_ula : BUFFER std_logic_vector(15 DOWNTO 0);
	valor_ula_out : BUFFER std_logic_vector(15 DOWNTO 0);
	valor_banco_regs_out : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_reg : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- sd1[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd1[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd2[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd3[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[4]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd4[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l4	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[9]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[10]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_ula[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[10]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[13]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_a[15]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[13]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_b[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[10]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[13]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_op_ula[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[10]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[11]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[12]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[13]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[14]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_ula_out[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[7]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[10]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[13]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[14]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_banco_regs_out[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[9]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[10]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[11]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[13]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[14]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[9]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[15]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[17]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_d_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d_op_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_valor_ula_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_valor_banco_regs_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \i4|s[1]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \d_ula[0]~output_o\ : std_logic;
SIGNAL \d_ula[1]~output_o\ : std_logic;
SIGNAL \d_ula[2]~output_o\ : std_logic;
SIGNAL \d_ula[3]~output_o\ : std_logic;
SIGNAL \d_ula[4]~output_o\ : std_logic;
SIGNAL \d_ula[5]~output_o\ : std_logic;
SIGNAL \d_ula[6]~output_o\ : std_logic;
SIGNAL \d_ula[7]~output_o\ : std_logic;
SIGNAL \d_ula[8]~output_o\ : std_logic;
SIGNAL \d_ula[9]~output_o\ : std_logic;
SIGNAL \d_ula[10]~output_o\ : std_logic;
SIGNAL \d_ula[11]~output_o\ : std_logic;
SIGNAL \d_ula[12]~output_o\ : std_logic;
SIGNAL \d_ula[13]~output_o\ : std_logic;
SIGNAL \d_ula[14]~output_o\ : std_logic;
SIGNAL \d_ula[15]~output_o\ : std_logic;
SIGNAL \d_a[0]~output_o\ : std_logic;
SIGNAL \d_a[1]~output_o\ : std_logic;
SIGNAL \d_a[2]~output_o\ : std_logic;
SIGNAL \d_a[3]~output_o\ : std_logic;
SIGNAL \d_a[4]~output_o\ : std_logic;
SIGNAL \d_a[5]~output_o\ : std_logic;
SIGNAL \d_a[6]~output_o\ : std_logic;
SIGNAL \d_a[7]~output_o\ : std_logic;
SIGNAL \d_a[8]~output_o\ : std_logic;
SIGNAL \d_a[9]~output_o\ : std_logic;
SIGNAL \d_a[10]~output_o\ : std_logic;
SIGNAL \d_a[11]~output_o\ : std_logic;
SIGNAL \d_a[12]~output_o\ : std_logic;
SIGNAL \d_a[13]~output_o\ : std_logic;
SIGNAL \d_a[14]~output_o\ : std_logic;
SIGNAL \d_a[15]~output_o\ : std_logic;
SIGNAL \d_b[0]~output_o\ : std_logic;
SIGNAL \d_b[1]~output_o\ : std_logic;
SIGNAL \d_b[2]~output_o\ : std_logic;
SIGNAL \d_b[3]~output_o\ : std_logic;
SIGNAL \d_b[4]~output_o\ : std_logic;
SIGNAL \d_b[5]~output_o\ : std_logic;
SIGNAL \d_b[6]~output_o\ : std_logic;
SIGNAL \d_b[7]~output_o\ : std_logic;
SIGNAL \d_b[8]~output_o\ : std_logic;
SIGNAL \d_b[9]~output_o\ : std_logic;
SIGNAL \d_b[10]~output_o\ : std_logic;
SIGNAL \d_b[11]~output_o\ : std_logic;
SIGNAL \d_b[12]~output_o\ : std_logic;
SIGNAL \d_b[13]~output_o\ : std_logic;
SIGNAL \d_b[14]~output_o\ : std_logic;
SIGNAL \d_b[15]~output_o\ : std_logic;
SIGNAL \d_op_ula[0]~output_o\ : std_logic;
SIGNAL \d_op_ula[1]~output_o\ : std_logic;
SIGNAL \d_op_ula[2]~output_o\ : std_logic;
SIGNAL \d_op_ula[3]~output_o\ : std_logic;
SIGNAL \d_op_ula[4]~output_o\ : std_logic;
SIGNAL \d_op_ula[5]~output_o\ : std_logic;
SIGNAL \d_op_ula[6]~output_o\ : std_logic;
SIGNAL \d_op_ula[7]~output_o\ : std_logic;
SIGNAL \d_op_ula[8]~output_o\ : std_logic;
SIGNAL \d_op_ula[9]~output_o\ : std_logic;
SIGNAL \d_op_ula[10]~output_o\ : std_logic;
SIGNAL \d_op_ula[11]~output_o\ : std_logic;
SIGNAL \d_op_ula[12]~output_o\ : std_logic;
SIGNAL \d_op_ula[13]~output_o\ : std_logic;
SIGNAL \d_op_ula[14]~output_o\ : std_logic;
SIGNAL \d_op_ula[15]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \i2|pc[1]~2_combout\ : std_logic;
SIGNAL \i2|pc~0_combout\ : std_logic;
SIGNAL \i2|pc~1_combout\ : std_logic;
SIGNAL \i2|process_0~0_combout\ : std_logic;
SIGNAL \i2|l1~feeder_combout\ : std_logic;
SIGNAL \i2|l1~q\ : std_logic;
SIGNAL \i2|Equal2~0_combout\ : std_logic;
SIGNAL \i2|l2~feeder_combout\ : std_logic;
SIGNAL \i2|l2~q\ : std_logic;
SIGNAL \i2|Equal2~1_combout\ : std_logic;
SIGNAL \i2|l3~feeder_combout\ : std_logic;
SIGNAL \i2|l3~q\ : std_logic;
SIGNAL \instrucao[2]~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \i2|pc2[1]~0_combout\ : std_logic;
SIGNAL \i2|b[0]~0_combout\ : std_logic;
SIGNAL \i2|a[1]~0_combout\ : std_logic;
SIGNAL \instrucao[17]~input_o\ : std_logic;
SIGNAL \i1|op_atual[3]~feeder_combout\ : std_logic;
SIGNAL \bt3~input_o\ : std_logic;
SIGNAL \instrucao[14]~input_o\ : std_logic;
SIGNAL \i1|op_atual[0]~feeder_combout\ : std_logic;
SIGNAL \instrucao[16]~input_o\ : std_logic;
SIGNAL \i1|op_atual[2]~feeder_combout\ : std_logic;
SIGNAL \i1|op[0]~0_combout\ : std_logic;
SIGNAL \instrucao[3]~input_o\ : std_logic;
SIGNAL \i4|s[0]~0_combout\ : std_logic;
SIGNAL \instrucao[15]~input_o\ : std_logic;
SIGNAL \i1|op_atual[1]~feeder_combout\ : std_logic;
SIGNAL \i4|s[0]~1_combout\ : std_logic;
SIGNAL \i4|s[0]~2_combout\ : std_logic;
SIGNAL \i4|s[0]~92_combout\ : std_logic;
SIGNAL \i4|s[0]~93_combout\ : std_logic;
SIGNAL \i4|s[0]~3_combout\ : std_logic;
SIGNAL \i2|exec_op_out~0_combout\ : std_logic;
SIGNAL \i2|exec_op_out~feeder_combout\ : std_logic;
SIGNAL \i2|exec_op_out~q\ : std_logic;
SIGNAL \i4|s[1]~4_combout\ : std_logic;
SIGNAL \i4|s[1]~5_combout\ : std_logic;
SIGNAL \i4|s[1]~5clkctrl_outclk\ : std_logic;
SIGNAL \i4|s[0]$latch~combout\ : std_logic;
SIGNAL \i4|a2|i1|s~0_combout\ : std_logic;
SIGNAL \i4|s[13]~6_combout\ : std_logic;
SIGNAL \i4|s[13]~7_combout\ : std_logic;
SIGNAL \i4|a2|i1|s~combout\ : std_logic;
SIGNAL \i4|s[1]~10_combout\ : std_logic;
SIGNAL \i4|s[13]~11_combout\ : std_logic;
SIGNAL \i4|s[13]~8_combout\ : std_logic;
SIGNAL \instrucao[4]~input_o\ : std_logic;
SIGNAL \i4|s[1]~9_combout\ : std_logic;
SIGNAL \i4|s[1]~12_combout\ : std_logic;
SIGNAL \i4|s[1]~13_combout\ : std_logic;
SIGNAL \i4|s[1]~14_combout\ : std_logic;
SIGNAL \i4|s[1]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i1|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i2|s~combout\ : std_logic;
SIGNAL \instrucao[5]~input_o\ : std_logic;
SIGNAL \i4|s[2]~15_combout\ : std_logic;
SIGNAL \i4|s[2]~16_combout\ : std_logic;
SIGNAL \i4|s[2]~17_combout\ : std_logic;
SIGNAL \i4|s[2]~18_combout\ : std_logic;
SIGNAL \i4|a2|i1|cout~0_combout\ : std_logic;
SIGNAL \i4|a1|i1|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i2|s~combout\ : std_logic;
SIGNAL \i4|s[2]~19_combout\ : std_logic;
SIGNAL \i4|s[2]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i3|s~0_combout\ : std_logic;
SIGNAL \i4|a3|i3|s~combout\ : std_logic;
SIGNAL \i4|a1|i2|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i2|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i3|s~combout\ : std_logic;
SIGNAL \i4|s[3]~21_combout\ : std_logic;
SIGNAL \instrucao[6]~input_o\ : std_logic;
SIGNAL \i4|s[3]~20_combout\ : std_logic;
SIGNAL \i4|s[3]~22_combout\ : std_logic;
SIGNAL \i4|s[3]~23_combout\ : std_logic;
SIGNAL \i4|s[3]~24_combout\ : std_logic;
SIGNAL \i4|s[3]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i3|cout~0_combout\ : std_logic;
SIGNAL \i4|s[3]~25_combout\ : std_logic;
SIGNAL \i4|a3|i3|cout~1_combout\ : std_logic;
SIGNAL \i4|a3|i4|s~combout\ : std_logic;
SIGNAL \i4|s[4]~27_combout\ : std_logic;
SIGNAL \instrucao[7]~input_o\ : std_logic;
SIGNAL \i4|s[4]~26_combout\ : std_logic;
SIGNAL \i4|s[4]~28_combout\ : std_logic;
SIGNAL \i4|s[4]~29_combout\ : std_logic;
SIGNAL \i4|a2|i3|cout~0_combout\ : std_logic;
SIGNAL \i4|a1|i3|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i4|s~combout\ : std_logic;
SIGNAL \i4|s[4]~30_combout\ : std_logic;
SIGNAL \i4|s[4]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i4|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i4|cout~1_combout\ : std_logic;
SIGNAL \i4|a3|i5|s~combout\ : std_logic;
SIGNAL \instrucao[8]~input_o\ : std_logic;
SIGNAL \i4|s[5]~31_combout\ : std_logic;
SIGNAL \i4|s[5]~32_combout\ : std_logic;
SIGNAL \i4|s[5]~33_combout\ : std_logic;
SIGNAL \i4|a2|i4|cout~0_combout\ : std_logic;
SIGNAL \i4|a1|i4|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i5|s~combout\ : std_logic;
SIGNAL \i4|s[5]~34_combout\ : std_logic;
SIGNAL \i4|s[5]~35_combout\ : std_logic;
SIGNAL \i4|s[5]$latch~combout\ : std_logic;
SIGNAL \i4|a1|i5|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i5|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i6|s~combout\ : std_logic;
SIGNAL \i4|a3|i5|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i6|s~combout\ : std_logic;
SIGNAL \i4|s[6]~37_combout\ : std_logic;
SIGNAL \instrucao[9]~input_o\ : std_logic;
SIGNAL \i4|s[6]~36_combout\ : std_logic;
SIGNAL \i4|s[6]~38_combout\ : std_logic;
SIGNAL \i4|s[6]~39_combout\ : std_logic;
SIGNAL \i4|s[6]~40_combout\ : std_logic;
SIGNAL \i4|s[6]$latch~combout\ : std_logic;
SIGNAL \i4|s[7]~42_combout\ : std_logic;
SIGNAL \instrucao[10]~input_o\ : std_logic;
SIGNAL \i4|s[7]~41_combout\ : std_logic;
SIGNAL \i4|s[7]~43_combout\ : std_logic;
SIGNAL \i4|a1|i6|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i6|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i7|s~combout\ : std_logic;
SIGNAL \i4|s[7]~44_combout\ : std_logic;
SIGNAL \i4|a3|i6|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i7|s~combout\ : std_logic;
SIGNAL \i4|s[7]~45_combout\ : std_logic;
SIGNAL \i4|s[7]$latch~combout\ : std_logic;
SIGNAL \i4|s[8]~47_combout\ : std_logic;
SIGNAL \instrucao[11]~input_o\ : std_logic;
SIGNAL \i4|s[8]~46_combout\ : std_logic;
SIGNAL \i4|s[8]~48_combout\ : std_logic;
SIGNAL \i4|a3|i7|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i8|s~combout\ : std_logic;
SIGNAL \i4|s[8]~49_combout\ : std_logic;
SIGNAL \i4|a1|i7|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i7|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i8|s~combout\ : std_logic;
SIGNAL \i4|s[8]~50_combout\ : std_logic;
SIGNAL \i4|s[8]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i9|s~0_combout\ : std_logic;
SIGNAL \i4|a3|i9|s~combout\ : std_logic;
SIGNAL \i4|s[9]~53_combout\ : std_logic;
SIGNAL \instrucao[12]~input_o\ : std_logic;
SIGNAL \i4|s[9]~51_combout\ : std_logic;
SIGNAL \i4|s[9]~52_combout\ : std_logic;
SIGNAL \i4|s[9]~54_combout\ : std_logic;
SIGNAL \i4|a1|i8|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i8|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i9|s~combout\ : std_logic;
SIGNAL \i4|s[9]~55_combout\ : std_logic;
SIGNAL \i4|s[9]~56_combout\ : std_logic;
SIGNAL \i4|s[9]$latch~combout\ : std_logic;
SIGNAL \i4|a1|i9|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i9|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i10|s~combout\ : std_logic;
SIGNAL \i4|s[10]~58_combout\ : std_logic;
SIGNAL \instrucao[13]~input_o\ : std_logic;
SIGNAL \i4|s[10]~57_combout\ : std_logic;
SIGNAL \i4|s[10]~59_combout\ : std_logic;
SIGNAL \i4|a3|i9|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i9|cout~1_combout\ : std_logic;
SIGNAL \i4|a3|i10|s~combout\ : std_logic;
SIGNAL \i4|s[10]~60_combout\ : std_logic;
SIGNAL \i4|s[10]~61_combout\ : std_logic;
SIGNAL \i4|s[10]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i10|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i11|s~combout\ : std_logic;
SIGNAL \i4|s[11]~62_combout\ : std_logic;
SIGNAL \i4|s[11]~63_combout\ : std_logic;
SIGNAL \i4|s[11]~64_combout\ : std_logic;
SIGNAL \i4|a1|i10|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i10|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i11|s~combout\ : std_logic;
SIGNAL \i4|s[11]~65_combout\ : std_logic;
SIGNAL \i4|s[11]~66_combout\ : std_logic;
SIGNAL \i4|s[11]$latch~combout\ : std_logic;
SIGNAL \i4|s[12]~67_combout\ : std_logic;
SIGNAL \i4|s[12]~68_combout\ : std_logic;
SIGNAL \i4|s[12]~69_combout\ : std_logic;
SIGNAL \i4|s[12]~70_combout\ : std_logic;
SIGNAL \i4|a2|i12|s~0_combout\ : std_logic;
SIGNAL \i4|a3|i12|s~combout\ : std_logic;
SIGNAL \i4|s[12]~71_combout\ : std_logic;
SIGNAL \i4|a2|i11|cout~0_combout\ : std_logic;
SIGNAL \i4|a1|i11|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i12|s~combout\ : std_logic;
SIGNAL \i4|s[12]~72_combout\ : std_logic;
SIGNAL \i4|s[12]$latch~combout\ : std_logic;
SIGNAL \i4|a3|i12|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i12|cout~1_combout\ : std_logic;
SIGNAL \i4|a3|i13|s~combout\ : std_logic;
SIGNAL \i4|s[13]~74_combout\ : std_logic;
SIGNAL \i4|s[13]~73_combout\ : std_logic;
SIGNAL \i4|s[13]~75_combout\ : std_logic;
SIGNAL \i4|a1|i12|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i12|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i13|s~combout\ : std_logic;
SIGNAL \i4|s[13]~76_combout\ : std_logic;
SIGNAL \i4|s[13]~77_combout\ : std_logic;
SIGNAL \i4|s[13]$latch~combout\ : std_logic;
SIGNAL \i4|a1|i13|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i13|cout~0_combout\ : std_logic;
SIGNAL \i4|a2|i14|s~combout\ : std_logic;
SIGNAL \i4|s[14]~79_combout\ : std_logic;
SIGNAL \i4|s[14]~78_combout\ : std_logic;
SIGNAL \i4|s[14]~80_combout\ : std_logic;
SIGNAL \i4|a3|i13|cout~0_combout\ : std_logic;
SIGNAL \i4|a3|i14|s~combout\ : std_logic;
SIGNAL \i4|s[14]~81_combout\ : std_logic;
SIGNAL \i4|s[14]~82_combout\ : std_logic;
SIGNAL \i4|s[14]$latch~combout\ : std_logic;
SIGNAL \i4|s[15]~88_combout\ : std_logic;
SIGNAL \i4|s[15]~90_combout\ : std_logic;
SIGNAL \i4|s[1]~83_combout\ : std_logic;
SIGNAL \i4|s[15]~91_combout\ : std_logic;
SIGNAL \i4|s[1]~84_combout\ : std_logic;
SIGNAL \i4|s[15]~85_combout\ : std_logic;
SIGNAL \i4|s[15]~86_combout\ : std_logic;
SIGNAL \i4|s[15]~87_combout\ : std_logic;
SIGNAL \i4|s[15]~89_combout\ : std_logic;
SIGNAL \i4|s[15]$latch~combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out~0_combout\ : std_logic;
SIGNAL \instrucao[0]~input_o\ : std_logic;
SIGNAL \i2|seletor[1]~1_combout\ : std_logic;
SIGNAL \i2|seletor~6_combout\ : std_logic;
SIGNAL \i2|seletor~7_combout\ : std_logic;
SIGNAL \i2|seletor[1]~4_combout\ : std_logic;
SIGNAL \instrucao[1]~input_o\ : std_logic;
SIGNAL \i2|seletor~2_combout\ : std_logic;
SIGNAL \i2|seletor~3_combout\ : std_logic;
SIGNAL \i2|valor_out~0_combout\ : std_logic;
SIGNAL \i2|valor_out[5]~1_combout\ : std_logic;
SIGNAL \i3|r1|q~0_combout\ : std_logic;
SIGNAL \i3|r8|q[0]~feeder_combout\ : std_logic;
SIGNAL \i2|seletor~5_combout\ : std_logic;
SIGNAL \i2|seletor[2]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido~4_combout\ : std_logic;
SIGNAL \i3|r8|q[10]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[3]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[3]~1_combout\ : std_logic;
SIGNAL \i3|r4|q[13]~0_combout\ : std_logic;
SIGNAL \i3|r6|q[0]~feeder_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido~2_combout\ : std_logic;
SIGNAL \i3|r6|q[9]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[1]~3_combout\ : std_logic;
SIGNAL \i3|r2|q[14]~0_combout\ : std_logic;
SIGNAL \i3|saida~0_combout\ : std_logic;
SIGNAL \i3|saida~1_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[6]~9_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[6]~10_combout\ : std_logic;
SIGNAL \i3|r7|q[14]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido~5_combout\ : std_logic;
SIGNAL \i3|r3|q[3]~0_combout\ : std_logic;
SIGNAL \i3|r5|q[0]~feeder_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido~6_combout\ : std_logic;
SIGNAL \i3|r5|q[9]~0_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[0]~7_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido[0]~8_combout\ : std_logic;
SIGNAL \i3|r1|q[10]~1_combout\ : std_logic;
SIGNAL \i3|saida~2_combout\ : std_logic;
SIGNAL \i3|saida~3_combout\ : std_logic;
SIGNAL \i3|saida~4_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[0]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~2_combout\ : std_logic;
SIGNAL \i3|r1|q~2_combout\ : std_logic;
SIGNAL \i3|r8|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|r6|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~5_combout\ : std_logic;
SIGNAL \i3|saida~6_combout\ : std_logic;
SIGNAL \i3|r5|q[1]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~7_combout\ : std_logic;
SIGNAL \i3|saida~8_combout\ : std_logic;
SIGNAL \i3|saida~9_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[1]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~3_combout\ : std_logic;
SIGNAL \i3|r1|q~3_combout\ : std_logic;
SIGNAL \i3|r5|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~12_combout\ : std_logic;
SIGNAL \i3|saida~13_combout\ : std_logic;
SIGNAL \i3|r8|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[2]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~10_combout\ : std_logic;
SIGNAL \i3|saida~11_combout\ : std_logic;
SIGNAL \i3|saida~14_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[2]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~4_combout\ : std_logic;
SIGNAL \i3|r1|q~4_combout\ : std_logic;
SIGNAL \i3|r5|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~17_combout\ : std_logic;
SIGNAL \i3|saida~18_combout\ : std_logic;
SIGNAL \i3|r8|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[3]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~15_combout\ : std_logic;
SIGNAL \i3|saida~16_combout\ : std_logic;
SIGNAL \i3|saida~19_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[3]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~5_combout\ : std_logic;
SIGNAL \i3|r1|q~5_combout\ : std_logic;
SIGNAL \i3|r5|q[4]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~22_combout\ : std_logic;
SIGNAL \i3|saida~23_combout\ : std_logic;
SIGNAL \i3|r8|q[4]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[4]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~20_combout\ : std_logic;
SIGNAL \i3|saida~21_combout\ : std_logic;
SIGNAL \i3|saida~24_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[4]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~6_combout\ : std_logic;
SIGNAL \i3|r1|q~6_combout\ : std_logic;
SIGNAL \i3|r8|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~25_combout\ : std_logic;
SIGNAL \i3|saida~26_combout\ : std_logic;
SIGNAL \i3|r5|q[5]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~27_combout\ : std_logic;
SIGNAL \i3|saida~28_combout\ : std_logic;
SIGNAL \i3|saida~29_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[5]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~7_combout\ : std_logic;
SIGNAL \i3|r1|q~7_combout\ : std_logic;
SIGNAL \i3|r5|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~32_combout\ : std_logic;
SIGNAL \i3|saida~33_combout\ : std_logic;
SIGNAL \i3|r8|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[6]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~30_combout\ : std_logic;
SIGNAL \i3|saida~31_combout\ : std_logic;
SIGNAL \i3|saida~34_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[6]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~8_combout\ : std_logic;
SIGNAL \i3|r1|q~8_combout\ : std_logic;
SIGNAL \i3|r8|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~35_combout\ : std_logic;
SIGNAL \i3|saida~36_combout\ : std_logic;
SIGNAL \i3|r5|q[7]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~37_combout\ : std_logic;
SIGNAL \i3|saida~38_combout\ : std_logic;
SIGNAL \i3|saida~39_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[7]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~9_combout\ : std_logic;
SIGNAL \i3|r1|q~9_combout\ : std_logic;
SIGNAL \i3|r8|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~40_combout\ : std_logic;
SIGNAL \i3|saida~41_combout\ : std_logic;
SIGNAL \i3|r7|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|r5|q[8]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~42_combout\ : std_logic;
SIGNAL \i3|saida~43_combout\ : std_logic;
SIGNAL \i3|saida~44_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[8]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~10_combout\ : std_logic;
SIGNAL \i3|r1|q~10_combout\ : std_logic;
SIGNAL \i3|r5|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~47_combout\ : std_logic;
SIGNAL \i3|saida~48_combout\ : std_logic;
SIGNAL \i3|r8|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[9]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~45_combout\ : std_logic;
SIGNAL \i3|saida~46_combout\ : std_logic;
SIGNAL \i3|saida~49_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[9]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~11_combout\ : std_logic;
SIGNAL \i3|r1|q~11_combout\ : std_logic;
SIGNAL \i3|r4|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~50_combout\ : std_logic;
SIGNAL \i3|r8|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~51_combout\ : std_logic;
SIGNAL \i3|r5|q[10]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~52_combout\ : std_logic;
SIGNAL \i3|saida~53_combout\ : std_logic;
SIGNAL \i3|saida~54_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[10]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~12_combout\ : std_logic;
SIGNAL \i3|r1|q~12_combout\ : std_logic;
SIGNAL \i3|r5|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~57_combout\ : std_logic;
SIGNAL \i3|saida~58_combout\ : std_logic;
SIGNAL \i3|r8|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[11]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~55_combout\ : std_logic;
SIGNAL \i3|saida~56_combout\ : std_logic;
SIGNAL \i3|saida~59_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[11]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~13_combout\ : std_logic;
SIGNAL \i3|r1|q~13_combout\ : std_logic;
SIGNAL \i3|r1|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~62_combout\ : std_logic;
SIGNAL \i3|saida~63_combout\ : std_logic;
SIGNAL \i3|r8|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[12]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~60_combout\ : std_logic;
SIGNAL \i3|saida~61_combout\ : std_logic;
SIGNAL \i3|saida~64_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[12]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~14_combout\ : std_logic;
SIGNAL \i3|r1|q~14_combout\ : std_logic;
SIGNAL \i3|r7|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|r5|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~67_combout\ : std_logic;
SIGNAL \i3|saida~68_combout\ : std_logic;
SIGNAL \i3|r4|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~65_combout\ : std_logic;
SIGNAL \i3|r8|q[13]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~66_combout\ : std_logic;
SIGNAL \i3|saida~69_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[13]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~15_combout\ : std_logic;
SIGNAL \i3|r1|q~15_combout\ : std_logic;
SIGNAL \i3|r8|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~70_combout\ : std_logic;
SIGNAL \i3|saida~71_combout\ : std_logic;
SIGNAL \i3|r7|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|r5|q[14]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~72_combout\ : std_logic;
SIGNAL \i3|saida~73_combout\ : std_logic;
SIGNAL \i3|saida~74_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[14]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_out~16_combout\ : std_logic;
SIGNAL \i3|r1|q~16_combout\ : std_logic;
SIGNAL \i3|r8|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|r4|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~75_combout\ : std_logic;
SIGNAL \i3|saida~76_combout\ : std_logic;
SIGNAL \i3|r1|q[15]~feeder_combout\ : std_logic;
SIGNAL \i3|saida~77_combout\ : std_logic;
SIGNAL \i3|saida~78_combout\ : std_logic;
SIGNAL \i3|saida~79_combout\ : std_logic;
SIGNAL \i2|valor_banco_regs_out[15]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_ula_out[0]~feeder_combout\ : std_logic;
SIGNAL \i2|valor_ula_out[15]~feeder_combout\ : std_logic;
SIGNAL \i3|registrador_escolhido\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i3|registrador_clear\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1|op_atual\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|valor_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r5|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r8|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|seletor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i3|r6|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|r3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|valor_banco_regs_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|valor_ula_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i3|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|pc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i1|op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|pc2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i3|r4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_bt1~input_o\ : std_logic;
SIGNAL \ALT_INV_bt2~input_o\ : std_logic;

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
d_ula <= ww_d_ula;
d_a <= ww_d_a;
d_b <= ww_d_b;
d_op_ula <= ww_d_op_ula;
valor_ula_out <= ww_valor_ula_out;
valor_banco_regs_out <= ww_valor_banco_regs_out;
debug_reg <= ww_debug_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i4|s[1]~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i4|s[1]~5_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_bt1~input_o\ <= NOT \bt1~input_o\;
\ALT_INV_bt2~input_o\ <= NOT \bt2~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X41_Y7_N23
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

-- Location: IOOBUF_X41_Y2_N16
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

-- Location: IOOBUF_X0_Y2_N2
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

-- Location: IOOBUF_X37_Y0_N9
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X41_Y8_N23
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X41_Y27_N23
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

-- Location: IOOBUF_X35_Y29_N23
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

-- Location: IOOBUF_X0_Y5_N2
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

-- Location: IOOBUF_X41_Y25_N9
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

-- Location: IOOBUF_X37_Y0_N16
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

-- Location: IOOBUF_X41_Y5_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X21_Y0_N30
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

-- Location: IOOBUF_X32_Y29_N23
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOOBUF_X0_Y9_N2
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X39_Y29_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X41_Y6_N16
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

-- Location: IOOBUF_X41_Y4_N2
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

-- Location: IOOBUF_X0_Y12_N9
\l1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|l1~q\,
	devoe => ww_devoe,
	o => \l1~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\l2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|l2~q\,
	devoe => ww_devoe,
	o => \l2~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\l3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|l3~q\,
	devoe => ww_devoe,
	o => \l3~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\l4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l4~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\d_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[0]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\d_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[1]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\d_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[2]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\d_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[3]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\d_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[4]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\d_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[5]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\d_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[6]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\d_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[7]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\d_ula[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[8]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[8]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\d_ula[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[9]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\d_ula[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[10]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\d_ula[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[11]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[11]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\d_ula[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[12]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\d_ula[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[13]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[13]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\d_ula[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[14]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[14]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\d_ula[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[15]$latch~combout\,
	devoe => ww_devoe,
	o => \d_ula[15]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\d_a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(0),
	devoe => ww_devoe,
	o => \d_a[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\d_a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(1),
	devoe => ww_devoe,
	o => \d_a[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\d_a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(2),
	devoe => ww_devoe,
	o => \d_a[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\d_a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(3),
	devoe => ww_devoe,
	o => \d_a[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\d_a[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(4),
	devoe => ww_devoe,
	o => \d_a[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\d_a[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(5),
	devoe => ww_devoe,
	o => \d_a[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\d_a[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(6),
	devoe => ww_devoe,
	o => \d_a[6]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\d_a[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(7),
	devoe => ww_devoe,
	o => \d_a[7]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\d_a[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(8),
	devoe => ww_devoe,
	o => \d_a[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\d_a[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(9),
	devoe => ww_devoe,
	o => \d_a[9]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\d_a[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(10),
	devoe => ww_devoe,
	o => \d_a[10]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\d_a[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(11),
	devoe => ww_devoe,
	o => \d_a[11]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\d_a[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(12),
	devoe => ww_devoe,
	o => \d_a[12]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\d_a[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(13),
	devoe => ww_devoe,
	o => \d_a[13]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\d_a[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(14),
	devoe => ww_devoe,
	o => \d_a[14]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\d_a[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|a\(15),
	devoe => ww_devoe,
	o => \d_a[15]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\d_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(0),
	devoe => ww_devoe,
	o => \d_b[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\d_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(1),
	devoe => ww_devoe,
	o => \d_b[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\d_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(2),
	devoe => ww_devoe,
	o => \d_b[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\d_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(3),
	devoe => ww_devoe,
	o => \d_b[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\d_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(4),
	devoe => ww_devoe,
	o => \d_b[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\d_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(5),
	devoe => ww_devoe,
	o => \d_b[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\d_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(6),
	devoe => ww_devoe,
	o => \d_b[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\d_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(7),
	devoe => ww_devoe,
	o => \d_b[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\d_b[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(8),
	devoe => ww_devoe,
	o => \d_b[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\d_b[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(9),
	devoe => ww_devoe,
	o => \d_b[9]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\d_b[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(10),
	devoe => ww_devoe,
	o => \d_b[10]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\d_b[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(11),
	devoe => ww_devoe,
	o => \d_b[11]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\d_b[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(12),
	devoe => ww_devoe,
	o => \d_b[12]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\d_b[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(13),
	devoe => ww_devoe,
	o => \d_b[13]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\d_b[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(14),
	devoe => ww_devoe,
	o => \d_b[14]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\d_b[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|b\(15),
	devoe => ww_devoe,
	o => \d_b[15]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\d_op_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[0]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\d_op_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[1]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\d_op_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[2]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\d_op_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[3]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\d_op_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[4]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\d_op_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[5]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\d_op_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[6]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\d_op_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[7]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\d_op_ula[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[8]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[8]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\d_op_ula[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[9]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\d_op_ula[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[10]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\d_op_ula[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[11]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[11]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\d_op_ula[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[12]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\d_op_ula[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[13]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[13]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\d_op_ula[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[14]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[14]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\d_op_ula[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s[15]$latch~combout\,
	devoe => ww_devoe,
	o => \d_op_ula[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\valor_ula_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(0),
	devoe => ww_devoe,
	o => \valor_ula_out[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\valor_ula_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(1),
	devoe => ww_devoe,
	o => \valor_ula_out[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\valor_ula_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(2),
	devoe => ww_devoe,
	o => \valor_ula_out[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\valor_ula_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(3),
	devoe => ww_devoe,
	o => \valor_ula_out[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\valor_ula_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(4),
	devoe => ww_devoe,
	o => \valor_ula_out[4]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\valor_ula_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(5),
	devoe => ww_devoe,
	o => \valor_ula_out[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\valor_ula_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(6),
	devoe => ww_devoe,
	o => \valor_ula_out[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\valor_ula_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(7),
	devoe => ww_devoe,
	o => \valor_ula_out[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\valor_ula_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(8),
	devoe => ww_devoe,
	o => \valor_ula_out[8]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\valor_ula_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(9),
	devoe => ww_devoe,
	o => \valor_ula_out[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\valor_ula_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(10),
	devoe => ww_devoe,
	o => \valor_ula_out[10]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\valor_ula_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(11),
	devoe => ww_devoe,
	o => \valor_ula_out[11]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\valor_ula_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(12),
	devoe => ww_devoe,
	o => \valor_ula_out[12]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\valor_ula_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(13),
	devoe => ww_devoe,
	o => \valor_ula_out[13]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\valor_ula_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(14),
	devoe => ww_devoe,
	o => \valor_ula_out[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\valor_ula_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_banco_regs_out\(15),
	devoe => ww_devoe,
	o => \valor_ula_out[15]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\valor_banco_regs_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(0),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\valor_banco_regs_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(1),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\valor_banco_regs_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(2),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\valor_banco_regs_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(3),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\valor_banco_regs_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(4),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\valor_banco_regs_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(5),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\valor_banco_regs_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(6),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\valor_banco_regs_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(7),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[7]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\valor_banco_regs_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(8),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[8]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\valor_banco_regs_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(9),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[9]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\valor_banco_regs_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(10),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[10]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\valor_banco_regs_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(11),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[11]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\valor_banco_regs_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(12),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[12]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\valor_banco_regs_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(13),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[13]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\valor_banco_regs_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(14),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[14]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\valor_banco_regs_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|valor_ula_out\(15),
	devoe => ww_devoe,
	o => \valor_banco_regs_out[15]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X1_Y29_N23
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

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X0_Y22_N9
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

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X1_Y29_N9
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

-- Location: IOIBUF_X0_Y14_N8
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

-- Location: IOIBUF_X41_Y15_N8
\bt2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: LCCOMB_X10_Y23_N8
\i2|pc[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc[1]~2_combout\ = \i2|pc\(1) $ (((\i2|pc\(2) & \i2|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|pc\(2),
	datac => \i2|pc\(1),
	datad => \i2|pc\(0),
	combout => \i2|pc[1]~2_combout\);

-- Location: FF_X10_Y23_N9
\i2|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc\(1));

-- Location: LCCOMB_X10_Y23_N16
\i2|pc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc~0_combout\ = \i2|pc\(2) $ (((\i2|pc\(0)) # (\i2|pc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|pc\(2),
	datac => \i2|pc\(0),
	datad => \i2|pc\(1),
	combout => \i2|pc~0_combout\);

-- Location: FF_X10_Y23_N17
\i2|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc\(0));

-- Location: LCCOMB_X10_Y23_N10
\i2|pc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc~1_combout\ = (\i2|pc\(1) & (((!\i2|pc\(0))))) # (!\i2|pc\(1) & (!\i2|pc\(2) & ((\bt2~input_o\) # (\i2|pc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt2~input_o\,
	datab => \i2|pc\(0),
	datac => \i2|pc\(2),
	datad => \i2|pc\(1),
	combout => \i2|pc~1_combout\);

-- Location: FF_X10_Y23_N11
\i2|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc\(2));

-- Location: LCCOMB_X10_Y23_N26
\i2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|process_0~0_combout\ = (!\i2|pc\(2) & (\bt2~input_o\ & (!\i2|pc\(1) & !\i2|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|pc\(2),
	datab => \bt2~input_o\,
	datac => \i2|pc\(1),
	datad => \i2|pc\(0),
	combout => \i2|process_0~0_combout\);

-- Location: LCCOMB_X10_Y23_N6
\i2|l1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|l1~feeder_combout\ = \i2|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|process_0~0_combout\,
	combout => \i2|l1~feeder_combout\);

-- Location: FF_X10_Y23_N7
\i2|l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|l1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|l1~q\);

-- Location: LCCOMB_X10_Y23_N28
\i2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal2~0_combout\ = (!\i2|pc\(1) & (\i2|pc\(0) & !\i2|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|pc\(1),
	datab => \i2|pc\(0),
	datad => \i2|pc\(2),
	combout => \i2|Equal2~0_combout\);

-- Location: LCCOMB_X10_Y23_N20
\i2|l2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|l2~feeder_combout\ = \i2|Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2|Equal2~0_combout\,
	combout => \i2|l2~feeder_combout\);

-- Location: FF_X10_Y23_N21
\i2|l2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|l2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|l2~q\);

-- Location: LCCOMB_X10_Y23_N14
\i2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal2~1_combout\ = (!\i2|pc\(0) & (\i2|pc\(1) & !\i2|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|pc\(0),
	datac => \i2|pc\(1),
	datad => \i2|pc\(2),
	combout => \i2|Equal2~1_combout\);

-- Location: LCCOMB_X10_Y23_N2
\i2|l3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|l3~feeder_combout\ = \i2|Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|Equal2~1_combout\,
	combout => \i2|l3~feeder_combout\);

-- Location: FF_X10_Y23_N3
\i2|l3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|l3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|l3~q\);

-- Location: IOIBUF_X41_Y15_N1
\instrucao[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(2),
	o => \instrucao[2]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\bt1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: LCCOMB_X12_Y21_N6
\i2|pc2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|pc2[1]~0_combout\ = !\i2|pc2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|pc2\(1),
	combout => \i2|pc2[1]~0_combout\);

-- Location: FF_X12_Y21_N7
\i2|pc2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|pc2[1]~0_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|pc2\(1));

-- Location: LCCOMB_X12_Y21_N10
\i2|b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|b[0]~0_combout\ = (\bt1~input_o\ & \i2|pc2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datad => \i2|pc2\(1),
	combout => \i2|b[0]~0_combout\);

-- Location: FF_X17_Y21_N15
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

-- Location: LCCOMB_X12_Y21_N24
\i2|a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|a[1]~0_combout\ = (\bt1~input_o\ & !\i2|pc2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datad => \i2|pc2\(1),
	combout => \i2|a[1]~0_combout\);

-- Location: FF_X17_Y21_N29
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
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(0));

-- Location: IOIBUF_X23_Y29_N15
\instrucao[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(17),
	o => \instrucao[17]~input_o\);

-- Location: LCCOMB_X19_Y23_N6
\i1|op_atual[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|op_atual[3]~feeder_combout\ = \instrucao[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[17]~input_o\,
	combout => \i1|op_atual[3]~feeder_combout\);

-- Location: FF_X19_Y23_N7
\i1|op_atual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|op_atual[3]~feeder_combout\,
	ena => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op_atual\(3));

-- Location: IOIBUF_X0_Y11_N1
\bt3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt3,
	o => \bt3~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\instrucao[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(14),
	o => \instrucao[14]~input_o\);

-- Location: LCCOMB_X19_Y23_N24
\i1|op_atual[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|op_atual[0]~feeder_combout\ = \instrucao[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[14]~input_o\,
	combout => \i1|op_atual[0]~feeder_combout\);

-- Location: FF_X19_Y23_N25
\i1|op_atual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|op_atual[0]~feeder_combout\,
	ena => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op_atual\(0));

-- Location: IOIBUF_X26_Y29_N22
\instrucao[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(16),
	o => \instrucao[16]~input_o\);

-- Location: LCCOMB_X19_Y23_N8
\i1|op_atual[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|op_atual[2]~feeder_combout\ = \instrucao[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[16]~input_o\,
	combout => \i1|op_atual[2]~feeder_combout\);

-- Location: FF_X19_Y23_N9
\i1|op_atual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|op_atual[2]~feeder_combout\,
	ena => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op_atual\(2));

-- Location: LCCOMB_X14_Y23_N4
\i1|op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|op[0]~0_combout\ = (\bt3~input_o\ & (((!\i1|op_atual\(2)) # (!\i1|op_atual\(3))) # (!\i1|op_atual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt3~input_o\,
	datab => \i1|op_atual\(0),
	datac => \i1|op_atual\(3),
	datad => \i1|op_atual\(2),
	combout => \i1|op[0]~0_combout\);

-- Location: FF_X14_Y23_N23
\i1|op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|op_atual\(3),
	sload => VCC,
	ena => \i1|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op\(3));

-- Location: FF_X14_Y23_N13
\i1|op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|op_atual\(0),
	sload => VCC,
	ena => \i1|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op\(0));

-- Location: FF_X14_Y23_N3
\i1|op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|op_atual\(2),
	sload => VCC,
	ena => \i1|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op\(2));

-- Location: IOIBUF_X30_Y29_N29
\instrucao[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(3),
	o => \instrucao[3]~input_o\);

-- Location: FF_X17_Y21_N23
\i2|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[3]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(1));

-- Location: LCCOMB_X14_Y23_N24
\i4|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~0_combout\ = (\i1|op\(2) & (\i2|a\(1))) # (!\i1|op\(2) & (((\i2|a\(0) & \i2|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i1|op\(2),
	datac => \i2|a\(0),
	datad => \i2|b\(0),
	combout => \i4|s[0]~0_combout\);

-- Location: IOIBUF_X28_Y29_N15
\instrucao[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(15),
	o => \instrucao[15]~input_o\);

-- Location: LCCOMB_X19_Y23_N26
\i1|op_atual[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|op_atual[1]~feeder_combout\ = \instrucao[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrucao[15]~input_o\,
	combout => \i1|op_atual[1]~feeder_combout\);

-- Location: FF_X19_Y23_N27
\i1|op_atual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|op_atual[1]~feeder_combout\,
	ena => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op_atual\(1));

-- Location: FF_X14_Y23_N27
\i1|op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|op_atual\(1),
	sload => VCC,
	ena => \i1|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|op\(1));

-- Location: LCCOMB_X17_Y21_N14
\i4|s[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~1_combout\ = (\i2|a\(0) & ((\i1|op\(2)) # (!\i2|b\(0)))) # (!\i2|a\(0) & (\i2|b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(0),
	datac => \i2|b\(0),
	datad => \i1|op\(2),
	combout => \i4|s[0]~1_combout\);

-- Location: LCCOMB_X14_Y23_N28
\i4|s[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~2_combout\ = (\i1|op\(0) & (((\i1|op\(1))))) # (!\i1|op\(0) & ((\i1|op\(1) & (\i4|s[0]~0_combout\)) # (!\i1|op\(1) & ((\i4|s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(0),
	datab => \i4|s[0]~0_combout\,
	datac => \i1|op\(1),
	datad => \i4|s[0]~1_combout\,
	combout => \i4|s[0]~2_combout\);

-- Location: LCCOMB_X14_Y23_N8
\i4|s[0]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~92_combout\ = (\i2|b\(0) & (!\i2|a\(0) & (\i1|op\(2) $ (!\i4|s[0]~2_combout\)))) # (!\i2|b\(0) & ((\i1|op\(2) & (\i2|a\(0) & \i4|s[0]~2_combout\)) # (!\i1|op\(2) & (\i2|a\(0) $ (\i4|s[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(0),
	datab => \i1|op\(2),
	datac => \i2|a\(0),
	datad => \i4|s[0]~2_combout\,
	combout => \i4|s[0]~92_combout\);

-- Location: LCCOMB_X14_Y23_N10
\i4|s[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~93_combout\ = (\i1|op\(0) & (\i4|s[0]~92_combout\ & ((\i4|s[0]~2_combout\) # (!\i1|op\(2))))) # (!\i1|op\(0) & (((\i4|s[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(0),
	datab => \i1|op\(2),
	datac => \i4|s[0]~92_combout\,
	datad => \i4|s[0]~2_combout\,
	combout => \i4|s[0]~93_combout\);

-- Location: LCCOMB_X14_Y23_N20
\i4|s[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]~3_combout\ = (\i1|op\(3) & (\i2|b\(0) $ ((\i2|a\(0))))) # (!\i1|op\(3) & (((\i4|s[0]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(0),
	datab => \i2|a\(0),
	datac => \i1|op\(3),
	datad => \i4|s[0]~93_combout\,
	combout => \i4|s[0]~3_combout\);

-- Location: LCCOMB_X14_Y24_N30
\i2|exec_op_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|exec_op_out~0_combout\ = (\i2|Equal2~1_combout\) # ((\i2|exec_op_out~q\ & !\i2|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|exec_op_out~q\,
	datac => \i2|process_0~0_combout\,
	datad => \i2|Equal2~1_combout\,
	combout => \i2|exec_op_out~0_combout\);

-- Location: LCCOMB_X14_Y24_N26
\i2|exec_op_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|exec_op_out~feeder_combout\ = \i2|exec_op_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|exec_op_out~0_combout\,
	combout => \i2|exec_op_out~feeder_combout\);

-- Location: FF_X14_Y24_N27
\i2|exec_op_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|exec_op_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|exec_op_out~q\);

-- Location: LCCOMB_X14_Y23_N0
\i4|s[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~4_combout\ = (\i1|op\(2) & ((\i1|op\(1) & ((\i1|op\(0)))) # (!\i1|op\(1) & (\i1|op\(3))))) # (!\i1|op\(2) & (\i1|op\(3) & (\i1|op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(3),
	datab => \i1|op\(2),
	datac => \i1|op\(1),
	datad => \i1|op\(0),
	combout => \i4|s[1]~4_combout\);

-- Location: LCCOMB_X14_Y24_N0
\i4|s[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~5_combout\ = (\i2|exec_op_out~q\ & !\i4|s[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|exec_op_out~q\,
	datad => \i4|s[1]~4_combout\,
	combout => \i4|s[1]~5_combout\);

-- Location: CLKCTRL_G12
\i4|s[1]~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i4|s[1]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i4|s[1]~5clkctrl_outclk\);

-- Location: LCCOMB_X11_Y23_N6
\i4|s[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[0]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[0]~3_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[0]~3_combout\,
	datac => \i4|s[0]$latch~combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[0]$latch~combout\);

-- Location: FF_X17_Y21_N9
\i2|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[3]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(1));

-- Location: LCCOMB_X16_Y22_N4
\i4|a2|i1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i1|s~0_combout\ = \i2|a\(1) $ (\i2|b\(1) $ (((\i2|a\(0) & \i2|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i2|b\(1),
	datac => \i2|a\(0),
	datad => \i2|b\(0),
	combout => \i4|a2|i1|s~0_combout\);

-- Location: LCCOMB_X15_Y21_N8
\i4|s[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~6_combout\ = (\i1|op\(3)) # ((\i1|op\(2) & ((\i1|op\(0)))) # (!\i1|op\(2) & (!\i1|op\(1) & !\i1|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(3),
	datab => \i1|op\(1),
	datac => \i1|op\(2),
	datad => \i1|op\(0),
	combout => \i4|s[13]~6_combout\);

-- Location: LCCOMB_X14_Y23_N2
\i4|s[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~7_combout\ = (!\i1|op\(1) & (!\i1|op\(3) & \i1|op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i1|op\(3),
	datad => \i1|op\(0),
	combout => \i4|s[13]~7_combout\);

-- Location: LCCOMB_X16_Y22_N26
\i4|a2|i1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i1|s~combout\ = \i2|a\(1) $ (\i2|b\(1) $ (((!\i2|a\(0) & \i2|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i2|b\(1),
	datac => \i2|a\(0),
	datad => \i2|b\(0),
	combout => \i4|a2|i1|s~combout\);

-- Location: LCCOMB_X16_Y22_N2
\i4|s[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~10_combout\ = (\i2|b\(1) & ((\i1|op\(0)) # ((\i2|a\(1)) # (!\i1|op\(1))))) # (!\i2|b\(1) & (\i2|a\(1) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(0),
	datab => \i2|b\(1),
	datac => \i1|op\(1),
	datad => \i2|a\(1),
	combout => \i4|s[1]~10_combout\);

-- Location: LCCOMB_X14_Y23_N14
\i4|s[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~11_combout\ = (\i1|op\(1) & ((\i1|op\(2)) # (\i1|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|op\(2),
	datac => \i1|op\(1),
	datad => \i1|op\(0),
	combout => \i4|s[13]~11_combout\);

-- Location: LCCOMB_X14_Y23_N30
\i4|s[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~8_combout\ = (\i1|op\(0)) # (!\i1|op\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|op\(0),
	datac => \i1|op\(1),
	combout => \i4|s[13]~8_combout\);

-- Location: IOIBUF_X11_Y29_N29
\instrucao[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(4),
	o => \instrucao[4]~input_o\);

-- Location: FF_X17_Y21_N5
\i2|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[4]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(2));

-- Location: LCCOMB_X16_Y22_N28
\i4|s[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~9_combout\ = (\i4|s[13]~8_combout\ & (!\i2|a\(1) & (!\i2|b\(1)))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i2|b\(1),
	datac => \i4|s[13]~8_combout\,
	datad => \i2|a\(2),
	combout => \i4|s[1]~9_combout\);

-- Location: LCCOMB_X16_Y22_N24
\i4|s[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~12_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[1]~9_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[1]~10_combout\,
	datac => \i4|s[13]~11_combout\,
	datad => \i4|s[1]~9_combout\,
	combout => \i4|s[1]~12_combout\);

-- Location: LCCOMB_X16_Y22_N14
\i4|s[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~13_combout\ = (\i4|s[13]~6_combout\ & (\i4|s[13]~7_combout\)) # (!\i4|s[13]~6_combout\ & ((\i4|s[13]~7_combout\ & (\i4|a2|i1|s~combout\)) # (!\i4|s[13]~7_combout\ & ((\i4|s[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~6_combout\,
	datab => \i4|s[13]~7_combout\,
	datac => \i4|a2|i1|s~combout\,
	datad => \i4|s[1]~12_combout\,
	combout => \i4|s[1]~13_combout\);

-- Location: LCCOMB_X16_Y22_N0
\i4|s[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~14_combout\ = (\i4|s[1]~13_combout\ & ((\i2|a\(0)) # ((!\i4|s[13]~6_combout\)))) # (!\i4|s[1]~13_combout\ & (((\i4|a2|i1|s~0_combout\ & \i4|s[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(0),
	datab => \i4|a2|i1|s~0_combout\,
	datac => \i4|s[1]~13_combout\,
	datad => \i4|s[13]~6_combout\,
	combout => \i4|s[1]~14_combout\);

-- Location: LCCOMB_X11_Y23_N10
\i4|s[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[1]~14_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[1]$latch~combout\,
	datac => \i4|s[1]~14_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[1]$latch~combout\);

-- Location: FF_X17_Y21_N3
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

-- Location: LCCOMB_X17_Y21_N24
\i4|a3|i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i1|cout~0_combout\ = (\i2|a\(1) & ((\i2|b\(1)) # ((\i2|a\(0) & \i2|b\(0))))) # (!\i2|a\(1) & (\i2|b\(1) & (\i2|a\(0) & \i2|b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i2|b\(1),
	datac => \i2|a\(0),
	datad => \i2|b\(0),
	combout => \i4|a3|i1|cout~0_combout\);

-- Location: LCCOMB_X17_Y22_N6
\i4|a3|i2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i2|s~combout\ = \i2|b\(2) $ (\i4|a3|i1|cout~0_combout\ $ (\i2|a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(2),
	datac => \i4|a3|i1|cout~0_combout\,
	datad => \i2|a\(2),
	combout => \i4|a3|i2|s~combout\);

-- Location: IOIBUF_X41_Y21_N15
\instrucao[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(5),
	o => \instrucao[5]~input_o\);

-- Location: FF_X17_Y21_N19
\i2|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[5]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(3));

-- Location: LCCOMB_X17_Y22_N8
\i4|s[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]~15_combout\ = (\i4|s[13]~8_combout\ & (!\i2|a\(2) & ((!\i2|b\(2))))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(2),
	datab => \i4|s[13]~8_combout\,
	datac => \i2|a\(3),
	datad => \i2|b\(2),
	combout => \i4|s[2]~15_combout\);

-- Location: LCCOMB_X17_Y22_N18
\i4|s[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]~16_combout\ = (\i2|a\(2) & ((\i1|op\(0)) # ((\i2|b\(2)) # (!\i1|op\(1))))) # (!\i2|a\(2) & (\i2|b\(2) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(2),
	datab => \i1|op\(0),
	datac => \i1|op\(1),
	datad => \i2|b\(2),
	combout => \i4|s[2]~16_combout\);

-- Location: LCCOMB_X17_Y22_N4
\i4|s[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]~17_combout\ = (\i4|s[13]~11_combout\ & (\i4|s[2]~15_combout\)) # (!\i4|s[13]~11_combout\ & ((\i4|s[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[13]~11_combout\,
	datac => \i4|s[2]~15_combout\,
	datad => \i4|s[2]~16_combout\,
	combout => \i4|s[2]~17_combout\);

-- Location: LCCOMB_X17_Y22_N26
\i4|s[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]~18_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & (\i4|a3|i2|s~combout\)) # (!\i4|s[13]~6_combout\ & ((\i4|s[2]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i2|s~combout\,
	datab => \i4|s[13]~7_combout\,
	datac => \i4|s[2]~17_combout\,
	datad => \i4|s[13]~6_combout\,
	combout => \i4|s[2]~18_combout\);

-- Location: LCCOMB_X17_Y21_N28
\i4|a2|i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i1|cout~0_combout\ = (\i2|a\(0) & ((\i2|b\(1) & (\i2|a\(1))) # (!\i2|b\(1) & ((\i2|b\(0)))))) # (!\i2|a\(0) & (\i2|a\(1) & (\i2|b\(0) $ (\i2|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(1),
	datab => \i2|b\(0),
	datac => \i2|a\(0),
	datad => \i2|b\(1),
	combout => \i4|a2|i1|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N12
\i4|a1|i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i1|cout~0_combout\ = (\i2|b\(0)) # (\i2|b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(0),
	datad => \i2|b\(1),
	combout => \i4|a1|i1|cout~0_combout\);

-- Location: LCCOMB_X17_Y22_N24
\i4|a2|i2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i2|s~combout\ = \i2|a\(2) $ (\i4|a2|i1|cout~0_combout\ $ (\i4|a1|i1|cout~0_combout\ $ (\i2|b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(2),
	datab => \i4|a2|i1|cout~0_combout\,
	datac => \i4|a1|i1|cout~0_combout\,
	datad => \i2|b\(2),
	combout => \i4|a2|i2|s~combout\);

-- Location: LCCOMB_X17_Y22_N0
\i4|s[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]~19_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[2]~18_combout\ & (\i2|a\(1))) # (!\i4|s[2]~18_combout\ & ((\i4|a2|i2|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i2|a\(1),
	datac => \i4|s[2]~18_combout\,
	datad => \i4|a2|i2|s~combout\,
	combout => \i4|s[2]~19_combout\);

-- Location: LCCOMB_X11_Y23_N20
\i4|s[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[2]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[2]~19_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[2]~19_combout\,
	datab => \i4|s[2]$latch~combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[2]$latch~combout\);

-- Location: FF_X17_Y21_N1
\i2|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[5]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(3));

-- Location: LCCOMB_X17_Y22_N2
\i4|a3|i3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i3|s~0_combout\ = \i2|a\(3) $ (\i2|b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(3),
	datad => \i2|b\(3),
	combout => \i4|a3|i3|s~0_combout\);

-- Location: LCCOMB_X17_Y22_N12
\i4|a3|i3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i3|s~combout\ = \i4|a3|i3|s~0_combout\ $ (((\i2|b\(2) & ((\i4|a3|i1|cout~0_combout\) # (\i2|a\(2)))) # (!\i2|b\(2) & (\i4|a3|i1|cout~0_combout\ & \i2|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(2),
	datab => \i4|a3|i3|s~0_combout\,
	datac => \i4|a3|i1|cout~0_combout\,
	datad => \i2|a\(2),
	combout => \i4|a3|i3|s~combout\);

-- Location: LCCOMB_X17_Y21_N30
\i4|a1|i2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i2|cout~0_combout\ = (\i2|b\(0)) # ((\i2|b\(2)) # (\i2|b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(0),
	datab => \i2|b\(2),
	datad => \i2|b\(1),
	combout => \i4|a1|i2|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N2
\i4|a2|i2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i2|cout~0_combout\ = (\i2|a\(2) & ((\i4|a2|i1|cout~0_combout\) # (\i4|a1|i1|cout~0_combout\ $ (\i2|b\(2))))) # (!\i2|a\(2) & (\i4|a2|i1|cout~0_combout\ & (\i4|a1|i1|cout~0_combout\ $ (\i2|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i1|cout~0_combout\,
	datab => \i2|a\(2),
	datac => \i2|b\(2),
	datad => \i4|a2|i1|cout~0_combout\,
	combout => \i4|a2|i2|cout~0_combout\);

-- Location: LCCOMB_X17_Y22_N22
\i4|a2|i3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i3|s~combout\ = \i4|a1|i2|cout~0_combout\ $ (\i4|a2|i2|cout~0_combout\ $ (\i2|a\(3) $ (\i2|b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i2|cout~0_combout\,
	datab => \i4|a2|i2|cout~0_combout\,
	datac => \i2|a\(3),
	datad => \i2|b\(3),
	combout => \i4|a2|i3|s~combout\);

-- Location: LCCOMB_X17_Y22_N30
\i4|s[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~21_combout\ = (\i2|a\(3) & ((\i1|op\(0)) # ((\i2|b\(3)) # (!\i1|op\(1))))) # (!\i2|a\(3) & (\i2|b\(3) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(3),
	datab => \i1|op\(0),
	datac => \i1|op\(1),
	datad => \i2|b\(3),
	combout => \i4|s[3]~21_combout\);

-- Location: IOIBUF_X5_Y29_N1
\instrucao[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(6),
	o => \instrucao[6]~input_o\);

-- Location: FF_X17_Y21_N21
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
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(4));

-- Location: LCCOMB_X17_Y22_N16
\i4|s[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~20_combout\ = (\i4|s[13]~8_combout\ & (!\i2|a\(3) & (!\i2|b\(3)))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(3),
	datab => \i2|b\(3),
	datac => \i4|s[13]~8_combout\,
	datad => \i2|a\(4),
	combout => \i4|s[3]~20_combout\);

-- Location: LCCOMB_X17_Y22_N20
\i4|s[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~22_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[3]~20_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[3]~21_combout\,
	datab => \i4|s[13]~11_combout\,
	datad => \i4|s[3]~20_combout\,
	combout => \i4|s[3]~22_combout\);

-- Location: LCCOMB_X17_Y22_N14
\i4|s[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~23_combout\ = (\i4|s[13]~6_combout\ & (((\i4|s[13]~7_combout\)))) # (!\i4|s[13]~6_combout\ & ((\i4|s[13]~7_combout\ & (\i4|a2|i3|s~combout\)) # (!\i4|s[13]~7_combout\ & ((\i4|s[3]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a2|i3|s~combout\,
	datab => \i4|s[13]~6_combout\,
	datac => \i4|s[13]~7_combout\,
	datad => \i4|s[3]~22_combout\,
	combout => \i4|s[3]~23_combout\);

-- Location: LCCOMB_X17_Y22_N28
\i4|s[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~24_combout\ = (\i4|s[13]~6_combout\ & ((\i4|s[3]~23_combout\ & ((\i2|a\(2)))) # (!\i4|s[3]~23_combout\ & (\i4|a3|i3|s~combout\)))) # (!\i4|s[13]~6_combout\ & (((\i4|s[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i3|s~combout\,
	datab => \i4|s[13]~6_combout\,
	datac => \i4|s[3]~23_combout\,
	datad => \i2|a\(2),
	combout => \i4|s[3]~24_combout\);

-- Location: LCCOMB_X14_Y21_N24
\i4|s[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[3]~24_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[3]~24_combout\,
	datac => \i4|s[3]$latch~combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[3]$latch~combout\);

-- Location: LCCOMB_X17_Y21_N22
\i4|a3|i3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i3|cout~0_combout\ = (\i2|b\(3) & \i2|a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(3),
	datad => \i2|a\(3),
	combout => \i4|a3|i3|cout~0_combout\);

-- Location: FF_X17_Y21_N27
\i2|b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[6]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(4));

-- Location: LCCOMB_X16_Y23_N12
\i4|s[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[3]~25_combout\ = (!\i2|a\(3) & !\i2|b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(3),
	datad => \i2|b\(3),
	combout => \i4|s[3]~25_combout\);

-- Location: LCCOMB_X16_Y23_N2
\i4|a3|i3|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i3|cout~1_combout\ = (!\i4|s[3]~25_combout\ & ((\i2|b\(2) & ((\i2|a\(2)) # (\i4|a3|i1|cout~0_combout\))) # (!\i2|b\(2) & (\i2|a\(2) & \i4|a3|i1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(2),
	datab => \i2|a\(2),
	datac => \i4|a3|i1|cout~0_combout\,
	datad => \i4|s[3]~25_combout\,
	combout => \i4|a3|i3|cout~1_combout\);

-- Location: LCCOMB_X16_Y23_N28
\i4|a3|i4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i4|s~combout\ = \i2|b\(4) $ (\i2|a\(4) $ (((\i4|a3|i3|cout~0_combout\) # (\i4|a3|i3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i3|cout~0_combout\,
	datab => \i2|b\(4),
	datac => \i4|a3|i3|cout~1_combout\,
	datad => \i2|a\(4),
	combout => \i4|a3|i4|s~combout\);

-- Location: LCCOMB_X16_Y22_N8
\i4|s[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]~27_combout\ = (\i2|a\(4) & ((\i2|b\(4)) # ((\i1|op\(0)) # (!\i1|op\(1))))) # (!\i2|a\(4) & (\i2|b\(4) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(4),
	datab => \i2|b\(4),
	datac => \i1|op\(1),
	datad => \i1|op\(0),
	combout => \i4|s[4]~27_combout\);

-- Location: IOIBUF_X35_Y29_N1
\instrucao[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(7),
	o => \instrucao[7]~input_o\);

-- Location: FF_X17_Y21_N11
\i2|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[7]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(5));

-- Location: LCCOMB_X16_Y22_N18
\i4|s[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]~26_combout\ = (\i4|s[13]~8_combout\ & (!\i2|a\(4) & (!\i2|b\(4)))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(4),
	datab => \i2|b\(4),
	datac => \i2|a\(5),
	datad => \i4|s[13]~8_combout\,
	combout => \i4|s[4]~26_combout\);

-- Location: LCCOMB_X16_Y22_N6
\i4|s[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]~28_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[4]~26_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[4]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[13]~11_combout\,
	datac => \i4|s[4]~27_combout\,
	datad => \i4|s[4]~26_combout\,
	combout => \i4|s[4]~28_combout\);

-- Location: LCCOMB_X16_Y23_N14
\i4|s[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]~29_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & (\i4|a3|i4|s~combout\)) # (!\i4|s[13]~6_combout\ & ((\i4|s[4]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|a3|i4|s~combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|s[4]~28_combout\,
	combout => \i4|s[4]~29_combout\);

-- Location: LCCOMB_X17_Y21_N18
\i4|a2|i3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i3|cout~0_combout\ = (\i2|a\(3) & ((\i4|a2|i2|cout~0_combout\) # (\i4|a1|i2|cout~0_combout\ $ (\i2|b\(3))))) # (!\i2|a\(3) & (\i4|a2|i2|cout~0_combout\ & (\i4|a1|i2|cout~0_combout\ $ (\i2|b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i2|cout~0_combout\,
	datab => \i2|b\(3),
	datac => \i2|a\(3),
	datad => \i4|a2|i2|cout~0_combout\,
	combout => \i4|a2|i3|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N8
\i4|a1|i3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i3|cout~0_combout\ = (\i2|b\(0)) # ((\i2|b\(2)) # ((\i2|b\(1)) # (\i2|b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(0),
	datab => \i2|b\(2),
	datac => \i2|b\(1),
	datad => \i2|b\(3),
	combout => \i4|a1|i3|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N20
\i4|a2|i4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i4|s~combout\ = \i2|b\(4) $ (\i4|a2|i3|cout~0_combout\ $ (\i2|a\(4) $ (\i4|a1|i3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(4),
	datab => \i4|a2|i3|cout~0_combout\,
	datac => \i2|a\(4),
	datad => \i4|a1|i3|cout~0_combout\,
	combout => \i4|a2|i4|s~combout\);

-- Location: LCCOMB_X16_Y23_N4
\i4|s[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]~30_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[4]~29_combout\ & (\i2|a\(3))) # (!\i4|s[4]~29_combout\ & ((\i4|a2|i4|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i2|a\(3),
	datac => \i4|s[4]~29_combout\,
	datad => \i4|a2|i4|s~combout\,
	combout => \i4|s[4]~30_combout\);

-- Location: LCCOMB_X14_Y21_N18
\i4|s[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[4]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[4]~30_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[4]$latch~combout\,
	datac => \i4|s[4]~30_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[4]$latch~combout\);

-- Location: LCCOMB_X16_Y23_N26
\i4|a3|i4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i4|cout~0_combout\ = (\i2|b\(4) & \i2|a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|b\(4),
	datad => \i2|a\(4),
	combout => \i4|a3|i4|cout~0_combout\);

-- Location: FF_X17_Y21_N13
\i2|b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[7]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(5));

-- Location: LCCOMB_X16_Y23_N0
\i4|a3|i4|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i4|cout~1_combout\ = (\i2|a\(4) & (((\i4|a3|i3|cout~0_combout\) # (\i4|a3|i3|cout~1_combout\)))) # (!\i2|a\(4) & (\i2|b\(4) & ((\i4|a3|i3|cout~0_combout\) # (\i4|a3|i3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(4),
	datab => \i2|b\(4),
	datac => \i4|a3|i3|cout~0_combout\,
	datad => \i4|a3|i3|cout~1_combout\,
	combout => \i4|a3|i4|cout~1_combout\);

-- Location: LCCOMB_X16_Y23_N30
\i4|a3|i5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i5|s~combout\ = \i2|b\(5) $ (\i2|a\(5) $ (((\i4|a3|i4|cout~0_combout\) # (\i4|a3|i4|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i4|cout~0_combout\,
	datab => \i2|b\(5),
	datac => \i2|a\(5),
	datad => \i4|a3|i4|cout~1_combout\,
	combout => \i4|a3|i5|s~combout\);

-- Location: IOIBUF_X21_Y29_N8
\instrucao[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(8),
	o => \instrucao[8]~input_o\);

-- Location: FF_X17_Y21_N17
\i2|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[8]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(6));

-- Location: LCCOMB_X16_Y22_N30
\i4|s[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]~31_combout\ = (\i4|s[13]~8_combout\ & (((!\i2|a\(5) & !\i2|b\(5))))) # (!\i4|s[13]~8_combout\ & (\i2|a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~8_combout\,
	datab => \i2|a\(6),
	datac => \i2|a\(5),
	datad => \i2|b\(5),
	combout => \i4|s[5]~31_combout\);

-- Location: LCCOMB_X16_Y22_N16
\i4|s[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]~32_combout\ = (\i2|a\(5) & ((\i1|op\(0)) # ((\i2|b\(5)) # (!\i1|op\(1))))) # (!\i2|a\(5) & (\i2|b\(5) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(5),
	datab => \i1|op\(0),
	datac => \i1|op\(1),
	datad => \i2|b\(5),
	combout => \i4|s[5]~32_combout\);

-- Location: LCCOMB_X16_Y22_N10
\i4|s[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]~33_combout\ = (\i4|s[13]~11_combout\ & (\i4|s[5]~31_combout\)) # (!\i4|s[13]~11_combout\ & ((\i4|s[5]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[13]~11_combout\,
	datac => \i4|s[5]~31_combout\,
	datad => \i4|s[5]~32_combout\,
	combout => \i4|s[5]~33_combout\);

-- Location: LCCOMB_X17_Y21_N6
\i4|a2|i4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i4|cout~0_combout\ = (\i2|a\(4) & ((\i4|a2|i3|cout~0_combout\) # (\i4|a1|i3|cout~0_combout\ $ (\i2|b\(4))))) # (!\i2|a\(4) & (\i4|a2|i3|cout~0_combout\ & (\i4|a1|i3|cout~0_combout\ $ (\i2|b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i3|cout~0_combout\,
	datab => \i2|a\(4),
	datac => \i2|b\(4),
	datad => \i4|a2|i3|cout~0_combout\,
	combout => \i4|a2|i4|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N4
\i4|a1|i4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i4|cout~0_combout\ = (\i2|b\(4)) # (\i4|a1|i3|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(4),
	datad => \i4|a1|i3|cout~0_combout\,
	combout => \i4|a1|i4|cout~0_combout\);

-- Location: LCCOMB_X16_Y22_N20
\i4|a2|i5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i5|s~combout\ = \i2|a\(5) $ (\i4|a2|i4|cout~0_combout\ $ (\i4|a1|i4|cout~0_combout\ $ (\i2|b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(5),
	datab => \i4|a2|i4|cout~0_combout\,
	datac => \i4|a1|i4|cout~0_combout\,
	datad => \i2|b\(5),
	combout => \i4|a2|i5|s~combout\);

-- Location: LCCOMB_X16_Y22_N12
\i4|s[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]~34_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\) # (\i4|a2|i5|s~combout\)))) # (!\i4|s[13]~7_combout\ & (\i4|s[5]~33_combout\ & (!\i4|s[13]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[5]~33_combout\,
	datab => \i4|s[13]~7_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a2|i5|s~combout\,
	combout => \i4|s[5]~34_combout\);

-- Location: LCCOMB_X16_Y22_N22
\i4|s[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]~35_combout\ = (\i4|s[13]~6_combout\ & ((\i4|s[5]~34_combout\ & (\i2|a\(4))) # (!\i4|s[5]~34_combout\ & ((\i4|a3|i5|s~combout\))))) # (!\i4|s[13]~6_combout\ & (((\i4|s[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~6_combout\,
	datab => \i2|a\(4),
	datac => \i4|a3|i5|s~combout\,
	datad => \i4|s[5]~34_combout\,
	combout => \i4|s[5]~35_combout\);

-- Location: LCCOMB_X11_Y23_N2
\i4|s[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[5]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[5]~35_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[5]$latch~combout\,
	datac => \i4|s[5]~35_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[5]$latch~combout\);

-- Location: FF_X17_Y21_N31
\i2|b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[8]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(6));

-- Location: LCCOMB_X17_Y21_N0
\i4|a1|i5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i5|cout~0_combout\ = (\i2|b\(4)) # ((\i2|b\(5)) # (\i4|a1|i3|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(4),
	datab => \i2|b\(5),
	datad => \i4|a1|i3|cout~0_combout\,
	combout => \i4|a1|i5|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N10
\i4|a2|i5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i5|cout~0_combout\ = (\i2|a\(5) & ((\i4|a2|i4|cout~0_combout\) # (\i2|b\(5) $ (\i4|a1|i4|cout~0_combout\)))) # (!\i2|a\(5) & (\i4|a2|i4|cout~0_combout\ & (\i2|b\(5) $ (\i4|a1|i4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(5),
	datab => \i4|a1|i4|cout~0_combout\,
	datac => \i2|a\(5),
	datad => \i4|a2|i4|cout~0_combout\,
	combout => \i4|a2|i5|cout~0_combout\);

-- Location: LCCOMB_X14_Y22_N26
\i4|a2|i6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i6|s~combout\ = \i2|b\(6) $ (\i2|a\(6) $ (\i4|a1|i5|cout~0_combout\ $ (\i4|a2|i5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(6),
	datab => \i2|a\(6),
	datac => \i4|a1|i5|cout~0_combout\,
	datad => \i4|a2|i5|cout~0_combout\,
	combout => \i4|a2|i6|s~combout\);

-- Location: LCCOMB_X16_Y23_N20
\i4|a3|i5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i5|cout~0_combout\ = (\i2|b\(5) & ((\i4|a3|i4|cout~0_combout\) # ((\i2|a\(5)) # (\i4|a3|i4|cout~1_combout\)))) # (!\i2|b\(5) & (\i2|a\(5) & ((\i4|a3|i4|cout~0_combout\) # (\i4|a3|i4|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i4|cout~0_combout\,
	datab => \i2|b\(5),
	datac => \i2|a\(5),
	datad => \i4|a3|i4|cout~1_combout\,
	combout => \i4|a3|i5|cout~0_combout\);

-- Location: LCCOMB_X14_Y22_N24
\i4|a3|i6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i6|s~combout\ = \i2|b\(6) $ (\i2|a\(6) $ (\i4|a3|i5|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(6),
	datac => \i2|a\(6),
	datad => \i4|a3|i5|cout~0_combout\,
	combout => \i4|a3|i6|s~combout\);

-- Location: LCCOMB_X14_Y22_N8
\i4|s[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]~37_combout\ = (\i2|b\(6) & ((\i2|a\(6)) # ((\i1|op\(0)) # (!\i1|op\(1))))) # (!\i2|b\(6) & (\i2|a\(6) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(6),
	datab => \i2|a\(6),
	datac => \i1|op\(1),
	datad => \i1|op\(0),
	combout => \i4|s[6]~37_combout\);

-- Location: IOIBUF_X11_Y0_N1
\instrucao[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(9),
	o => \instrucao[9]~input_o\);

-- Location: FF_X16_Y21_N21
\i2|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[9]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(7));

-- Location: LCCOMB_X14_Y22_N18
\i4|s[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]~36_combout\ = (\i4|s[13]~8_combout\ & (((!\i2|b\(6) & !\i2|a\(6))))) # (!\i4|s[13]~8_combout\ & (\i2|a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~8_combout\,
	datab => \i2|a\(7),
	datac => \i2|b\(6),
	datad => \i2|a\(6),
	combout => \i4|s[6]~36_combout\);

-- Location: LCCOMB_X14_Y22_N10
\i4|s[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]~38_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[6]~36_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[6]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~11_combout\,
	datac => \i4|s[6]~37_combout\,
	datad => \i4|s[6]~36_combout\,
	combout => \i4|s[6]~38_combout\);

-- Location: LCCOMB_X14_Y22_N12
\i4|s[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]~39_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & (\i4|a3|i6|s~combout\)) # (!\i4|s[13]~6_combout\ & ((\i4|s[6]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|a3|i6|s~combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|s[6]~38_combout\,
	combout => \i4|s[6]~39_combout\);

-- Location: LCCOMB_X14_Y22_N22
\i4|s[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]~40_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[6]~39_combout\ & (\i2|a\(5))) # (!\i4|s[6]~39_combout\ & ((\i4|a2|i6|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i2|a\(5),
	datac => \i4|a2|i6|s~combout\,
	datad => \i4|s[6]~39_combout\,
	combout => \i4|s[6]~40_combout\);

-- Location: LCCOMB_X14_Y22_N20
\i4|s[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[6]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[6]~40_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[6]~40_combout\,
	datab => \i4|s[6]$latch~combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[6]$latch~combout\);

-- Location: FF_X16_Y21_N7
\i2|b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[9]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(7));

-- Location: LCCOMB_X14_Y22_N14
\i4|s[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]~42_combout\ = (\i2|b\(7) & ((\i1|op\(0)) # ((\i2|a\(7)) # (!\i1|op\(1))))) # (!\i2|b\(7) & (\i2|a\(7) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(7),
	datab => \i1|op\(0),
	datac => \i1|op\(1),
	datad => \i2|a\(7),
	combout => \i4|s[7]~42_combout\);

-- Location: IOIBUF_X7_Y29_N29
\instrucao[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(10),
	o => \instrucao[10]~input_o\);

-- Location: FF_X16_Y21_N19
\i2|a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[10]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(8));

-- Location: LCCOMB_X14_Y22_N28
\i4|s[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]~41_combout\ = (\i4|s[13]~8_combout\ & (!\i2|b\(7) & ((!\i2|a\(7))))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(7),
	datab => \i2|a\(8),
	datac => \i4|s[13]~8_combout\,
	datad => \i2|a\(7),
	combout => \i4|s[7]~41_combout\);

-- Location: LCCOMB_X14_Y22_N4
\i4|s[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]~43_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[7]~41_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[7]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~11_combout\,
	datac => \i4|s[7]~42_combout\,
	datad => \i4|s[7]~41_combout\,
	combout => \i4|s[7]~43_combout\);

-- Location: LCCOMB_X17_Y21_N26
\i4|a1|i6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i6|cout~0_combout\ = (\i4|a1|i3|cout~0_combout\) # ((\i2|b\(6)) # ((\i2|b\(4)) # (\i2|b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i3|cout~0_combout\,
	datab => \i2|b\(6),
	datac => \i2|b\(4),
	datad => \i2|b\(5),
	combout => \i4|a1|i6|cout~0_combout\);

-- Location: LCCOMB_X17_Y21_N16
\i4|a2|i6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i6|cout~0_combout\ = (\i2|a\(6) & ((\i4|a2|i5|cout~0_combout\) # (\i4|a1|i5|cout~0_combout\ $ (\i2|b\(6))))) # (!\i2|a\(6) & (\i4|a2|i5|cout~0_combout\ & (\i4|a1|i5|cout~0_combout\ $ (\i2|b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i5|cout~0_combout\,
	datab => \i2|b\(6),
	datac => \i2|a\(6),
	datad => \i4|a2|i5|cout~0_combout\,
	combout => \i4|a2|i6|cout~0_combout\);

-- Location: LCCOMB_X14_Y22_N2
\i4|a2|i7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i7|s~combout\ = \i2|a\(7) $ (\i4|a1|i6|cout~0_combout\ $ (\i2|b\(7) $ (\i4|a2|i6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(7),
	datab => \i4|a1|i6|cout~0_combout\,
	datac => \i2|b\(7),
	datad => \i4|a2|i6|cout~0_combout\,
	combout => \i4|a2|i7|s~combout\);

-- Location: LCCOMB_X14_Y22_N30
\i4|s[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]~44_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\) # (\i4|a2|i7|s~combout\)))) # (!\i4|s[13]~7_combout\ & (\i4|s[7]~43_combout\ & (!\i4|s[13]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|s[7]~43_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a2|i7|s~combout\,
	combout => \i4|s[7]~44_combout\);

-- Location: LCCOMB_X16_Y23_N10
\i4|a3|i6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i6|cout~0_combout\ = (\i2|b\(6) & ((\i2|a\(6)) # (\i4|a3|i5|cout~0_combout\))) # (!\i2|b\(6) & (\i2|a\(6) & \i4|a3|i5|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(6),
	datac => \i2|a\(6),
	datad => \i4|a3|i5|cout~0_combout\,
	combout => \i4|a3|i6|cout~0_combout\);

-- Location: LCCOMB_X14_Y22_N16
\i4|a3|i7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i7|s~combout\ = \i2|a\(7) $ (\i2|b\(7) $ (\i4|a3|i6|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(7),
	datac => \i2|b\(7),
	datad => \i4|a3|i6|cout~0_combout\,
	combout => \i4|a3|i7|s~combout\);

-- Location: LCCOMB_X14_Y22_N0
\i4|s[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]~45_combout\ = (\i4|s[7]~44_combout\ & ((\i2|a\(6)) # ((!\i4|s[13]~6_combout\)))) # (!\i4|s[7]~44_combout\ & (((\i4|s[13]~6_combout\ & \i4|a3|i7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[7]~44_combout\,
	datab => \i2|a\(6),
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a3|i7|s~combout\,
	combout => \i4|s[7]~45_combout\);

-- Location: LCCOMB_X11_Y23_N28
\i4|s[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[7]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[7]~45_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[7]$latch~combout\,
	datac => \i4|s[7]~45_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[7]$latch~combout\);

-- Location: FF_X16_Y21_N9
\i2|b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[10]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(8));

-- Location: LCCOMB_X12_Y23_N22
\i4|s[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]~47_combout\ = (\i2|b\(8) & ((\i2|a\(8)) # ((\i1|op\(0)) # (!\i1|op\(1))))) # (!\i2|b\(8) & (\i2|a\(8) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i2|a\(8),
	datac => \i1|op\(1),
	datad => \i1|op\(0),
	combout => \i4|s[8]~47_combout\);

-- Location: IOIBUF_X7_Y29_N15
\instrucao[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(11),
	o => \instrucao[11]~input_o\);

-- Location: FF_X16_Y21_N13
\i2|a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[11]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(9));

-- Location: LCCOMB_X12_Y23_N4
\i4|s[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]~46_combout\ = (\i4|s[13]~8_combout\ & (!\i2|b\(8) & (!\i2|a\(8)))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i2|a\(8),
	datac => \i2|a\(9),
	datad => \i4|s[13]~8_combout\,
	combout => \i4|s[8]~46_combout\);

-- Location: LCCOMB_X12_Y23_N24
\i4|s[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]~48_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[8]~46_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[8]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[8]~47_combout\,
	datab => \i4|s[8]~46_combout\,
	datac => \i4|s[13]~11_combout\,
	combout => \i4|s[8]~48_combout\);

-- Location: LCCOMB_X16_Y23_N16
\i4|a3|i7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i7|cout~0_combout\ = (\i2|a\(7) & ((\i2|b\(7)) # (\i4|a3|i6|cout~0_combout\))) # (!\i2|a\(7) & (\i2|b\(7) & \i4|a3|i6|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(7),
	datab => \i2|b\(7),
	datad => \i4|a3|i6|cout~0_combout\,
	combout => \i4|a3|i7|cout~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\i4|a3|i8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i8|s~combout\ = \i2|b\(8) $ (\i2|a\(8) $ (\i4|a3|i7|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i2|a\(8),
	datac => \i4|a3|i7|cout~0_combout\,
	combout => \i4|a3|i8|s~combout\);

-- Location: LCCOMB_X12_Y23_N30
\i4|s[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]~49_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & ((\i4|a3|i8|s~combout\))) # (!\i4|s[13]~6_combout\ & (\i4|s[8]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|s[8]~48_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a3|i8|s~combout\,
	combout => \i4|s[8]~49_combout\);

-- Location: LCCOMB_X16_Y21_N14
\i4|a1|i7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i7|cout~0_combout\ = (\i4|a1|i6|cout~0_combout\) # (\i2|b\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|a1|i6|cout~0_combout\,
	datad => \i2|b\(7),
	combout => \i4|a1|i7|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N20
\i4|a2|i7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i7|cout~0_combout\ = (\i2|a\(7) & ((\i4|a2|i6|cout~0_combout\) # (\i2|b\(7) $ (\i4|a1|i6|cout~0_combout\)))) # (!\i2|a\(7) & (\i4|a2|i6|cout~0_combout\ & (\i2|b\(7) $ (\i4|a1|i6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(7),
	datab => \i4|a1|i6|cout~0_combout\,
	datac => \i2|a\(7),
	datad => \i4|a2|i6|cout~0_combout\,
	combout => \i4|a2|i7|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N30
\i4|a2|i8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i8|s~combout\ = \i2|b\(8) $ (\i4|a1|i7|cout~0_combout\ $ (\i2|a\(8) $ (\i4|a2|i7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i4|a1|i7|cout~0_combout\,
	datac => \i2|a\(8),
	datad => \i4|a2|i7|cout~0_combout\,
	combout => \i4|a2|i8|s~combout\);

-- Location: LCCOMB_X12_Y23_N12
\i4|s[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]~50_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[8]~49_combout\ & (\i2|a\(7))) # (!\i4|s[8]~49_combout\ & ((\i4|a2|i8|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[8]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i2|a\(7),
	datac => \i4|s[8]~49_combout\,
	datad => \i4|a2|i8|s~combout\,
	combout => \i4|s[8]~50_combout\);

-- Location: LCCOMB_X12_Y23_N16
\i4|s[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[8]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[8]~50_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[8]~50_combout\,
	datab => \i4|s[8]$latch~combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[8]$latch~combout\);

-- Location: FF_X16_Y21_N11
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

-- Location: LCCOMB_X12_Y23_N18
\i4|a3|i9|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i9|s~0_combout\ = \i2|a\(9) $ (\i2|b\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(9),
	datad => \i2|b\(9),
	combout => \i4|a3|i9|s~0_combout\);

-- Location: LCCOMB_X12_Y23_N8
\i4|a3|i9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i9|s~combout\ = \i4|a3|i9|s~0_combout\ $ (((\i2|b\(8) & ((\i2|a\(8)) # (\i4|a3|i7|cout~0_combout\))) # (!\i2|b\(8) & (\i2|a\(8) & \i4|a3|i7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i2|a\(8),
	datac => \i4|a3|i7|cout~0_combout\,
	datad => \i4|a3|i9|s~0_combout\,
	combout => \i4|a3|i9|s~combout\);

-- Location: LCCOMB_X12_Y23_N10
\i4|s[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~53_combout\ = (\i2|b\(9) & (((\i2|a\(9)) # (\i1|op\(0))) # (!\i1|op\(1)))) # (!\i2|b\(9) & (\i2|a\(9) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|b\(9),
	datac => \i2|a\(9),
	datad => \i1|op\(0),
	combout => \i4|s[9]~53_combout\);

-- Location: IOIBUF_X11_Y29_N22
\instrucao[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(12),
	o => \instrucao[12]~input_o\);

-- Location: FF_X16_Y21_N3
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
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(10));

-- Location: LCCOMB_X16_Y21_N26
\i4|s[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~51_combout\ = (!\i2|a\(9) & !\i2|b\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(9),
	datad => \i2|b\(9),
	combout => \i4|s[9]~51_combout\);

-- Location: LCCOMB_X17_Y23_N8
\i4|s[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~52_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[13]~8_combout\ & ((\i4|s[9]~51_combout\))) # (!\i4|s[13]~8_combout\ & (\i2|a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(10),
	datab => \i4|s[13]~8_combout\,
	datac => \i4|s[9]~51_combout\,
	datad => \i4|s[13]~11_combout\,
	combout => \i4|s[9]~52_combout\);

-- Location: LCCOMB_X12_Y23_N28
\i4|s[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~54_combout\ = (\i4|s[9]~52_combout\) # ((\i4|s[9]~53_combout\ & !\i4|s[13]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[9]~53_combout\,
	datac => \i4|s[13]~11_combout\,
	datad => \i4|s[9]~52_combout\,
	combout => \i4|s[9]~54_combout\);

-- Location: LCCOMB_X16_Y21_N8
\i4|a1|i8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i8|cout~0_combout\ = (\i4|a1|i6|cout~0_combout\) # ((\i2|b\(8)) # (\i2|b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|a1|i6|cout~0_combout\,
	datac => \i2|b\(8),
	datad => \i2|b\(7),
	combout => \i4|a1|i8|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N18
\i4|a2|i8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i8|cout~0_combout\ = (\i2|a\(8) & ((\i4|a2|i7|cout~0_combout\) # (\i2|b\(8) $ (\i4|a1|i7|cout~0_combout\)))) # (!\i2|a\(8) & (\i4|a2|i7|cout~0_combout\ & (\i2|b\(8) $ (\i4|a1|i7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i4|a1|i7|cout~0_combout\,
	datac => \i2|a\(8),
	datad => \i4|a2|i7|cout~0_combout\,
	combout => \i4|a2|i8|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N4
\i4|a2|i9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i9|s~combout\ = \i4|a1|i8|cout~0_combout\ $ (\i2|a\(9) $ (\i4|a2|i8|cout~0_combout\ $ (\i2|b\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i8|cout~0_combout\,
	datab => \i2|a\(9),
	datac => \i4|a2|i8|cout~0_combout\,
	datad => \i2|b\(9),
	combout => \i4|a2|i9|s~combout\);

-- Location: LCCOMB_X12_Y23_N2
\i4|s[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~55_combout\ = (\i4|s[13]~6_combout\ & (((\i4|s[13]~7_combout\)))) # (!\i4|s[13]~6_combout\ & ((\i4|s[13]~7_combout\ & ((\i4|a2|i9|s~combout\))) # (!\i4|s[13]~7_combout\ & (\i4|s[9]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[9]~54_combout\,
	datab => \i4|s[13]~6_combout\,
	datac => \i4|a2|i9|s~combout\,
	datad => \i4|s[13]~7_combout\,
	combout => \i4|s[9]~55_combout\);

-- Location: LCCOMB_X12_Y23_N20
\i4|s[9]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]~56_combout\ = (\i4|s[13]~6_combout\ & ((\i4|s[9]~55_combout\ & ((\i2|a\(8)))) # (!\i4|s[9]~55_combout\ & (\i4|a3|i9|s~combout\)))) # (!\i4|s[13]~6_combout\ & (((\i4|s[9]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i9|s~combout\,
	datab => \i2|a\(8),
	datac => \i4|s[13]~6_combout\,
	datad => \i4|s[9]~55_combout\,
	combout => \i4|s[9]~56_combout\);

-- Location: LCCOMB_X11_Y23_N18
\i4|s[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[9]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[9]~56_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[9]$latch~combout\,
	datac => \i4|s[9]~56_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[9]$latch~combout\);

-- Location: LCCOMB_X16_Y21_N10
\i4|a1|i9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i9|cout~0_combout\ = (\i2|b\(8)) # ((\i4|a1|i6|cout~0_combout\) # ((\i2|b\(9)) # (\i2|b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i4|a1|i6|cout~0_combout\,
	datac => \i2|b\(9),
	datad => \i2|b\(7),
	combout => \i4|a1|i9|cout~0_combout\);

-- Location: FF_X16_Y21_N1
\i2|b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[12]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(10));

-- Location: LCCOMB_X16_Y21_N12
\i4|a2|i9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i9|cout~0_combout\ = (\i2|a\(9) & ((\i4|a2|i8|cout~0_combout\) # (\i4|a1|i8|cout~0_combout\ $ (\i2|b\(9))))) # (!\i2|a\(9) & (\i4|a2|i8|cout~0_combout\ & (\i4|a1|i8|cout~0_combout\ $ (\i2|b\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i8|cout~0_combout\,
	datab => \i2|b\(9),
	datac => \i2|a\(9),
	datad => \i4|a2|i8|cout~0_combout\,
	combout => \i4|a2|i9|cout~0_combout\);

-- Location: LCCOMB_X17_Y23_N14
\i4|a2|i10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i10|s~combout\ = \i4|a1|i9|cout~0_combout\ $ (\i2|b\(10) $ (\i2|a\(10) $ (\i4|a2|i9|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i9|cout~0_combout\,
	datab => \i2|b\(10),
	datac => \i2|a\(10),
	datad => \i4|a2|i9|cout~0_combout\,
	combout => \i4|a2|i10|s~combout\);

-- Location: LCCOMB_X17_Y23_N10
\i4|s[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]~58_combout\ = (\i2|b\(10) & (((\i2|a\(10)) # (\i1|op\(0))) # (!\i1|op\(1)))) # (!\i2|b\(10) & (\i2|a\(10) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|b\(10),
	datac => \i2|a\(10),
	datad => \i1|op\(0),
	combout => \i4|s[10]~58_combout\);

-- Location: IOIBUF_X9_Y29_N1
\instrucao[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(13),
	o => \instrucao[13]~input_o\);

-- Location: FF_X16_Y21_N25
\i2|a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[13]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(11));

-- Location: LCCOMB_X17_Y23_N20
\i4|s[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]~57_combout\ = (\i4|s[13]~8_combout\ & (((!\i2|b\(10) & !\i2|a\(10))))) # (!\i4|s[13]~8_combout\ & (\i2|a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(11),
	datab => \i2|b\(10),
	datac => \i2|a\(10),
	datad => \i4|s[13]~8_combout\,
	combout => \i4|s[10]~57_combout\);

-- Location: LCCOMB_X17_Y23_N16
\i4|s[10]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]~59_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[10]~57_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[10]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[10]~58_combout\,
	datac => \i4|s[13]~11_combout\,
	datad => \i4|s[10]~57_combout\,
	combout => \i4|s[10]~59_combout\);

-- Location: LCCOMB_X16_Y21_N6
\i4|a3|i9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i9|cout~0_combout\ = (\i2|a\(9) & \i2|b\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|a\(9),
	datad => \i2|b\(9),
	combout => \i4|a3|i9|cout~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\i4|a3|i9|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i9|cout~1_combout\ = (!\i4|s[9]~51_combout\ & ((\i2|b\(8) & ((\i2|a\(8)) # (\i4|a3|i7|cout~0_combout\))) # (!\i2|b\(8) & (\i2|a\(8) & \i4|a3|i7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(8),
	datab => \i4|s[9]~51_combout\,
	datac => \i2|a\(8),
	datad => \i4|a3|i7|cout~0_combout\,
	combout => \i4|a3|i9|cout~1_combout\);

-- Location: LCCOMB_X16_Y23_N24
\i4|a3|i10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i10|s~combout\ = \i2|a\(10) $ (\i2|b\(10) $ (((\i4|a3|i9|cout~0_combout\) # (\i4|a3|i9|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(10),
	datab => \i4|a3|i9|cout~0_combout\,
	datac => \i2|b\(10),
	datad => \i4|a3|i9|cout~1_combout\,
	combout => \i4|a3|i10|s~combout\);

-- Location: LCCOMB_X17_Y23_N6
\i4|s[10]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]~60_combout\ = (\i4|s[13]~6_combout\ & (((\i4|s[13]~7_combout\) # (\i4|a3|i10|s~combout\)))) # (!\i4|s[13]~6_combout\ & (\i4|s[10]~59_combout\ & (!\i4|s[13]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~6_combout\,
	datab => \i4|s[10]~59_combout\,
	datac => \i4|s[13]~7_combout\,
	datad => \i4|a3|i10|s~combout\,
	combout => \i4|s[10]~60_combout\);

-- Location: LCCOMB_X17_Y23_N4
\i4|s[10]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]~61_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[10]~60_combout\ & (\i2|a\(9))) # (!\i4|s[10]~60_combout\ & ((\i4|a2|i10|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[10]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i2|a\(9),
	datac => \i4|a2|i10|s~combout\,
	datad => \i4|s[10]~60_combout\,
	combout => \i4|s[10]~61_combout\);

-- Location: LCCOMB_X17_Y23_N24
\i4|s[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[10]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[10]~61_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[10]$latch~combout\,
	datac => \i4|s[10]~61_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[10]$latch~combout\);

-- Location: FF_X16_Y21_N15
\i2|b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[13]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(11));

-- Location: LCCOMB_X16_Y23_N18
\i4|a3|i10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i10|cout~0_combout\ = (\i2|a\(10) & ((\i4|a3|i9|cout~0_combout\) # ((\i2|b\(10)) # (\i4|a3|i9|cout~1_combout\)))) # (!\i2|a\(10) & (\i2|b\(10) & ((\i4|a3|i9|cout~0_combout\) # (\i4|a3|i9|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(10),
	datab => \i4|a3|i9|cout~0_combout\,
	datac => \i2|b\(10),
	datad => \i4|a3|i9|cout~1_combout\,
	combout => \i4|a3|i10|cout~0_combout\);

-- Location: LCCOMB_X16_Y23_N8
\i4|a3|i11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i11|s~combout\ = \i2|b\(11) $ (\i2|a\(11) $ (\i4|a3|i10|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(11),
	datac => \i2|a\(11),
	datad => \i4|a3|i10|cout~0_combout\,
	combout => \i4|a3|i11|s~combout\);

-- Location: FF_X15_Y21_N5
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
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(12));

-- Location: LCCOMB_X14_Y23_N6
\i4|s[11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]~62_combout\ = (\i4|s[13]~8_combout\ & (((!\i2|b\(11) & !\i2|a\(11))))) # (!\i4|s[13]~8_combout\ & (\i2|a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~8_combout\,
	datab => \i2|a\(12),
	datac => \i2|b\(11),
	datad => \i2|a\(11),
	combout => \i4|s[11]~62_combout\);

-- Location: LCCOMB_X15_Y23_N22
\i4|s[11]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]~63_combout\ = (\i2|b\(11) & (((\i1|op\(0)) # (\i2|a\(11))) # (!\i1|op\(1)))) # (!\i2|b\(11) & (\i2|a\(11) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|b\(11),
	datac => \i1|op\(0),
	datad => \i2|a\(11),
	combout => \i4|s[11]~63_combout\);

-- Location: LCCOMB_X17_Y23_N22
\i4|s[11]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]~64_combout\ = (\i4|s[13]~11_combout\ & (\i4|s[11]~62_combout\)) # (!\i4|s[13]~11_combout\ & ((\i4|s[11]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~11_combout\,
	datac => \i4|s[11]~62_combout\,
	datad => \i4|s[11]~63_combout\,
	combout => \i4|s[11]~64_combout\);

-- Location: LCCOMB_X16_Y21_N0
\i4|a1|i10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i10|cout~0_combout\ = (\i2|b\(10)) # (\i4|a1|i9|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|b\(10),
	datad => \i4|a1|i9|cout~0_combout\,
	combout => \i4|a1|i10|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\i4|a2|i10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i10|cout~0_combout\ = (\i2|a\(10) & ((\i4|a2|i9|cout~0_combout\) # (\i2|b\(10) $ (\i4|a1|i9|cout~0_combout\)))) # (!\i2|a\(10) & (\i4|a2|i9|cout~0_combout\ & (\i2|b\(10) $ (\i4|a1|i9|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(10),
	datab => \i4|a1|i9|cout~0_combout\,
	datac => \i2|a\(10),
	datad => \i4|a2|i9|cout~0_combout\,
	combout => \i4|a2|i10|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\i4|a2|i11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i11|s~combout\ = \i2|b\(11) $ (\i4|a1|i10|cout~0_combout\ $ (\i2|a\(11) $ (\i4|a2|i10|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(11),
	datab => \i4|a1|i10|cout~0_combout\,
	datac => \i2|a\(11),
	datad => \i4|a2|i10|cout~0_combout\,
	combout => \i4|a2|i11|s~combout\);

-- Location: LCCOMB_X17_Y23_N12
\i4|s[11]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]~65_combout\ = (\i4|s[13]~6_combout\ & (((\i4|s[13]~7_combout\)))) # (!\i4|s[13]~6_combout\ & ((\i4|s[13]~7_combout\ & ((\i4|a2|i11|s~combout\))) # (!\i4|s[13]~7_combout\ & (\i4|s[11]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~6_combout\,
	datab => \i4|s[11]~64_combout\,
	datac => \i4|a2|i11|s~combout\,
	datad => \i4|s[13]~7_combout\,
	combout => \i4|s[11]~65_combout\);

-- Location: LCCOMB_X17_Y23_N26
\i4|s[11]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]~66_combout\ = (\i4|s[13]~6_combout\ & ((\i4|s[11]~65_combout\ & ((\i2|a\(10)))) # (!\i4|s[11]~65_combout\ & (\i4|a3|i11|s~combout\)))) # (!\i4|s[13]~6_combout\ & (((\i4|s[11]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i11|s~combout\,
	datab => \i2|a\(10),
	datac => \i4|s[13]~6_combout\,
	datad => \i4|s[11]~65_combout\,
	combout => \i4|s[11]~66_combout\);

-- Location: LCCOMB_X17_Y23_N2
\i4|s[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[11]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[11]~66_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[11]$latch~combout\,
	datac => \i4|s[11]~66_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[11]$latch~combout\);

-- Location: FF_X15_Y21_N7
\i2|a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[15]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(13));

-- Location: FF_X16_Y21_N17
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

-- Location: LCCOMB_X15_Y23_N26
\i4|s[12]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~67_combout\ = (!\i2|a\(12) & !\i2|b\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(12),
	datad => \i2|b\(12),
	combout => \i4|s[12]~67_combout\);

-- Location: LCCOMB_X15_Y23_N8
\i4|s[12]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~68_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[13]~8_combout\ & ((\i4|s[12]~67_combout\))) # (!\i4|s[13]~8_combout\ & (\i2|a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(13),
	datab => \i4|s[13]~11_combout\,
	datac => \i4|s[12]~67_combout\,
	datad => \i4|s[13]~8_combout\,
	combout => \i4|s[12]~68_combout\);

-- Location: LCCOMB_X14_Y23_N12
\i4|s[12]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~69_combout\ = (\i2|a\(12) & (((\i1|op\(0)) # (\i2|b\(12))) # (!\i1|op\(1)))) # (!\i2|a\(12) & (\i2|b\(12) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|a\(12),
	datac => \i1|op\(0),
	datad => \i2|b\(12),
	combout => \i4|s[12]~69_combout\);

-- Location: LCCOMB_X15_Y23_N2
\i4|s[12]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~70_combout\ = (\i4|s[12]~68_combout\) # ((!\i4|s[13]~11_combout\ & \i4|s[12]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|s[12]~68_combout\,
	datac => \i4|s[13]~11_combout\,
	datad => \i4|s[12]~69_combout\,
	combout => \i4|s[12]~70_combout\);

-- Location: LCCOMB_X15_Y23_N14
\i4|a2|i12|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i12|s~0_combout\ = \i2|a\(12) $ (\i2|b\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|a\(12),
	datad => \i2|b\(12),
	combout => \i4|a2|i12|s~0_combout\);

-- Location: LCCOMB_X15_Y23_N0
\i4|a3|i12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i12|s~combout\ = \i4|a2|i12|s~0_combout\ $ (((\i2|b\(11) & ((\i2|a\(11)) # (\i4|a3|i10|cout~0_combout\))) # (!\i2|b\(11) & (\i2|a\(11) & \i4|a3|i10|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a2|i12|s~0_combout\,
	datab => \i2|b\(11),
	datac => \i2|a\(11),
	datad => \i4|a3|i10|cout~0_combout\,
	combout => \i4|a3|i12|s~combout\);

-- Location: LCCOMB_X15_Y23_N4
\i4|s[12]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~71_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & ((\i4|a3|i12|s~combout\))) # (!\i4|s[13]~6_combout\ & (\i4|s[12]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|s[12]~70_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a3|i12|s~combout\,
	combout => \i4|s[12]~71_combout\);

-- Location: LCCOMB_X16_Y21_N24
\i4|a2|i11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i11|cout~0_combout\ = (\i2|a\(11) & ((\i4|a2|i10|cout~0_combout\) # (\i2|b\(11) $ (\i4|a1|i10|cout~0_combout\)))) # (!\i2|a\(11) & (\i4|a2|i10|cout~0_combout\ & (\i2|b\(11) $ (\i4|a1|i10|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(11),
	datab => \i4|a1|i10|cout~0_combout\,
	datac => \i2|a\(11),
	datad => \i4|a2|i10|cout~0_combout\,
	combout => \i4|a2|i11|cout~0_combout\);

-- Location: LCCOMB_X16_Y21_N16
\i4|a1|i11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i11|cout~0_combout\ = (\i2|b\(10)) # ((\i4|a1|i9|cout~0_combout\) # (\i2|b\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(10),
	datab => \i4|a1|i9|cout~0_combout\,
	datad => \i2|b\(11),
	combout => \i4|a1|i11|cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N12
\i4|a2|i12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i12|s~combout\ = \i2|a\(12) $ (\i2|b\(12) $ (\i4|a2|i11|cout~0_combout\ $ (\i4|a1|i11|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(12),
	datab => \i2|b\(12),
	datac => \i4|a2|i11|cout~0_combout\,
	datad => \i4|a1|i11|cout~0_combout\,
	combout => \i4|a2|i12|s~combout\);

-- Location: LCCOMB_X15_Y23_N10
\i4|s[12]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]~72_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[12]~71_combout\ & (\i2|a\(11))) # (!\i4|s[12]~71_combout\ & ((\i4|a2|i12|s~combout\))))) # (!\i4|s[13]~7_combout\ & (\i4|s[12]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|s[12]~71_combout\,
	datac => \i2|a\(11),
	datad => \i4|a2|i12|s~combout\,
	combout => \i4|s[12]~72_combout\);

-- Location: LCCOMB_X15_Y23_N20
\i4|s[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[12]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[12]~72_combout\)) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[12]~72_combout\,
	datac => \i4|s[1]~5clkctrl_outclk\,
	datad => \i4|s[12]$latch~combout\,
	combout => \i4|s[12]$latch~combout\);

-- Location: LCCOMB_X15_Y21_N4
\i4|a3|i12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i12|cout~0_combout\ = (\i2|b\(12) & \i2|a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(12),
	datac => \i2|a\(12),
	combout => \i4|a3|i12|cout~0_combout\);

-- Location: FF_X15_Y21_N31
\i2|b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[15]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(13));

-- Location: LCCOMB_X16_Y23_N22
\i4|a3|i12|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i12|cout~1_combout\ = (!\i4|s[12]~67_combout\ & ((\i2|b\(11) & ((\i2|a\(11)) # (\i4|a3|i10|cout~0_combout\))) # (!\i2|b\(11) & (\i2|a\(11) & \i4|a3|i10|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(11),
	datab => \i2|a\(11),
	datac => \i4|s[12]~67_combout\,
	datad => \i4|a3|i10|cout~0_combout\,
	combout => \i4|a3|i12|cout~1_combout\);

-- Location: LCCOMB_X15_Y23_N24
\i4|a3|i13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i13|s~combout\ = \i2|b\(13) $ (\i2|a\(13) $ (((\i4|a3|i12|cout~0_combout\) # (\i4|a3|i12|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i12|cout~0_combout\,
	datab => \i2|b\(13),
	datac => \i2|a\(13),
	datad => \i4|a3|i12|cout~1_combout\,
	combout => \i4|a3|i13|s~combout\);

-- Location: LCCOMB_X15_Y22_N22
\i4|s[13]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~74_combout\ = (\i2|b\(13) & (((\i2|a\(13)) # (\i1|op\(0))) # (!\i1|op\(1)))) # (!\i2|b\(13) & (\i2|a\(13) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|b\(13),
	datac => \i2|a\(13),
	datad => \i1|op\(0),
	combout => \i4|s[13]~74_combout\);

-- Location: FF_X15_Y21_N17
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
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(14));

-- Location: LCCOMB_X15_Y22_N20
\i4|s[13]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~73_combout\ = (\i4|s[13]~8_combout\ & (!\i2|b\(13) & (!\i2|a\(13)))) # (!\i4|s[13]~8_combout\ & (((\i2|a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~8_combout\,
	datab => \i2|b\(13),
	datac => \i2|a\(13),
	datad => \i2|a\(14),
	combout => \i4|s[13]~73_combout\);

-- Location: LCCOMB_X15_Y22_N28
\i4|s[13]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~75_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[13]~73_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[13]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~74_combout\,
	datac => \i4|s[13]~11_combout\,
	datad => \i4|s[13]~73_combout\,
	combout => \i4|s[13]~75_combout\);

-- Location: LCCOMB_X16_Y21_N22
\i4|a1|i12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i12|cout~0_combout\ = (\i2|b\(10)) # ((\i2|b\(12)) # ((\i4|a1|i9|cout~0_combout\) # (\i2|b\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(10),
	datab => \i2|b\(12),
	datac => \i4|a1|i9|cout~0_combout\,
	datad => \i2|b\(11),
	combout => \i4|a1|i12|cout~0_combout\);

-- Location: LCCOMB_X15_Y21_N10
\i4|a2|i12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i12|cout~0_combout\ = (\i2|a\(12) & ((\i4|a2|i11|cout~0_combout\) # (\i4|a1|i11|cout~0_combout\ $ (\i2|b\(12))))) # (!\i2|a\(12) & (\i4|a2|i11|cout~0_combout\ & (\i4|a1|i11|cout~0_combout\ $ (\i2|b\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(12),
	datab => \i4|a1|i11|cout~0_combout\,
	datac => \i2|b\(12),
	datad => \i4|a2|i11|cout~0_combout\,
	combout => \i4|a2|i12|cout~0_combout\);

-- Location: LCCOMB_X15_Y21_N12
\i4|a2|i13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i13|s~combout\ = \i2|b\(13) $ (\i4|a1|i12|cout~0_combout\ $ (\i2|a\(13) $ (\i4|a2|i12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(13),
	datab => \i4|a1|i12|cout~0_combout\,
	datac => \i2|a\(13),
	datad => \i4|a2|i12|cout~0_combout\,
	combout => \i4|a2|i13|s~combout\);

-- Location: LCCOMB_X15_Y21_N22
\i4|s[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~76_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\) # (\i4|a2|i13|s~combout\)))) # (!\i4|s[13]~7_combout\ & (\i4|s[13]~75_combout\ & (!\i4|s[13]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~75_combout\,
	datab => \i4|s[13]~7_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a2|i13|s~combout\,
	combout => \i4|s[13]~76_combout\);

-- Location: LCCOMB_X14_Y21_N30
\i4|s[13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]~77_combout\ = (\i4|s[13]~6_combout\ & ((\i4|s[13]~76_combout\ & (\i2|a\(12))) # (!\i4|s[13]~76_combout\ & ((\i4|a3|i13|s~combout\))))) # (!\i4|s[13]~6_combout\ & (((\i4|s[13]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(12),
	datab => \i4|s[13]~6_combout\,
	datac => \i4|a3|i13|s~combout\,
	datad => \i4|s[13]~76_combout\,
	combout => \i4|s[13]~77_combout\);

-- Location: LCCOMB_X14_Y21_N12
\i4|s[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[13]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[13]~77_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]$latch~combout\,
	datac => \i4|s[13]~77_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[13]$latch~combout\);

-- Location: LCCOMB_X15_Y21_N30
\i4|a1|i13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a1|i13|cout~0_combout\ = (\i2|b\(13)) # (\i4|a1|i12|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|b\(13),
	datad => \i4|a1|i12|cout~0_combout\,
	combout => \i4|a1|i13|cout~0_combout\);

-- Location: FF_X15_Y21_N25
\i2|b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[16]~input_o\,
	sload => VCC,
	ena => \i2|b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|b\(14));

-- Location: LCCOMB_X15_Y21_N6
\i4|a2|i13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i13|cout~0_combout\ = (\i2|a\(13) & ((\i4|a2|i12|cout~0_combout\) # (\i2|b\(13) $ (\i4|a1|i12|cout~0_combout\)))) # (!\i2|a\(13) & (\i4|a2|i12|cout~0_combout\ & (\i2|b\(13) $ (\i4|a1|i12|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(13),
	datab => \i4|a1|i12|cout~0_combout\,
	datac => \i2|a\(13),
	datad => \i4|a2|i12|cout~0_combout\,
	combout => \i4|a2|i13|cout~0_combout\);

-- Location: LCCOMB_X15_Y21_N20
\i4|a2|i14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a2|i14|s~combout\ = \i4|a1|i13|cout~0_combout\ $ (\i2|a\(14) $ (\i2|b\(14) $ (\i4|a2|i13|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i13|cout~0_combout\,
	datab => \i2|a\(14),
	datac => \i2|b\(14),
	datad => \i4|a2|i13|cout~0_combout\,
	combout => \i4|a2|i14|s~combout\);

-- Location: LCCOMB_X14_Y23_N26
\i4|s[14]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]~79_combout\ = (\i2|a\(14) & ((\i1|op\(0)) # ((\i2|b\(14)) # (!\i1|op\(1))))) # (!\i2|a\(14) & (\i2|b\(14) & ((\i1|op\(0)) # (!\i1|op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(0),
	datab => \i2|a\(14),
	datac => \i1|op\(1),
	datad => \i2|b\(14),
	combout => \i4|s[14]~79_combout\);

-- Location: FF_X12_Y21_N29
\i2|a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instrucao[17]~input_o\,
	sload => VCC,
	ena => \i2|a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|a\(15));

-- Location: LCCOMB_X14_Y23_N16
\i4|s[14]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]~78_combout\ = (\i4|s[13]~8_combout\ & (((!\i2|a\(14) & !\i2|b\(14))))) # (!\i4|s[13]~8_combout\ & (\i2|a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~8_combout\,
	datab => \i2|a\(15),
	datac => \i2|a\(14),
	datad => \i2|b\(14),
	combout => \i4|s[14]~78_combout\);

-- Location: LCCOMB_X14_Y23_N22
\i4|s[14]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]~80_combout\ = (\i4|s[13]~11_combout\ & ((\i4|s[14]~78_combout\))) # (!\i4|s[13]~11_combout\ & (\i4|s[14]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[14]~79_combout\,
	datab => \i4|s[13]~11_combout\,
	datad => \i4|s[14]~78_combout\,
	combout => \i4|s[14]~80_combout\);

-- Location: LCCOMB_X15_Y23_N6
\i4|a3|i13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i13|cout~0_combout\ = (\i2|b\(13) & ((\i4|a3|i12|cout~0_combout\) # ((\i2|a\(13)) # (\i4|a3|i12|cout~1_combout\)))) # (!\i2|b\(13) & (\i2|a\(13) & ((\i4|a3|i12|cout~0_combout\) # (\i4|a3|i12|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a3|i12|cout~0_combout\,
	datab => \i2|b\(13),
	datac => \i2|a\(13),
	datad => \i4|a3|i12|cout~1_combout\,
	combout => \i4|a3|i13|cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\i4|a3|i14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|a3|i14|s~combout\ = \i2|b\(14) $ (\i2|a\(14) $ (\i4|a3|i13|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(14),
	datac => \i2|a\(14),
	datad => \i4|a3|i13|cout~0_combout\,
	combout => \i4|a3|i14|s~combout\);

-- Location: LCCOMB_X15_Y23_N18
\i4|s[14]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]~81_combout\ = (\i4|s[13]~7_combout\ & (((\i4|s[13]~6_combout\)))) # (!\i4|s[13]~7_combout\ & ((\i4|s[13]~6_combout\ & ((\i4|a3|i14|s~combout\))) # (!\i4|s[13]~6_combout\ & (\i4|s[14]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[13]~7_combout\,
	datab => \i4|s[14]~80_combout\,
	datac => \i4|s[13]~6_combout\,
	datad => \i4|a3|i14|s~combout\,
	combout => \i4|s[14]~81_combout\);

-- Location: LCCOMB_X14_Y21_N8
\i4|s[14]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]~82_combout\ = (\i4|s[13]~7_combout\ & ((\i4|s[14]~81_combout\ & (\i2|a\(13))) # (!\i4|s[14]~81_combout\ & ((\i4|a2|i14|s~combout\))))) # (!\i4|s[13]~7_combout\ & (((\i4|s[14]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(13),
	datab => \i4|s[13]~7_combout\,
	datac => \i4|a2|i14|s~combout\,
	datad => \i4|s[14]~81_combout\,
	combout => \i4|s[14]~82_combout\);

-- Location: LCCOMB_X14_Y21_N6
\i4|s[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[14]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[14]~82_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[14]$latch~combout\,
	datac => \i4|s[14]~82_combout\,
	datad => \i4|s[1]~5clkctrl_outclk\,
	combout => \i4|s[14]$latch~combout\);

-- Location: FF_X15_Y21_N3
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

-- Location: LCCOMB_X15_Y21_N26
\i4|s[15]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~88_combout\ = \i2|b\(15) $ (((\i2|b\(14) & ((\i2|a\(14)) # (\i4|a3|i13|cout~0_combout\))) # (!\i2|b\(14) & (\i2|a\(14) & \i4|a3|i13|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|b\(14),
	datab => \i2|a\(14),
	datac => \i2|b\(15),
	datad => \i4|a3|i13|cout~0_combout\,
	combout => \i4|s[15]~88_combout\);

-- Location: LCCOMB_X14_Y23_N18
\i4|s[15]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~90_combout\ = (\i2|b\(15) & ((\i1|op\(1) & (\i1|op\(2) & !\i2|a\(15))) # (!\i1|op\(1) & ((\i1|op\(2)) # (!\i2|a\(15)))))) # (!\i2|b\(15) & (\i2|a\(15) $ (((\i1|op\(1) & !\i1|op\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i2|b\(15),
	datac => \i1|op\(2),
	datad => \i2|a\(15),
	combout => \i4|s[15]~90_combout\);

-- Location: LCCOMB_X15_Y23_N16
\i4|s[1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~83_combout\ = (\i2|b\(14) & ((\i2|a\(14)) # (\i4|a3|i13|cout~0_combout\))) # (!\i2|b\(14) & (\i2|a\(14) & \i4|a3|i13|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|b\(14),
	datac => \i2|a\(14),
	datad => \i4|a3|i13|cout~0_combout\,
	combout => \i4|s[1]~83_combout\);

-- Location: LCCOMB_X15_Y21_N14
\i4|s[15]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~91_combout\ = \i4|s[15]~90_combout\ $ (((\i4|s[1]~83_combout\ & (\i1|op\(1) $ (!\i1|op\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i4|s[15]~90_combout\,
	datac => \i1|op\(2),
	datad => \i4|s[1]~83_combout\,
	combout => \i4|s[15]~91_combout\);

-- Location: LCCOMB_X15_Y21_N24
\i4|s[1]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[1]~84_combout\ = (\i4|a1|i13|cout~0_combout\ & ((\i2|a\(14) & ((\i4|a2|i13|cout~0_combout\) # (!\i2|b\(14)))) # (!\i2|a\(14) & (!\i2|b\(14) & \i4|a2|i13|cout~0_combout\)))) # (!\i4|a1|i13|cout~0_combout\ & ((\i2|a\(14) & ((\i2|b\(14)) # 
-- (!\i4|a2|i13|cout~0_combout\))) # (!\i2|a\(14) & ((\i4|a2|i13|cout~0_combout\) # (!\i2|b\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|a1|i13|cout~0_combout\,
	datab => \i2|a\(14),
	datac => \i2|b\(14),
	datad => \i4|a2|i13|cout~0_combout\,
	combout => \i4|s[1]~84_combout\);

-- Location: LCCOMB_X15_Y21_N2
\i4|s[15]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~85_combout\ = (\i1|op\(1) & (\i2|a\(15) & (\i2|b\(15)))) # (!\i1|op\(1) & (\i2|a\(15) $ (\i2|b\(15) $ (\i4|s[1]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(15),
	datab => \i1|op\(1),
	datac => \i2|b\(15),
	datad => \i4|s[1]~84_combout\,
	combout => \i4|s[15]~85_combout\);

-- Location: LCCOMB_X15_Y21_N18
\i4|s[15]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~86_combout\ = (\i1|op\(2) & (!\i1|op\(1) & (!\i2|a\(14)))) # (!\i1|op\(2) & (((\i4|s[15]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(2),
	datab => \i1|op\(1),
	datac => \i2|a\(14),
	datad => \i4|s[15]~85_combout\,
	combout => \i4|s[15]~86_combout\);

-- Location: LCCOMB_X15_Y21_N0
\i4|s[15]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~87_combout\ = (\i1|op\(1) & ((\i1|op\(0) & (\i4|s[15]~91_combout\)) # (!\i1|op\(0) & ((\i4|s[15]~86_combout\))))) # (!\i1|op\(1) & ((\i1|op\(0) & ((!\i4|s[15]~86_combout\))) # (!\i1|op\(0) & (\i4|s[15]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|op\(1),
	datab => \i1|op\(0),
	datac => \i4|s[15]~91_combout\,
	datad => \i4|s[15]~86_combout\,
	combout => \i4|s[15]~87_combout\);

-- Location: LCCOMB_X15_Y21_N28
\i4|s[15]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]~89_combout\ = (\i1|op\(3) & (\i2|a\(15) $ ((\i4|s[15]~88_combout\)))) # (!\i1|op\(3) & (((\i4|s[15]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|a\(15),
	datab => \i1|op\(3),
	datac => \i4|s[15]~88_combout\,
	datad => \i4|s[15]~87_combout\,
	combout => \i4|s[15]~89_combout\);

-- Location: LCCOMB_X15_Y21_N16
\i4|s[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s[15]$latch~combout\ = (GLOBAL(\i4|s[1]~5clkctrl_outclk\) & ((\i4|s[15]~89_combout\))) # (!GLOBAL(\i4|s[1]~5clkctrl_outclk\) & (\i4|s[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|s[1]~5clkctrl_outclk\,
	datab => \i4|s[15]$latch~combout\,
	datad => \i4|s[15]~89_combout\,
	combout => \i4|s[15]$latch~combout\);

-- Location: LCCOMB_X10_Y23_N4
\i2|valor_banco_regs_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out~0_combout\ = (!\i2|pc\(2) & (\i2|pc\(1) $ (\i2|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|pc\(2),
	datac => \i2|pc\(1),
	datad => \i2|pc\(0),
	combout => \i2|valor_banco_regs_out~0_combout\);

-- Location: IOIBUF_X9_Y29_N29
\instrucao[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(0),
	o => \instrucao[0]~input_o\);

-- Location: LCCOMB_X10_Y23_N24
\i2|seletor[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor[1]~1_combout\ = (!\i2|pc\(2) & (!\i2|pc\(0) & ((\i2|pc\(1)) # (\bt2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|pc\(2),
	datab => \i2|pc\(0),
	datac => \i2|pc\(1),
	datad => \bt2~input_o\,
	combout => \i2|seletor[1]~1_combout\);

-- Location: LCCOMB_X9_Y23_N16
\i2|seletor~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor~6_combout\ = (\i2|valor_banco_regs_out~0_combout\ & (((\i2|seletor[1]~1_combout\)))) # (!\i2|valor_banco_regs_out~0_combout\ & ((\i2|seletor[1]~1_combout\ & ((\instrucao[8]~input_o\))) # (!\i2|seletor[1]~1_combout\ & 
-- (\instrucao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|valor_banco_regs_out~0_combout\,
	datab => \instrucao[0]~input_o\,
	datac => \instrucao[8]~input_o\,
	datad => \i2|seletor[1]~1_combout\,
	combout => \i2|seletor~6_combout\);

-- Location: LCCOMB_X9_Y23_N28
\i2|seletor~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor~7_combout\ = (\i2|valor_banco_regs_out~0_combout\ & ((\i2|seletor~6_combout\ & (\instrucao[11]~input_o\)) # (!\i2|seletor~6_combout\ & ((\instrucao[5]~input_o\))))) # (!\i2|valor_banco_regs_out~0_combout\ & (((\i2|seletor~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|valor_banco_regs_out~0_combout\,
	datab => \instrucao[11]~input_o\,
	datac => \instrucao[5]~input_o\,
	datad => \i2|seletor~6_combout\,
	combout => \i2|seletor~7_combout\);

-- Location: LCCOMB_X10_Y23_N12
\i2|seletor[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor[1]~4_combout\ = (\bt1~input_o\) # ((\i2|Equal2~1_combout\) # ((\i2|process_0~0_combout\) # (\i2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \i2|Equal2~1_combout\,
	datac => \i2|process_0~0_combout\,
	datad => \i2|Equal2~0_combout\,
	combout => \i2|seletor[1]~4_combout\);

-- Location: FF_X9_Y23_N29
\i2|seletor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|seletor~7_combout\,
	ena => \i2|seletor[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|seletor\(0));

-- Location: IOIBUF_X0_Y23_N8
\instrucao[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrucao(1),
	o => \instrucao[1]~input_o\);

-- Location: LCCOMB_X10_Y23_N18
\i2|seletor~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor~2_combout\ = (\i2|valor_banco_regs_out~0_combout\ & (((\instrucao[6]~input_o\) # (\i2|seletor[1]~1_combout\)))) # (!\i2|valor_banco_regs_out~0_combout\ & (\instrucao[1]~input_o\ & ((!\i2|seletor[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[1]~input_o\,
	datab => \i2|valor_banco_regs_out~0_combout\,
	datac => \instrucao[6]~input_o\,
	datad => \i2|seletor[1]~1_combout\,
	combout => \i2|seletor~2_combout\);

-- Location: LCCOMB_X10_Y23_N30
\i2|seletor~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor~3_combout\ = (\i2|seletor~2_combout\ & ((\instrucao[12]~input_o\) # ((!\i2|seletor[1]~1_combout\)))) # (!\i2|seletor~2_combout\ & (((\instrucao[9]~input_o\ & \i2|seletor[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[12]~input_o\,
	datab => \i2|seletor~2_combout\,
	datac => \instrucao[9]~input_o\,
	datad => \i2|seletor[1]~1_combout\,
	combout => \i2|seletor~3_combout\);

-- Location: FF_X10_Y23_N31
\i2|seletor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|seletor~3_combout\,
	ena => \i2|seletor[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|seletor\(1));

-- Location: FF_X11_Y21_N1
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

-- Location: LCCOMB_X11_Y23_N8
\i2|valor_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~0_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[0]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[2]~input_o\,
	datad => \i4|s[0]$latch~combout\,
	combout => \i2|valor_out~0_combout\);

-- Location: LCCOMB_X10_Y23_N22
\i2|valor_out[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out[5]~1_combout\ = (\bt1~input_o\) # ((!\i2|pc\(2) & (\i2|pc\(1) & !\i2|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|pc\(2),
	datab => \bt1~input_o\,
	datac => \i2|pc\(1),
	datad => \i2|pc\(0),
	combout => \i2|valor_out[5]~1_combout\);

-- Location: FF_X11_Y23_N9
\i2|valor_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~0_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(0));

-- Location: LCCOMB_X10_Y21_N20
\i3|r1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~0_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(0),
	combout => \i3|r1|q~0_combout\);

-- Location: LCCOMB_X10_Y24_N14
\i3|r8|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[0]~feeder_combout\ = \i3|r1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~0_combout\,
	combout => \i3|r8|q[0]~feeder_combout\);

-- Location: LCCOMB_X11_Y23_N22
\i2|seletor~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor~5_combout\ = (\i2|process_0~0_combout\ & (((\instrucao[10]~input_o\)))) # (!\i2|process_0~0_combout\ & (!\bt1~input_o\ & ((\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \instrucao[10]~input_o\,
	datac => \i2|process_0~0_combout\,
	datad => \i2|seletor\(2),
	combout => \i2|seletor~5_combout\);

-- Location: LCCOMB_X10_Y23_N0
\i2|seletor[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|seletor[2]~0_combout\ = (\i2|Equal2~0_combout\ & (\instrucao[7]~input_o\)) # (!\i2|Equal2~0_combout\ & ((\i2|seletor~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[7]~input_o\,
	datab => \i2|Equal2~0_combout\,
	datad => \i2|seletor~5_combout\,
	combout => \i2|seletor[2]~0_combout\);

-- Location: FF_X10_Y23_N1
\i2|seletor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|seletor[2]~0_combout\,
	asdata => \instrucao[13]~input_o\,
	sload => \i2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|seletor\(2));

-- Location: LCCOMB_X11_Y21_N2
\i3|registrador_escolhido~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido~4_combout\ = (\i2|seletor\(1) & (\i2|seletor\(0) & \i2|seletor\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datac => \i2|seletor\(0),
	datad => \i2|seletor\(2),
	combout => \i3|registrador_escolhido~4_combout\);

-- Location: FF_X11_Y21_N3
\i3|registrador_escolhido[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido~4_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(7));

-- Location: LCCOMB_X11_Y21_N12
\i3|r8|q[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[10]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(7),
	combout => \i3|r8|q[10]~0_combout\);

-- Location: FF_X10_Y24_N15
\i3|r8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[0]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(0));

-- Location: LCCOMB_X11_Y21_N0
\i3|registrador_escolhido[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[3]~0_combout\ = (\i2|seletor\(0) & (\bt1~input_o\ & !\i2|seletor\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \bt1~input_o\,
	datad => \i2|seletor\(2),
	combout => \i3|registrador_escolhido[3]~0_combout\);

-- Location: LCCOMB_X11_Y21_N10
\i3|registrador_escolhido[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[3]~1_combout\ = (\i2|seletor\(1) & ((\i3|registrador_escolhido[3]~0_combout\) # ((!\bt1~input_o\ & \i3|registrador_escolhido\(3))))) # (!\i2|seletor\(1) & (!\bt1~input_o\ & (\i3|registrador_escolhido\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \bt1~input_o\,
	datac => \i3|registrador_escolhido\(3),
	datad => \i3|registrador_escolhido[3]~0_combout\,
	combout => \i3|registrador_escolhido[3]~1_combout\);

-- Location: FF_X11_Y21_N11
\i3|registrador_escolhido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(3));

-- Location: LCCOMB_X11_Y21_N8
\i3|r4|q[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[13]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(3),
	combout => \i3|r4|q[13]~0_combout\);

-- Location: FF_X9_Y24_N13
\i3|r4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~0_combout\,
	sload => VCC,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(0));

-- Location: LCCOMB_X10_Y24_N0
\i3|r6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r6|q[0]~feeder_combout\ = \i3|r1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~0_combout\,
	combout => \i3|r6|q[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y21_N0
\i3|registrador_escolhido~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido~2_combout\ = (!\i2|seletor\(1) & (\i2|seletor\(2) & \i2|seletor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(1),
	datac => \i2|seletor\(2),
	datad => \i2|seletor\(0),
	combout => \i3|registrador_escolhido~2_combout\);

-- Location: FF_X12_Y21_N1
\i3|registrador_escolhido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido~2_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(5));

-- Location: LCCOMB_X12_Y21_N30
\i3|r6|q[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r6|q[9]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(5),
	combout => \i3|r6|q[9]~0_combout\);

-- Location: FF_X10_Y24_N1
\i3|r6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r6|q[0]~feeder_combout\,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(0));

-- Location: LCCOMB_X11_Y21_N14
\i3|registrador_escolhido[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[1]~3_combout\ = (\i2|seletor\(1) & (!\bt1~input_o\ & (\i3|registrador_escolhido\(1)))) # (!\i2|seletor\(1) & ((\i3|registrador_escolhido[3]~0_combout\) # ((!\bt1~input_o\ & \i3|registrador_escolhido\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \bt1~input_o\,
	datac => \i3|registrador_escolhido\(1),
	datad => \i3|registrador_escolhido[3]~0_combout\,
	combout => \i3|registrador_escolhido[1]~3_combout\);

-- Location: FF_X11_Y21_N15
\i3|registrador_escolhido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(1));

-- Location: LCCOMB_X11_Y21_N4
\i3|r2|q[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r2|q[14]~0_combout\ = (\i3|registrador_escolhido\(1)) # (\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_escolhido\(1),
	datac => \i3|registrador_clear\(0),
	combout => \i3|r2|q[14]~0_combout\);

-- Location: FF_X9_Y24_N27
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
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(0));

-- Location: LCCOMB_X9_Y24_N26
\i3|saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~0_combout\ = (\i2|seletor\(2) & ((\i3|r6|q\(0)) # ((\i2|seletor\(1))))) # (!\i2|seletor\(2) & (((\i3|r2|q\(0) & !\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r6|q\(0),
	datab => \i2|seletor\(2),
	datac => \i3|r2|q\(0),
	datad => \i2|seletor\(1),
	combout => \i3|saida~0_combout\);

-- Location: LCCOMB_X9_Y24_N12
\i3|saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~1_combout\ = (\i2|seletor\(1) & ((\i3|saida~0_combout\ & (\i3|r8|q\(0))) # (!\i3|saida~0_combout\ & ((\i3|r4|q\(0)))))) # (!\i2|seletor\(1) & (((\i3|saida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r8|q\(0),
	datac => \i3|r4|q\(0),
	datad => \i3|saida~0_combout\,
	combout => \i3|saida~1_combout\);

-- Location: LCCOMB_X11_Y21_N6
\i3|registrador_escolhido[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[6]~9_combout\ = (\i2|seletor\(1) & (\bt1~input_o\ & (!\i2|seletor\(0) & \i2|seletor\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \bt1~input_o\,
	datac => \i2|seletor\(0),
	datad => \i2|seletor\(2),
	combout => \i3|registrador_escolhido[6]~9_combout\);

-- Location: LCCOMB_X11_Y21_N26
\i3|registrador_escolhido[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[6]~10_combout\ = (\i3|registrador_escolhido[6]~9_combout\) # ((!\bt1~input_o\ & \i3|registrador_escolhido\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datac => \i3|registrador_escolhido\(6),
	datad => \i3|registrador_escolhido[6]~9_combout\,
	combout => \i3|registrador_escolhido[6]~10_combout\);

-- Location: FF_X11_Y21_N27
\i3|registrador_escolhido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(6));

-- Location: LCCOMB_X11_Y21_N20
\i3|r7|q[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r7|q[14]~0_combout\ = (\i3|registrador_escolhido\(6)) # (\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|registrador_escolhido\(6),
	datac => \i3|registrador_clear\(0),
	combout => \i3|r7|q[14]~0_combout\);

-- Location: FF_X10_Y21_N21
\i3|r7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~0_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(0));

-- Location: LCCOMB_X12_Y21_N20
\i3|registrador_escolhido~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido~5_combout\ = (\i2|seletor\(1) & (!\i2|seletor\(2) & !\i2|seletor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(1),
	datac => \i2|seletor\(2),
	datad => \i2|seletor\(0),
	combout => \i3|registrador_escolhido~5_combout\);

-- Location: FF_X12_Y21_N21
\i3|registrador_escolhido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido~5_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(2));

-- Location: LCCOMB_X12_Y21_N2
\i3|r3|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r3|q[3]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(2),
	combout => \i3|r3|q[3]~0_combout\);

-- Location: FF_X11_Y24_N25
\i3|r3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~0_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(0));

-- Location: LCCOMB_X12_Y22_N28
\i3|r5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[0]~feeder_combout\ = \i3|r1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~0_combout\,
	combout => \i3|r5|q[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y21_N16
\i3|registrador_escolhido~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido~6_combout\ = (!\i2|seletor\(1) & (\i2|seletor\(2) & !\i2|seletor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(1),
	datac => \i2|seletor\(2),
	datad => \i2|seletor\(0),
	combout => \i3|registrador_escolhido~6_combout\);

-- Location: FF_X12_Y21_N17
\i3|registrador_escolhido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido~6_combout\,
	ena => \bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(4));

-- Location: LCCOMB_X12_Y21_N14
\i3|r5|q[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[9]~0_combout\ = (\i3|registrador_clear\(0)) # (\i3|registrador_escolhido\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i3|registrador_escolhido\(4),
	combout => \i3|r5|q[9]~0_combout\);

-- Location: FF_X12_Y22_N29
\i3|r5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[0]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(0));

-- Location: LCCOMB_X11_Y21_N28
\i3|registrador_escolhido[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[0]~7_combout\ = (!\i2|seletor\(1) & (\bt1~input_o\ & (!\i2|seletor\(0) & !\i2|seletor\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \bt1~input_o\,
	datac => \i2|seletor\(0),
	datad => \i2|seletor\(2),
	combout => \i3|registrador_escolhido[0]~7_combout\);

-- Location: LCCOMB_X11_Y21_N18
\i3|registrador_escolhido[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|registrador_escolhido[0]~8_combout\ = (\i3|registrador_escolhido[0]~7_combout\) # ((\i3|registrador_escolhido\(0) & !\bt1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_escolhido[0]~7_combout\,
	datac => \i3|registrador_escolhido\(0),
	datad => \bt1~input_o\,
	combout => \i3|registrador_escolhido[0]~8_combout\);

-- Location: FF_X11_Y21_N19
\i3|registrador_escolhido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|registrador_escolhido[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|registrador_escolhido\(0));

-- Location: LCCOMB_X11_Y21_N16
\i3|r1|q[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q[10]~1_combout\ = (\i3|registrador_escolhido\(0)) # (\i3|registrador_clear\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_escolhido\(0),
	datac => \i3|registrador_clear\(0),
	combout => \i3|r1|q[10]~1_combout\);

-- Location: FF_X11_Y22_N1
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(0));

-- Location: LCCOMB_X11_Y22_N0
\i3|saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~2_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(0))) # (!\i2|seletor\(2) & ((\i3|r1|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(0),
	datac => \i3|r1|q\(0),
	datad => \i2|seletor\(2),
	combout => \i3|saida~2_combout\);

-- Location: LCCOMB_X11_Y24_N24
\i3|saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~3_combout\ = (\i2|seletor\(1) & ((\i3|saida~2_combout\ & (\i3|r7|q\(0))) # (!\i3|saida~2_combout\ & ((\i3|r3|q\(0)))))) # (!\i2|seletor\(1) & (((\i3|saida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r7|q\(0),
	datac => \i3|r3|q\(0),
	datad => \i3|saida~2_combout\,
	combout => \i3|saida~3_combout\);

-- Location: LCCOMB_X11_Y24_N28
\i3|saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~4_combout\ = (\i2|seletor\(0) & (\i3|saida~1_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~1_combout\,
	datad => \i3|saida~3_combout\,
	combout => \i3|saida~4_combout\);

-- Location: FF_X11_Y24_N29
\i3|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~4_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(0));

-- Location: LCCOMB_X1_Y23_N16
\i2|valor_banco_regs_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[0]~feeder_combout\ = \i3|saida\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(0),
	combout => \i2|valor_banco_regs_out[0]~feeder_combout\);

-- Location: FF_X1_Y23_N17
\i2|valor_banco_regs_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[0]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(0));

-- Location: LCCOMB_X11_Y23_N16
\i2|valor_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~2_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[1]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[3]~input_o\,
	datad => \i4|s[1]$latch~combout\,
	combout => \i2|valor_out~2_combout\);

-- Location: FF_X11_Y23_N17
\i2|valor_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~2_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(1));

-- Location: LCCOMB_X10_Y21_N2
\i3|r1|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~2_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(1),
	combout => \i3|r1|q~2_combout\);

-- Location: LCCOMB_X10_Y24_N18
\i3|r8|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~2_combout\,
	combout => \i3|r8|q[1]~feeder_combout\);

-- Location: FF_X10_Y24_N19
\i3|r8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[1]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(1));

-- Location: FF_X9_Y24_N21
\i3|r4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~2_combout\,
	sload => VCC,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(1));

-- Location: LCCOMB_X10_Y24_N12
\i3|r6|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r6|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~2_combout\,
	combout => \i3|r6|q[1]~feeder_combout\);

-- Location: FF_X10_Y24_N13
\i3|r6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r6|q[1]~feeder_combout\,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(1));

-- Location: FF_X9_Y24_N7
\i3|r2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~2_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(1));

-- Location: LCCOMB_X9_Y24_N6
\i3|saida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~5_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r6|q\(1))) # (!\i2|seletor\(2) & ((\i3|r2|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r6|q\(1),
	datac => \i3|r2|q\(1),
	datad => \i2|seletor\(2),
	combout => \i3|saida~5_combout\);

-- Location: LCCOMB_X9_Y24_N20
\i3|saida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~6_combout\ = (\i2|seletor\(1) & ((\i3|saida~5_combout\ & (\i3|r8|q\(1))) # (!\i3|saida~5_combout\ & ((\i3|r4|q\(1)))))) # (!\i2|seletor\(1) & (((\i3|saida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r8|q\(1),
	datac => \i3|r4|q\(1),
	datad => \i3|saida~5_combout\,
	combout => \i3|saida~6_combout\);

-- Location: FF_X10_Y21_N3
\i3|r7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~2_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(1));

-- Location: LCCOMB_X11_Y22_N14
\i3|r5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[1]~feeder_combout\ = \i3|r1|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~2_combout\,
	combout => \i3|r5|q[1]~feeder_combout\);

-- Location: FF_X11_Y22_N15
\i3|r5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[1]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(1));

-- Location: FF_X11_Y22_N25
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(1));

-- Location: LCCOMB_X11_Y22_N24
\i3|saida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~7_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(1))) # (!\i2|seletor\(2) & ((\i3|r1|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(1),
	datac => \i3|r1|q\(1),
	datad => \i2|seletor\(2),
	combout => \i3|saida~7_combout\);

-- Location: FF_X11_Y24_N3
\i3|r3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~2_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(1));

-- Location: LCCOMB_X11_Y24_N2
\i3|saida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~8_combout\ = (\i3|saida~7_combout\ & ((\i3|r7|q\(1)) # ((!\i2|seletor\(1))))) # (!\i3|saida~7_combout\ & (((\i3|r3|q\(1) & \i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(1),
	datab => \i3|saida~7_combout\,
	datac => \i3|r3|q\(1),
	datad => \i2|seletor\(1),
	combout => \i3|saida~8_combout\);

-- Location: LCCOMB_X11_Y24_N10
\i3|saida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~9_combout\ = (\i2|seletor\(0) & (\i3|saida~6_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~6_combout\,
	datad => \i3|saida~8_combout\,
	combout => \i3|saida~9_combout\);

-- Location: FF_X11_Y24_N11
\i3|saida[1]\ : dffeas
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
	q => \i3|saida\(1));

-- Location: LCCOMB_X3_Y23_N0
\i2|valor_banco_regs_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[1]~feeder_combout\ = \i3|saida\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(1),
	combout => \i2|valor_banco_regs_out[1]~feeder_combout\);

-- Location: FF_X3_Y23_N1
\i2|valor_banco_regs_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[1]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(1));

-- Location: LCCOMB_X11_Y23_N30
\i2|valor_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~3_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[2]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[4]~input_o\,
	datad => \i4|s[2]$latch~combout\,
	combout => \i2|valor_out~3_combout\);

-- Location: FF_X11_Y23_N31
\i2|valor_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~3_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(2));

-- Location: LCCOMB_X10_Y21_N0
\i3|r1|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~3_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_clear\(0),
	datac => \i2|valor_out\(2),
	combout => \i3|r1|q~3_combout\);

-- Location: FF_X10_Y21_N1
\i3|r7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~3_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(2));

-- Location: FF_X11_Y24_N9
\i3|r3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~3_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(2));

-- Location: LCCOMB_X12_Y22_N14
\i3|r5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~3_combout\,
	combout => \i3|r5|q[2]~feeder_combout\);

-- Location: FF_X12_Y22_N15
\i3|r5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[2]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(2));

-- Location: FF_X11_Y22_N31
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(2));

-- Location: LCCOMB_X11_Y22_N30
\i3|saida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~12_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(2))) # (!\i2|seletor\(2) & ((\i3|r1|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(2),
	datac => \i3|r1|q\(2),
	datad => \i2|seletor\(2),
	combout => \i3|saida~12_combout\);

-- Location: LCCOMB_X11_Y24_N8
\i3|saida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~13_combout\ = (\i2|seletor\(1) & ((\i3|saida~12_combout\ & (\i3|r7|q\(2))) # (!\i3|saida~12_combout\ & ((\i3|r3|q\(2)))))) # (!\i2|seletor\(1) & (((\i3|saida~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(2),
	datad => \i3|saida~12_combout\,
	combout => \i3|saida~13_combout\);

-- Location: LCCOMB_X10_Y24_N26
\i3|r8|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~3_combout\,
	combout => \i3|r8|q[2]~feeder_combout\);

-- Location: FF_X10_Y24_N27
\i3|r8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[2]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(2));

-- Location: FF_X10_Y24_N25
\i3|r6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~3_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(2));

-- Location: LCCOMB_X9_Y24_N8
\i3|r4|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[2]~feeder_combout\ = \i3|r1|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~3_combout\,
	combout => \i3|r4|q[2]~feeder_combout\);

-- Location: FF_X9_Y24_N9
\i3|r4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[2]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(2));

-- Location: FF_X9_Y24_N23
\i3|r2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~3_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(2));

-- Location: LCCOMB_X9_Y24_N22
\i3|saida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~10_combout\ = (\i2|seletor\(1) & ((\i3|r4|q\(2)) # ((\i2|seletor\(2))))) # (!\i2|seletor\(1) & (((\i3|r2|q\(2) & !\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(2),
	datac => \i3|r2|q\(2),
	datad => \i2|seletor\(2),
	combout => \i3|saida~10_combout\);

-- Location: LCCOMB_X10_Y24_N24
\i3|saida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~11_combout\ = (\i2|seletor\(2) & ((\i3|saida~10_combout\ & (\i3|r8|q\(2))) # (!\i3|saida~10_combout\ & ((\i3|r6|q\(2)))))) # (!\i2|seletor\(2) & (((\i3|saida~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r8|q\(2),
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(2),
	datad => \i3|saida~10_combout\,
	combout => \i3|saida~11_combout\);

-- Location: LCCOMB_X11_Y24_N0
\i3|saida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~14_combout\ = (\i2|seletor\(0) & ((\i3|saida~11_combout\))) # (!\i2|seletor\(0) & (\i3|saida~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~13_combout\,
	datad => \i3|saida~11_combout\,
	combout => \i3|saida~14_combout\);

-- Location: FF_X11_Y24_N1
\i3|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~14_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(2));

-- Location: LCCOMB_X1_Y23_N14
\i2|valor_banco_regs_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[2]~feeder_combout\ = \i3|saida\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(2),
	combout => \i2|valor_banco_regs_out[2]~feeder_combout\);

-- Location: FF_X1_Y23_N15
\i2|valor_banco_regs_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[2]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(2));

-- Location: LCCOMB_X14_Y21_N26
\i2|valor_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~4_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[3]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[5]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[3]$latch~combout\,
	combout => \i2|valor_out~4_combout\);

-- Location: FF_X14_Y21_N27
\i2|valor_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~4_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(3));

-- Location: LCCOMB_X10_Y21_N10
\i3|r1|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~4_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(3),
	combout => \i3|r1|q~4_combout\);

-- Location: FF_X10_Y21_N11
\i3|r7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~4_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(3));

-- Location: FF_X11_Y24_N31
\i3|r3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~4_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(3));

-- Location: LCCOMB_X12_Y22_N16
\i3|r5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~4_combout\,
	combout => \i3|r5|q[3]~feeder_combout\);

-- Location: FF_X12_Y22_N17
\i3|r5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[3]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(3));

-- Location: FF_X11_Y22_N13
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(3));

-- Location: LCCOMB_X11_Y22_N12
\i3|saida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~17_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(3))) # (!\i2|seletor\(2) & ((\i3|r1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(3),
	datac => \i3|r1|q\(3),
	datad => \i2|seletor\(2),
	combout => \i3|saida~17_combout\);

-- Location: LCCOMB_X11_Y24_N30
\i3|saida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~18_combout\ = (\i2|seletor\(1) & ((\i3|saida~17_combout\ & (\i3|r7|q\(3))) # (!\i3|saida~17_combout\ & ((\i3|r3|q\(3)))))) # (!\i2|seletor\(1) & (((\i3|saida~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r7|q\(3),
	datac => \i3|r3|q\(3),
	datad => \i3|saida~17_combout\,
	combout => \i3|saida~18_combout\);

-- Location: LCCOMB_X10_Y24_N2
\i3|r8|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~4_combout\,
	combout => \i3|r8|q[3]~feeder_combout\);

-- Location: FF_X10_Y24_N3
\i3|r8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[3]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(3));

-- Location: FF_X10_Y24_N9
\i3|r6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~4_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(3));

-- Location: LCCOMB_X9_Y24_N24
\i3|r4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[3]~feeder_combout\ = \i3|r1|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~4_combout\,
	combout => \i3|r4|q[3]~feeder_combout\);

-- Location: FF_X9_Y24_N25
\i3|r4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[3]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(3));

-- Location: FF_X9_Y24_N19
\i3|r2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~4_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(3));

-- Location: LCCOMB_X9_Y24_N18
\i3|saida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~15_combout\ = (\i2|seletor\(1) & ((\i3|r4|q\(3)) # ((\i2|seletor\(2))))) # (!\i2|seletor\(1) & (((\i3|r2|q\(3) & !\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(3),
	datac => \i3|r2|q\(3),
	datad => \i2|seletor\(2),
	combout => \i3|saida~15_combout\);

-- Location: LCCOMB_X10_Y24_N8
\i3|saida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~16_combout\ = (\i2|seletor\(2) & ((\i3|saida~15_combout\ & (\i3|r8|q\(3))) # (!\i3|saida~15_combout\ & ((\i3|r6|q\(3)))))) # (!\i2|seletor\(2) & (((\i3|saida~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(3),
	datac => \i3|r6|q\(3),
	datad => \i3|saida~15_combout\,
	combout => \i3|saida~16_combout\);

-- Location: LCCOMB_X11_Y24_N14
\i3|saida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~19_combout\ = (\i2|seletor\(0) & ((\i3|saida~16_combout\))) # (!\i2|seletor\(0) & (\i3|saida~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~18_combout\,
	datad => \i3|saida~16_combout\,
	combout => \i3|saida~19_combout\);

-- Location: FF_X11_Y24_N15
\i3|saida[3]\ : dffeas
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
	q => \i3|saida\(3));

-- Location: LCCOMB_X7_Y24_N0
\i2|valor_banco_regs_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[3]~feeder_combout\ = \i3|saida\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|saida\(3),
	combout => \i2|valor_banco_regs_out[3]~feeder_combout\);

-- Location: FF_X7_Y24_N1
\i2|valor_banco_regs_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[3]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(3));

-- Location: LCCOMB_X14_Y21_N28
\i2|valor_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~5_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[4]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[6]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[4]$latch~combout\,
	combout => \i2|valor_out~5_combout\);

-- Location: FF_X14_Y21_N29
\i2|valor_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~5_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(4));

-- Location: LCCOMB_X10_Y21_N16
\i3|r1|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~5_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(4),
	combout => \i3|r1|q~5_combout\);

-- Location: FF_X10_Y21_N17
\i3|r7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~5_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(4));

-- Location: FF_X11_Y24_N5
\i3|r3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~5_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(4));

-- Location: LCCOMB_X12_Y22_N6
\i3|r5|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[4]~feeder_combout\ = \i3|r1|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~5_combout\,
	combout => \i3|r5|q[4]~feeder_combout\);

-- Location: FF_X12_Y22_N7
\i3|r5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[4]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(4));

-- Location: FF_X11_Y22_N7
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(4));

-- Location: LCCOMB_X11_Y22_N6
\i3|saida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~22_combout\ = (\i2|seletor\(2) & ((\i3|r5|q\(4)) # ((\i2|seletor\(1))))) # (!\i2|seletor\(2) & (((\i3|r1|q\(4) & !\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r5|q\(4),
	datab => \i2|seletor\(2),
	datac => \i3|r1|q\(4),
	datad => \i2|seletor\(1),
	combout => \i3|saida~22_combout\);

-- Location: LCCOMB_X11_Y24_N4
\i3|saida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~23_combout\ = (\i2|seletor\(1) & ((\i3|saida~22_combout\ & (\i3|r7|q\(4))) # (!\i3|saida~22_combout\ & ((\i3|r3|q\(4)))))) # (!\i2|seletor\(1) & (((\i3|saida~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r7|q\(4),
	datac => \i3|r3|q\(4),
	datad => \i3|saida~22_combout\,
	combout => \i3|saida~23_combout\);

-- Location: LCCOMB_X10_Y24_N6
\i3|r8|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[4]~feeder_combout\ = \i3|r1|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~5_combout\,
	combout => \i3|r8|q[4]~feeder_combout\);

-- Location: FF_X10_Y24_N7
\i3|r8|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[4]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(4));

-- Location: FF_X10_Y24_N21
\i3|r6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~5_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(4));

-- Location: LCCOMB_X9_Y24_N28
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

-- Location: FF_X9_Y24_N29
\i3|r4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[4]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(4));

-- Location: FF_X9_Y24_N11
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
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(4));

-- Location: LCCOMB_X9_Y24_N10
\i3|saida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~20_combout\ = (\i2|seletor\(2) & (((\i2|seletor\(1))))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & (\i3|r4|q\(4))) # (!\i2|seletor\(1) & ((\i3|r2|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r4|q\(4),
	datab => \i2|seletor\(2),
	datac => \i3|r2|q\(4),
	datad => \i2|seletor\(1),
	combout => \i3|saida~20_combout\);

-- Location: LCCOMB_X10_Y24_N20
\i3|saida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~21_combout\ = (\i2|seletor\(2) & ((\i3|saida~20_combout\ & (\i3|r8|q\(4))) # (!\i3|saida~20_combout\ & ((\i3|r6|q\(4)))))) # (!\i2|seletor\(2) & (((\i3|saida~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r8|q\(4),
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(4),
	datad => \i3|saida~20_combout\,
	combout => \i3|saida~21_combout\);

-- Location: LCCOMB_X11_Y24_N20
\i3|saida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~24_combout\ = (\i2|seletor\(0) & ((\i3|saida~21_combout\))) # (!\i2|seletor\(0) & (\i3|saida~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~23_combout\,
	datad => \i3|saida~21_combout\,
	combout => \i3|saida~24_combout\);

-- Location: FF_X11_Y24_N21
\i3|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~24_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(4));

-- Location: LCCOMB_X1_Y23_N0
\i2|valor_banco_regs_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[4]~feeder_combout\ = \i3|saida\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(4),
	combout => \i2|valor_banco_regs_out[4]~feeder_combout\);

-- Location: FF_X1_Y23_N1
\i2|valor_banco_regs_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[4]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(4));

-- Location: LCCOMB_X11_Y23_N4
\i2|valor_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~6_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[5]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[7]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[5]$latch~combout\,
	combout => \i2|valor_out~6_combout\);

-- Location: FF_X11_Y23_N5
\i2|valor_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~6_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(5));

-- Location: LCCOMB_X10_Y21_N26
\i3|r1|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~6_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_clear\(0),
	datac => \i2|valor_out\(5),
	combout => \i3|r1|q~6_combout\);

-- Location: LCCOMB_X10_Y24_N30
\i3|r8|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~6_combout\,
	combout => \i3|r8|q[5]~feeder_combout\);

-- Location: FF_X10_Y24_N31
\i3|r8|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[5]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(5));

-- Location: FF_X10_Y24_N17
\i3|r6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~6_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(5));

-- Location: LCCOMB_X9_Y24_N4
\i3|r4|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~6_combout\,
	combout => \i3|r4|q[5]~feeder_combout\);

-- Location: FF_X9_Y24_N5
\i3|r4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[5]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(5));

-- Location: FF_X9_Y24_N3
\i3|r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~6_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(5));

-- Location: LCCOMB_X9_Y24_N2
\i3|saida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~25_combout\ = (\i2|seletor\(1) & ((\i3|r4|q\(5)) # ((\i2|seletor\(2))))) # (!\i2|seletor\(1) & (((\i3|r2|q\(5) & !\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(5),
	datac => \i3|r2|q\(5),
	datad => \i2|seletor\(2),
	combout => \i3|saida~25_combout\);

-- Location: LCCOMB_X10_Y24_N16
\i3|saida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~26_combout\ = (\i2|seletor\(2) & ((\i3|saida~25_combout\ & (\i3|r8|q\(5))) # (!\i3|saida~25_combout\ & ((\i3|r6|q\(5)))))) # (!\i2|seletor\(2) & (((\i3|saida~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r8|q\(5),
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(5),
	datad => \i3|saida~25_combout\,
	combout => \i3|saida~26_combout\);

-- Location: FF_X10_Y21_N27
\i3|r7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~6_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(5));

-- Location: FF_X11_Y24_N19
\i3|r3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~6_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(5));

-- Location: LCCOMB_X12_Y22_N4
\i3|r5|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[5]~feeder_combout\ = \i3|r1|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~6_combout\,
	combout => \i3|r5|q[5]~feeder_combout\);

-- Location: FF_X12_Y22_N5
\i3|r5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[5]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(5));

-- Location: FF_X11_Y22_N17
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(5));

-- Location: LCCOMB_X11_Y22_N16
\i3|saida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~27_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(5))) # (!\i2|seletor\(2) & ((\i3|r1|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(5),
	datac => \i3|r1|q\(5),
	datad => \i2|seletor\(2),
	combout => \i3|saida~27_combout\);

-- Location: LCCOMB_X11_Y24_N18
\i3|saida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~28_combout\ = (\i2|seletor\(1) & ((\i3|saida~27_combout\ & (\i3|r7|q\(5))) # (!\i3|saida~27_combout\ & ((\i3|r3|q\(5)))))) # (!\i2|seletor\(1) & (((\i3|saida~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(5),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(5),
	datad => \i3|saida~27_combout\,
	combout => \i3|saida~28_combout\);

-- Location: LCCOMB_X11_Y24_N26
\i3|saida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~29_combout\ = (\i2|seletor\(0) & (\i3|saida~26_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~26_combout\,
	datad => \i3|saida~28_combout\,
	combout => \i3|saida~29_combout\);

-- Location: FF_X11_Y24_N27
\i3|saida[5]\ : dffeas
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
	q => \i3|saida\(5));

-- Location: LCCOMB_X3_Y23_N30
\i2|valor_banco_regs_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[5]~feeder_combout\ = \i3|saida\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(5),
	combout => \i2|valor_banco_regs_out[5]~feeder_combout\);

-- Location: FF_X3_Y23_N31
\i2|valor_banco_regs_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[5]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(5));

-- Location: LCCOMB_X14_Y22_N6
\i2|valor_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~7_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[6]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[8]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[6]$latch~combout\,
	combout => \i2|valor_out~7_combout\);

-- Location: FF_X14_Y22_N7
\i2|valor_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~7_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(6));

-- Location: LCCOMB_X10_Y21_N12
\i3|r1|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~7_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(6),
	combout => \i3|r1|q~7_combout\);

-- Location: FF_X10_Y21_N13
\i3|r7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~7_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(6));

-- Location: FF_X11_Y24_N13
\i3|r3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~7_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(6));

-- Location: LCCOMB_X11_Y22_N2
\i3|r5|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~7_combout\,
	combout => \i3|r5|q[6]~feeder_combout\);

-- Location: FF_X11_Y22_N3
\i3|r5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[6]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(6));

-- Location: FF_X11_Y22_N5
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(6));

-- Location: LCCOMB_X11_Y22_N4
\i3|saida~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~32_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(6))) # (!\i2|seletor\(2) & ((\i3|r1|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(6),
	datac => \i3|r1|q\(6),
	datad => \i2|seletor\(2),
	combout => \i3|saida~32_combout\);

-- Location: LCCOMB_X11_Y24_N12
\i3|saida~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~33_combout\ = (\i2|seletor\(1) & ((\i3|saida~32_combout\ & (\i3|r7|q\(6))) # (!\i3|saida~32_combout\ & ((\i3|r3|q\(6)))))) # (!\i2|seletor\(1) & (((\i3|saida~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r7|q\(6),
	datac => \i3|r3|q\(6),
	datad => \i3|saida~32_combout\,
	combout => \i3|saida~33_combout\);

-- Location: LCCOMB_X10_Y24_N10
\i3|r8|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~7_combout\,
	combout => \i3|r8|q[6]~feeder_combout\);

-- Location: FF_X10_Y24_N11
\i3|r8|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[6]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(6));

-- Location: FF_X10_Y24_N29
\i3|r6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~7_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(6));

-- Location: LCCOMB_X9_Y24_N16
\i3|r4|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[6]~feeder_combout\ = \i3|r1|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~7_combout\,
	combout => \i3|r4|q[6]~feeder_combout\);

-- Location: FF_X9_Y24_N17
\i3|r4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[6]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(6));

-- Location: FF_X9_Y24_N31
\i3|r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~7_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(6));

-- Location: LCCOMB_X9_Y24_N30
\i3|saida~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~30_combout\ = (\i2|seletor\(1) & ((\i3|r4|q\(6)) # ((\i2|seletor\(2))))) # (!\i2|seletor\(1) & (((\i3|r2|q\(6) & !\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(6),
	datac => \i3|r2|q\(6),
	datad => \i2|seletor\(2),
	combout => \i3|saida~30_combout\);

-- Location: LCCOMB_X10_Y24_N28
\i3|saida~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~31_combout\ = (\i2|seletor\(2) & ((\i3|saida~30_combout\ & (\i3|r8|q\(6))) # (!\i3|saida~30_combout\ & ((\i3|r6|q\(6)))))) # (!\i2|seletor\(2) & (((\i3|saida~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r8|q\(6),
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(6),
	datad => \i3|saida~30_combout\,
	combout => \i3|saida~31_combout\);

-- Location: LCCOMB_X11_Y24_N16
\i3|saida~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~34_combout\ = (\i2|seletor\(0) & ((\i3|saida~31_combout\))) # (!\i2|seletor\(0) & (\i3|saida~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~33_combout\,
	datab => \i2|seletor\(0),
	datad => \i3|saida~31_combout\,
	combout => \i3|saida~34_combout\);

-- Location: FF_X11_Y24_N17
\i3|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~34_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(6));

-- Location: LCCOMB_X1_Y23_N18
\i2|valor_banco_regs_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[6]~feeder_combout\ = \i3|saida\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(6),
	combout => \i2|valor_banco_regs_out[6]~feeder_combout\);

-- Location: FF_X1_Y23_N19
\i2|valor_banco_regs_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[6]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(6));

-- Location: LCCOMB_X11_Y23_N14
\i2|valor_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~8_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[7]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[9]~input_o\,
	datad => \i4|s[7]$latch~combout\,
	combout => \i2|valor_out~8_combout\);

-- Location: FF_X11_Y23_N15
\i2|valor_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~8_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(7));

-- Location: LCCOMB_X10_Y21_N18
\i3|r1|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~8_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(7),
	combout => \i3|r1|q~8_combout\);

-- Location: LCCOMB_X10_Y24_N22
\i3|r8|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[7]~feeder_combout\ = \i3|r1|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~8_combout\,
	combout => \i3|r8|q[7]~feeder_combout\);

-- Location: FF_X10_Y24_N23
\i3|r8|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[7]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(7));

-- Location: FF_X10_Y24_N5
\i3|r6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~8_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(7));

-- Location: LCCOMB_X9_Y24_N0
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

-- Location: FF_X9_Y24_N1
\i3|r4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[7]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(7));

-- Location: FF_X9_Y24_N15
\i3|r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~8_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(7));

-- Location: LCCOMB_X9_Y24_N14
\i3|saida~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~35_combout\ = (\i2|seletor\(1) & ((\i3|r4|q\(7)) # ((\i2|seletor\(2))))) # (!\i2|seletor\(1) & (((\i3|r2|q\(7) & !\i2|seletor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r4|q\(7),
	datac => \i3|r2|q\(7),
	datad => \i2|seletor\(2),
	combout => \i3|saida~35_combout\);

-- Location: LCCOMB_X10_Y24_N4
\i3|saida~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~36_combout\ = (\i2|seletor\(2) & ((\i3|saida~35_combout\ & (\i3|r8|q\(7))) # (!\i3|saida~35_combout\ & ((\i3|r6|q\(7)))))) # (!\i2|seletor\(2) & (((\i3|saida~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r8|q\(7),
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(7),
	datad => \i3|saida~35_combout\,
	combout => \i3|saida~36_combout\);

-- Location: FF_X10_Y21_N19
\i3|r7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~8_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(7));

-- Location: FF_X11_Y24_N7
\i3|r3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~8_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(7));

-- Location: LCCOMB_X12_Y22_N22
\i3|r5|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[7]~feeder_combout\ = \i3|r1|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~8_combout\,
	combout => \i3|r5|q[7]~feeder_combout\);

-- Location: FF_X12_Y22_N23
\i3|r5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[7]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(7));

-- Location: FF_X11_Y22_N19
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(7));

-- Location: LCCOMB_X11_Y22_N18
\i3|saida~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~37_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(7))) # (!\i2|seletor\(2) & ((\i3|r1|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(7),
	datac => \i3|r1|q\(7),
	datad => \i2|seletor\(2),
	combout => \i3|saida~37_combout\);

-- Location: LCCOMB_X11_Y24_N6
\i3|saida~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~38_combout\ = (\i2|seletor\(1) & ((\i3|saida~37_combout\ & (\i3|r7|q\(7))) # (!\i3|saida~37_combout\ & ((\i3|r3|q\(7)))))) # (!\i2|seletor\(1) & (((\i3|saida~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(7),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(7),
	datad => \i3|saida~37_combout\,
	combout => \i3|saida~38_combout\);

-- Location: LCCOMB_X11_Y24_N22
\i3|saida~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~39_combout\ = (\i2|seletor\(0) & (\i3|saida~36_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~36_combout\,
	datad => \i3|saida~38_combout\,
	combout => \i3|saida~39_combout\);

-- Location: FF_X11_Y24_N23
\i3|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~39_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(7));

-- Location: LCCOMB_X3_Y23_N12
\i2|valor_banco_regs_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[7]~feeder_combout\ = \i3|saida\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(7),
	combout => \i2|valor_banco_regs_out[7]~feeder_combout\);

-- Location: FF_X3_Y23_N13
\i2|valor_banco_regs_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[7]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(7));

-- Location: LCCOMB_X12_Y23_N26
\i2|valor_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~9_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[8]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[10]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[8]$latch~combout\,
	combout => \i2|valor_out~9_combout\);

-- Location: FF_X12_Y23_N27
\i2|valor_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~9_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(8));

-- Location: LCCOMB_X11_Y21_N22
\i3|r1|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~9_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|registrador_clear\(0),
	datac => \i2|valor_out\(8),
	combout => \i3|r1|q~9_combout\);

-- Location: LCCOMB_X9_Y21_N6
\i3|r8|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~9_combout\,
	combout => \i3|r8|q[8]~feeder_combout\);

-- Location: FF_X9_Y21_N7
\i3|r8|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[8]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(8));

-- Location: FF_X9_Y22_N5
\i3|r6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~9_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(8));

-- Location: FF_X9_Y22_N7
\i3|r2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~9_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(8));

-- Location: LCCOMB_X9_Y21_N28
\i3|r4|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~9_combout\,
	combout => \i3|r4|q[8]~feeder_combout\);

-- Location: FF_X9_Y21_N29
\i3|r4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[8]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(8));

-- Location: LCCOMB_X9_Y22_N6
\i3|saida~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~40_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(8)))) # (!\i2|seletor\(1) & (\i3|r2|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(8),
	datad => \i3|r4|q\(8),
	combout => \i3|saida~40_combout\);

-- Location: LCCOMB_X9_Y22_N4
\i3|saida~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~41_combout\ = (\i2|seletor\(2) & ((\i3|saida~40_combout\ & (\i3|r8|q\(8))) # (!\i3|saida~40_combout\ & ((\i3|r6|q\(8)))))) # (!\i2|seletor\(2) & (((\i3|saida~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(8),
	datac => \i3|r6|q\(8),
	datad => \i3|saida~40_combout\,
	combout => \i3|saida~41_combout\);

-- Location: LCCOMB_X10_Y21_N4
\i3|r7|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r7|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~9_combout\,
	combout => \i3|r7|q[8]~feeder_combout\);

-- Location: FF_X10_Y21_N5
\i3|r7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r7|q[8]~feeder_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(8));

-- Location: FF_X10_Y22_N13
\i3|r3|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~9_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(8));

-- Location: LCCOMB_X12_Y22_N20
\i3|r5|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[8]~feeder_combout\ = \i3|r1|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~9_combout\,
	combout => \i3|r5|q[8]~feeder_combout\);

-- Location: FF_X12_Y22_N21
\i3|r5|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[8]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(8));

-- Location: FF_X11_Y22_N9
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(8));

-- Location: LCCOMB_X11_Y22_N8
\i3|saida~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~42_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(8))) # (!\i2|seletor\(2) & ((\i3|r1|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(8),
	datac => \i3|r1|q\(8),
	datad => \i2|seletor\(2),
	combout => \i3|saida~42_combout\);

-- Location: LCCOMB_X10_Y22_N12
\i3|saida~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~43_combout\ = (\i2|seletor\(1) & ((\i3|saida~42_combout\ & (\i3|r7|q\(8))) # (!\i3|saida~42_combout\ & ((\i3|r3|q\(8)))))) # (!\i2|seletor\(1) & (((\i3|saida~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(8),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(8),
	datad => \i3|saida~42_combout\,
	combout => \i3|saida~43_combout\);

-- Location: LCCOMB_X10_Y22_N0
\i3|saida~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~44_combout\ = (\i2|seletor\(0) & (\i3|saida~41_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~41_combout\,
	datad => \i3|saida~43_combout\,
	combout => \i3|saida~44_combout\);

-- Location: FF_X10_Y22_N1
\i3|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~44_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(8));

-- Location: LCCOMB_X1_Y23_N12
\i2|valor_banco_regs_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[8]~feeder_combout\ = \i3|saida\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(8),
	combout => \i2|valor_banco_regs_out[8]~feeder_combout\);

-- Location: FF_X1_Y23_N13
\i2|valor_banco_regs_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[8]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(8));

-- Location: LCCOMB_X11_Y23_N24
\i2|valor_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~10_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[9]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[11]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[9]$latch~combout\,
	combout => \i2|valor_out~10_combout\);

-- Location: FF_X11_Y23_N25
\i2|valor_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~10_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(9));

-- Location: LCCOMB_X10_Y21_N14
\i3|r1|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~10_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(9),
	combout => \i3|r1|q~10_combout\);

-- Location: FF_X10_Y21_N15
\i3|r7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~10_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(9));

-- Location: FF_X10_Y22_N27
\i3|r3|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~10_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(9));

-- Location: LCCOMB_X12_Y22_N18
\i3|r5|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[9]~feeder_combout\ = \i3|r1|q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~10_combout\,
	combout => \i3|r5|q[9]~feeder_combout\);

-- Location: FF_X12_Y22_N19
\i3|r5|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[9]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(9));

-- Location: FF_X11_Y22_N27
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(9));

-- Location: LCCOMB_X11_Y22_N26
\i3|saida~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~47_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(9))) # (!\i2|seletor\(2) & ((\i3|r1|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(9),
	datac => \i3|r1|q\(9),
	datad => \i2|seletor\(2),
	combout => \i3|saida~47_combout\);

-- Location: LCCOMB_X10_Y22_N26
\i3|saida~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~48_combout\ = (\i2|seletor\(1) & ((\i3|saida~47_combout\ & (\i3|r7|q\(9))) # (!\i3|saida~47_combout\ & ((\i3|r3|q\(9)))))) # (!\i2|seletor\(1) & (((\i3|saida~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(9),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(9),
	datad => \i3|saida~47_combout\,
	combout => \i3|saida~48_combout\);

-- Location: LCCOMB_X9_Y21_N30
\i3|r8|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[9]~feeder_combout\ = \i3|r1|q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~10_combout\,
	combout => \i3|r8|q[9]~feeder_combout\);

-- Location: FF_X9_Y21_N31
\i3|r8|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[9]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(9));

-- Location: FF_X9_Y22_N9
\i3|r6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~10_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(9));

-- Location: FF_X9_Y22_N3
\i3|r2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~10_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(9));

-- Location: LCCOMB_X9_Y21_N24
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

-- Location: FF_X9_Y21_N25
\i3|r4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[9]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(9));

-- Location: LCCOMB_X9_Y22_N2
\i3|saida~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~45_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(9)))) # (!\i2|seletor\(1) & (\i3|r2|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(9),
	datad => \i3|r4|q\(9),
	combout => \i3|saida~45_combout\);

-- Location: LCCOMB_X9_Y22_N8
\i3|saida~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~46_combout\ = (\i2|seletor\(2) & ((\i3|saida~45_combout\ & (\i3|r8|q\(9))) # (!\i3|saida~45_combout\ & ((\i3|r6|q\(9)))))) # (!\i2|seletor\(2) & (((\i3|saida~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(9),
	datac => \i3|r6|q\(9),
	datad => \i3|saida~45_combout\,
	combout => \i3|saida~46_combout\);

-- Location: LCCOMB_X10_Y22_N30
\i3|saida~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~49_combout\ = (\i2|seletor\(0) & ((\i3|saida~46_combout\))) # (!\i2|seletor\(0) & (\i3|saida~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~48_combout\,
	datad => \i3|saida~46_combout\,
	combout => \i3|saida~49_combout\);

-- Location: FF_X10_Y22_N31
\i3|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~49_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(9));

-- Location: LCCOMB_X1_Y23_N22
\i2|valor_banco_regs_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[9]~feeder_combout\ = \i3|saida\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|saida\(9),
	combout => \i2|valor_banco_regs_out[9]~feeder_combout\);

-- Location: FF_X1_Y23_N23
\i2|valor_banco_regs_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[9]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(9));

-- Location: LCCOMB_X17_Y23_N28
\i2|valor_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~11_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[10]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[12]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[10]$latch~combout\,
	combout => \i2|valor_out~11_combout\);

-- Location: FF_X17_Y23_N29
\i2|valor_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~11_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(10));

-- Location: LCCOMB_X15_Y22_N24
\i3|r1|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~11_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(10),
	combout => \i3|r1|q~11_combout\);

-- Location: FF_X9_Y22_N31
\i3|r2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~11_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(10));

-- Location: LCCOMB_X9_Y21_N0
\i3|r4|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~11_combout\,
	combout => \i3|r4|q[10]~feeder_combout\);

-- Location: FF_X9_Y21_N1
\i3|r4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[10]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(10));

-- Location: LCCOMB_X9_Y22_N30
\i3|saida~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~50_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(10)))) # (!\i2|seletor\(1) & (\i3|r2|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(10),
	datad => \i3|r4|q\(10),
	combout => \i3|saida~50_combout\);

-- Location: FF_X9_Y22_N1
\i3|r6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~11_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(10));

-- Location: LCCOMB_X15_Y22_N18
\i3|r8|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~11_combout\,
	combout => \i3|r8|q[10]~feeder_combout\);

-- Location: FF_X15_Y22_N19
\i3|r8|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[10]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(10));

-- Location: LCCOMB_X9_Y22_N0
\i3|saida~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~51_combout\ = (\i3|saida~50_combout\ & (((\i3|r8|q\(10))) # (!\i2|seletor\(2)))) # (!\i3|saida~50_combout\ & (\i2|seletor\(2) & (\i3|r6|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|saida~50_combout\,
	datab => \i2|seletor\(2),
	datac => \i3|r6|q\(10),
	datad => \i3|r8|q\(10),
	combout => \i3|saida~51_combout\);

-- Location: FF_X15_Y22_N25
\i3|r7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~11_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(10));

-- Location: FF_X10_Y22_N17
\i3|r3|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~11_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(10));

-- Location: LCCOMB_X12_Y22_N24
\i3|r5|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[10]~feeder_combout\ = \i3|r1|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~11_combout\,
	combout => \i3|r5|q[10]~feeder_combout\);

-- Location: FF_X12_Y22_N25
\i3|r5|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[10]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(10));

-- Location: FF_X11_Y22_N29
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(10));

-- Location: LCCOMB_X11_Y22_N28
\i3|saida~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~52_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(10))) # (!\i2|seletor\(2) & ((\i3|r1|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(10),
	datac => \i3|r1|q\(10),
	datad => \i2|seletor\(2),
	combout => \i3|saida~52_combout\);

-- Location: LCCOMB_X10_Y22_N16
\i3|saida~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~53_combout\ = (\i2|seletor\(1) & ((\i3|saida~52_combout\ & (\i3|r7|q\(10))) # (!\i3|saida~52_combout\ & ((\i3|r3|q\(10)))))) # (!\i2|seletor\(1) & (((\i3|saida~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(10),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(10),
	datad => \i3|saida~52_combout\,
	combout => \i3|saida~53_combout\);

-- Location: LCCOMB_X10_Y22_N4
\i3|saida~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~54_combout\ = (\i2|seletor\(0) & (\i3|saida~51_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~51_combout\,
	datad => \i3|saida~53_combout\,
	combout => \i3|saida~54_combout\);

-- Location: FF_X10_Y22_N5
\i3|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~54_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(10));

-- Location: LCCOMB_X2_Y23_N24
\i2|valor_banco_regs_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[10]~feeder_combout\ = \i3|saida\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(10),
	combout => \i2|valor_banco_regs_out[10]~feeder_combout\);

-- Location: FF_X2_Y23_N25
\i2|valor_banco_regs_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[10]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(10));

-- Location: LCCOMB_X17_Y23_N30
\i2|valor_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~12_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[11]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrucao[13]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[11]$latch~combout\,
	combout => \i2|valor_out~12_combout\);

-- Location: FF_X17_Y23_N31
\i2|valor_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~12_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(11));

-- Location: LCCOMB_X10_Y21_N22
\i3|r1|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~12_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(11),
	combout => \i3|r1|q~12_combout\);

-- Location: FF_X10_Y21_N23
\i3|r7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~12_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(11));

-- Location: FF_X10_Y22_N15
\i3|r3|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~12_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(11));

-- Location: LCCOMB_X10_Y21_N8
\i3|r5|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~12_combout\,
	combout => \i3|r5|q[11]~feeder_combout\);

-- Location: FF_X10_Y21_N9
\i3|r5|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[11]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(11));

-- Location: FF_X11_Y22_N23
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(11));

-- Location: LCCOMB_X11_Y22_N22
\i3|saida~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~57_combout\ = (\i2|seletor\(2) & ((\i3|r5|q\(11)) # ((\i2|seletor\(1))))) # (!\i2|seletor\(2) & (((\i3|r1|q\(11) & !\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r5|q\(11),
	datab => \i2|seletor\(2),
	datac => \i3|r1|q\(11),
	datad => \i2|seletor\(1),
	combout => \i3|saida~57_combout\);

-- Location: LCCOMB_X10_Y22_N14
\i3|saida~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~58_combout\ = (\i2|seletor\(1) & ((\i3|saida~57_combout\ & (\i3|r7|q\(11))) # (!\i3|saida~57_combout\ & ((\i3|r3|q\(11)))))) # (!\i2|seletor\(1) & (((\i3|saida~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(11),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(11),
	datad => \i3|saida~57_combout\,
	combout => \i3|saida~58_combout\);

-- Location: LCCOMB_X9_Y21_N12
\i3|r8|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~12_combout\,
	combout => \i3|r8|q[11]~feeder_combout\);

-- Location: FF_X9_Y21_N13
\i3|r8|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[11]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(11));

-- Location: FF_X9_Y22_N13
\i3|r6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~12_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(11));

-- Location: FF_X9_Y22_N11
\i3|r2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~12_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(11));

-- Location: LCCOMB_X9_Y21_N22
\i3|r4|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[11]~feeder_combout\ = \i3|r1|q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~12_combout\,
	combout => \i3|r4|q[11]~feeder_combout\);

-- Location: FF_X9_Y21_N23
\i3|r4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[11]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(11));

-- Location: LCCOMB_X9_Y22_N10
\i3|saida~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~55_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(11)))) # (!\i2|seletor\(1) & (\i3|r2|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(11),
	datad => \i3|r4|q\(11),
	combout => \i3|saida~55_combout\);

-- Location: LCCOMB_X9_Y22_N12
\i3|saida~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~56_combout\ = (\i2|seletor\(2) & ((\i3|saida~55_combout\ & (\i3|r8|q\(11))) # (!\i3|saida~55_combout\ & ((\i3|r6|q\(11)))))) # (!\i2|seletor\(2) & (((\i3|saida~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(11),
	datac => \i3|r6|q\(11),
	datad => \i3|saida~55_combout\,
	combout => \i3|saida~56_combout\);

-- Location: LCCOMB_X10_Y22_N10
\i3|saida~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~59_combout\ = (\i2|seletor\(0) & ((\i3|saida~56_combout\))) # (!\i2|seletor\(0) & (\i3|saida~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~58_combout\,
	datad => \i3|saida~56_combout\,
	combout => \i3|saida~59_combout\);

-- Location: FF_X10_Y22_N11
\i3|saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~59_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(11));

-- Location: LCCOMB_X1_Y23_N8
\i2|valor_banco_regs_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[11]~feeder_combout\ = \i3|saida\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(11),
	combout => \i2|valor_banco_regs_out[11]~feeder_combout\);

-- Location: FF_X1_Y23_N9
\i2|valor_banco_regs_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[11]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(11));

-- Location: LCCOMB_X15_Y23_N30
\i2|valor_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~13_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[12]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal2~1_combout\,
	datac => \instrucao[14]~input_o\,
	datad => \i4|s[12]$latch~combout\,
	combout => \i2|valor_out~13_combout\);

-- Location: FF_X15_Y23_N31
\i2|valor_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~13_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(12));

-- Location: LCCOMB_X11_Y21_N24
\i3|r1|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~13_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(12),
	combout => \i3|r1|q~13_combout\);

-- Location: FF_X10_Y21_N29
\i3|r7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(12));

-- Location: FF_X10_Y22_N9
\i3|r3|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(12));

-- Location: LCCOMB_X12_Y22_N2
\i3|r1|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q[12]~feeder_combout\ = \i3|r1|q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~13_combout\,
	combout => \i3|r1|q[12]~feeder_combout\);

-- Location: FF_X12_Y22_N3
\i3|r1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q[12]~feeder_combout\,
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(12));

-- Location: FF_X11_Y22_N21
\i3|r5|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(12));

-- Location: LCCOMB_X11_Y22_N20
\i3|saida~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~62_combout\ = (\i2|seletor\(2) & (((\i3|r5|q\(12)) # (\i2|seletor\(1))))) # (!\i2|seletor\(2) & (\i3|r1|q\(12) & ((!\i2|seletor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r1|q\(12),
	datab => \i2|seletor\(2),
	datac => \i3|r5|q\(12),
	datad => \i2|seletor\(1),
	combout => \i3|saida~62_combout\);

-- Location: LCCOMB_X10_Y22_N8
\i3|saida~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~63_combout\ = (\i2|seletor\(1) & ((\i3|saida~62_combout\ & (\i3|r7|q\(12))) # (!\i3|saida~62_combout\ & ((\i3|r3|q\(12)))))) # (!\i2|seletor\(1) & (((\i3|saida~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(12),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(12),
	datad => \i3|saida~62_combout\,
	combout => \i3|saida~63_combout\);

-- Location: LCCOMB_X9_Y21_N20
\i3|r8|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[12]~feeder_combout\ = \i3|r1|q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~13_combout\,
	combout => \i3|r8|q[12]~feeder_combout\);

-- Location: FF_X9_Y21_N21
\i3|r8|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[12]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(12));

-- Location: FF_X9_Y22_N25
\i3|r6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(12));

-- Location: FF_X9_Y22_N23
\i3|r2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~13_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(12));

-- Location: LCCOMB_X9_Y21_N2
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

-- Location: FF_X9_Y21_N3
\i3|r4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[12]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(12));

-- Location: LCCOMB_X9_Y22_N22
\i3|saida~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~60_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(12)))) # (!\i2|seletor\(1) & (\i3|r2|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(12),
	datad => \i3|r4|q\(12),
	combout => \i3|saida~60_combout\);

-- Location: LCCOMB_X9_Y22_N24
\i3|saida~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~61_combout\ = (\i2|seletor\(2) & ((\i3|saida~60_combout\ & (\i3|r8|q\(12))) # (!\i3|saida~60_combout\ & ((\i3|r6|q\(12)))))) # (!\i2|seletor\(2) & (((\i3|saida~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(12),
	datac => \i3|r6|q\(12),
	datad => \i3|saida~60_combout\,
	combout => \i3|saida~61_combout\);

-- Location: LCCOMB_X10_Y22_N20
\i3|saida~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~64_combout\ = (\i2|seletor\(0) & ((\i3|saida~61_combout\))) # (!\i2|seletor\(0) & (\i3|saida~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~63_combout\,
	datad => \i3|saida~61_combout\,
	combout => \i3|saida~64_combout\);

-- Location: FF_X10_Y22_N21
\i3|saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~64_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(12));

-- Location: LCCOMB_X1_Y23_N30
\i2|valor_banco_regs_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[12]~feeder_combout\ = \i3|saida\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|saida\(12),
	combout => \i2|valor_banco_regs_out[12]~feeder_combout\);

-- Location: FF_X1_Y23_N31
\i2|valor_banco_regs_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[12]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(12));

-- Location: LCCOMB_X14_Y21_N10
\i2|valor_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~14_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[13]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[15]~input_o\,
	datad => \i4|s[13]$latch~combout\,
	combout => \i2|valor_out~14_combout\);

-- Location: FF_X14_Y21_N11
\i2|valor_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~14_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(13));

-- Location: LCCOMB_X10_Y21_N28
\i3|r1|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~14_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(13),
	combout => \i3|r1|q~14_combout\);

-- Location: LCCOMB_X10_Y21_N6
\i3|r7|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r7|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~14_combout\,
	combout => \i3|r7|q[13]~feeder_combout\);

-- Location: FF_X10_Y21_N7
\i3|r7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r7|q[13]~feeder_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(13));

-- Location: FF_X10_Y22_N23
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

-- Location: LCCOMB_X12_Y22_N8
\i3|r5|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~14_combout\,
	combout => \i3|r5|q[13]~feeder_combout\);

-- Location: FF_X12_Y22_N9
\i3|r5|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[13]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(13));

-- Location: FF_X11_Y22_N11
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(13));

-- Location: LCCOMB_X11_Y22_N10
\i3|saida~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~67_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(13))) # (!\i2|seletor\(2) & ((\i3|r1|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(1),
	datab => \i3|r5|q\(13),
	datac => \i3|r1|q\(13),
	datad => \i2|seletor\(2),
	combout => \i3|saida~67_combout\);

-- Location: LCCOMB_X10_Y22_N22
\i3|saida~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~68_combout\ = (\i2|seletor\(1) & ((\i3|saida~67_combout\ & (\i3|r7|q\(13))) # (!\i3|saida~67_combout\ & ((\i3|r3|q\(13)))))) # (!\i2|seletor\(1) & (((\i3|saida~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(13),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(13),
	datad => \i3|saida~67_combout\,
	combout => \i3|saida~68_combout\);

-- Location: FF_X9_Y22_N15
\i3|r2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~14_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(13));

-- Location: LCCOMB_X9_Y23_N30
\i3|r4|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~14_combout\,
	combout => \i3|r4|q[13]~feeder_combout\);

-- Location: FF_X9_Y23_N31
\i3|r4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[13]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(13));

-- Location: LCCOMB_X9_Y22_N14
\i3|saida~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~65_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(13)))) # (!\i2|seletor\(1) & (\i3|r2|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(13),
	datad => \i3|r4|q\(13),
	combout => \i3|saida~65_combout\);

-- Location: FF_X9_Y22_N29
\i3|r6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~14_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(13));

-- Location: LCCOMB_X9_Y21_N14
\i3|r8|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[13]~feeder_combout\ = \i3|r1|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~14_combout\,
	combout => \i3|r8|q[13]~feeder_combout\);

-- Location: FF_X9_Y21_N15
\i3|r8|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[13]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(13));

-- Location: LCCOMB_X9_Y22_N28
\i3|saida~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~66_combout\ = (\i2|seletor\(2) & ((\i3|saida~65_combout\ & ((\i3|r8|q\(13)))) # (!\i3|saida~65_combout\ & (\i3|r6|q\(13))))) # (!\i2|seletor\(2) & (\i3|saida~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|saida~65_combout\,
	datac => \i3|r6|q\(13),
	datad => \i3|r8|q\(13),
	combout => \i3|saida~66_combout\);

-- Location: LCCOMB_X10_Y22_N2
\i3|saida~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~69_combout\ = (\i2|seletor\(0) & ((\i3|saida~66_combout\))) # (!\i2|seletor\(0) & (\i3|saida~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~68_combout\,
	datad => \i3|saida~66_combout\,
	combout => \i3|saida~69_combout\);

-- Location: FF_X10_Y22_N3
\i3|saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~69_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(13));

-- Location: LCCOMB_X1_Y23_N24
\i2|valor_banco_regs_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[13]~feeder_combout\ = \i3|saida\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(13),
	combout => \i2|valor_banco_regs_out[13]~feeder_combout\);

-- Location: FF_X1_Y23_N25
\i2|valor_banco_regs_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[13]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(13));

-- Location: LCCOMB_X14_Y21_N16
\i2|valor_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~15_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[14]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal2~1_combout\,
	datac => \instrucao[16]~input_o\,
	datad => \i4|s[14]$latch~combout\,
	combout => \i2|valor_out~15_combout\);

-- Location: FF_X14_Y21_N17
\i2|valor_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~15_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(14));

-- Location: LCCOMB_X11_Y21_N30
\i3|r1|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~15_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(14),
	combout => \i3|r1|q~15_combout\);

-- Location: LCCOMB_X9_Y21_N18
\i3|r8|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~15_combout\,
	combout => \i3|r8|q[14]~feeder_combout\);

-- Location: FF_X9_Y21_N19
\i3|r8|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[14]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(14));

-- Location: FF_X9_Y22_N17
\i3|r6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~15_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(14));

-- Location: FF_X9_Y22_N27
\i3|r2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~15_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(14));

-- Location: LCCOMB_X9_Y21_N4
\i3|r4|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r4|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~15_combout\,
	combout => \i3|r4|q[14]~feeder_combout\);

-- Location: FF_X9_Y21_N5
\i3|r4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[14]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(14));

-- Location: LCCOMB_X9_Y22_N26
\i3|saida~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~70_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(14)))) # (!\i2|seletor\(1) & (\i3|r2|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(14),
	datad => \i3|r4|q\(14),
	combout => \i3|saida~70_combout\);

-- Location: LCCOMB_X9_Y22_N16
\i3|saida~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~71_combout\ = (\i2|seletor\(2) & ((\i3|saida~70_combout\ & (\i3|r8|q\(14))) # (!\i3|saida~70_combout\ & ((\i3|r6|q\(14)))))) # (!\i2|seletor\(2) & (((\i3|saida~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(14),
	datac => \i3|r6|q\(14),
	datad => \i3|saida~70_combout\,
	combout => \i3|saida~71_combout\);

-- Location: LCCOMB_X10_Y21_N24
\i3|r7|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r7|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|r1|q~15_combout\,
	combout => \i3|r7|q[14]~feeder_combout\);

-- Location: FF_X10_Y21_N25
\i3|r7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r7|q[14]~feeder_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(14));

-- Location: FF_X10_Y22_N29
\i3|r3|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~15_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(14));

-- Location: LCCOMB_X12_Y22_N10
\i3|r5|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r5|q[14]~feeder_combout\ = \i3|r1|q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~15_combout\,
	combout => \i3|r5|q[14]~feeder_combout\);

-- Location: FF_X12_Y22_N11
\i3|r5|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r5|q[14]~feeder_combout\,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(14));

-- Location: FF_X12_Y22_N1
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
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(14));

-- Location: LCCOMB_X12_Y22_N0
\i3|saida~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~72_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & (\i3|r5|q\(14))) # (!\i2|seletor\(2) & ((\i3|r1|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r5|q\(14),
	datab => \i2|seletor\(1),
	datac => \i3|r1|q\(14),
	datad => \i2|seletor\(2),
	combout => \i3|saida~72_combout\);

-- Location: LCCOMB_X10_Y22_N28
\i3|saida~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~73_combout\ = (\i2|seletor\(1) & ((\i3|saida~72_combout\ & (\i3|r7|q\(14))) # (!\i3|saida~72_combout\ & ((\i3|r3|q\(14)))))) # (!\i2|seletor\(1) & (((\i3|saida~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(14),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(14),
	datad => \i3|saida~72_combout\,
	combout => \i3|saida~73_combout\);

-- Location: LCCOMB_X10_Y22_N24
\i3|saida~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~74_combout\ = (\i2|seletor\(0) & (\i3|saida~71_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|seletor\(0),
	datac => \i3|saida~71_combout\,
	datad => \i3|saida~73_combout\,
	combout => \i3|saida~74_combout\);

-- Location: FF_X10_Y22_N25
\i3|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~74_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(14));

-- Location: LCCOMB_X2_Y23_N22
\i2|valor_banco_regs_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[14]~feeder_combout\ = \i3|saida\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|saida\(14),
	combout => \i2|valor_banco_regs_out[14]~feeder_combout\);

-- Location: FF_X2_Y23_N23
\i2|valor_banco_regs_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[14]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(14));

-- Location: LCCOMB_X14_Y21_N22
\i2|valor_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_out~16_combout\ = (\i2|Equal2~1_combout\ & ((\i4|s[15]$latch~combout\))) # (!\i2|Equal2~1_combout\ & (\instrucao[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrucao[17]~input_o\,
	datac => \i2|Equal2~1_combout\,
	datad => \i4|s[15]$latch~combout\,
	combout => \i2|valor_out~16_combout\);

-- Location: FF_X14_Y21_N23
\i2|valor_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_out~16_combout\,
	ena => \i2|valor_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_out\(15));

-- Location: LCCOMB_X10_Y21_N30
\i3|r1|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q~16_combout\ = (!\i3|registrador_clear\(0) & \i2|valor_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|registrador_clear\(0),
	datad => \i2|valor_out\(15),
	combout => \i3|r1|q~16_combout\);

-- Location: LCCOMB_X9_Y21_N26
\i3|r8|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r8|q[15]~feeder_combout\ = \i3|r1|q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~16_combout\,
	combout => \i3|r8|q[15]~feeder_combout\);

-- Location: FF_X9_Y21_N27
\i3|r8|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r8|q[15]~feeder_combout\,
	ena => \i3|r8|q[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r8|q\(15));

-- Location: FF_X9_Y22_N21
\i3|r6|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~16_combout\,
	sload => VCC,
	ena => \i3|r6|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r6|q\(15));

-- Location: FF_X9_Y22_N19
\i3|r2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~16_combout\,
	sload => VCC,
	ena => \i3|r2|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r2|q\(15));

-- Location: LCCOMB_X9_Y21_N8
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

-- Location: FF_X9_Y21_N9
\i3|r4|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r4|q[15]~feeder_combout\,
	ena => \i3|r4|q[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r4|q\(15));

-- Location: LCCOMB_X9_Y22_N18
\i3|saida~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~75_combout\ = (\i2|seletor\(2) & (\i2|seletor\(1))) # (!\i2|seletor\(2) & ((\i2|seletor\(1) & ((\i3|r4|q\(15)))) # (!\i2|seletor\(1) & (\i3|r2|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i2|seletor\(1),
	datac => \i3|r2|q\(15),
	datad => \i3|r4|q\(15),
	combout => \i3|saida~75_combout\);

-- Location: LCCOMB_X9_Y22_N20
\i3|saida~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~76_combout\ = (\i2|seletor\(2) & ((\i3|saida~75_combout\ & (\i3|r8|q\(15))) # (!\i3|saida~75_combout\ & ((\i3|r6|q\(15)))))) # (!\i2|seletor\(2) & (((\i3|saida~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(2),
	datab => \i3|r8|q\(15),
	datac => \i3|r6|q\(15),
	datad => \i3|saida~75_combout\,
	combout => \i3|saida~76_combout\);

-- Location: FF_X10_Y21_N31
\i3|r7|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q~16_combout\,
	ena => \i3|r7|q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r7|q\(15));

-- Location: FF_X10_Y22_N19
\i3|r3|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~16_combout\,
	sload => VCC,
	ena => \i3|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r3|q\(15));

-- Location: LCCOMB_X12_Y22_N12
\i3|r1|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|r1|q[15]~feeder_combout\ = \i3|r1|q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|r1|q~16_combout\,
	combout => \i3|r1|q[15]~feeder_combout\);

-- Location: FF_X12_Y22_N13
\i3|r1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|r1|q[15]~feeder_combout\,
	ena => \i3|r1|q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r1|q\(15));

-- Location: FF_X12_Y22_N27
\i3|r5|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|r1|q~16_combout\,
	sload => VCC,
	ena => \i3|r5|q[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|r5|q\(15));

-- Location: LCCOMB_X12_Y22_N26
\i3|saida~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~77_combout\ = (\i2|seletor\(1) & (((\i2|seletor\(2))))) # (!\i2|seletor\(1) & ((\i2|seletor\(2) & ((\i3|r5|q\(15)))) # (!\i2|seletor\(2) & (\i3|r1|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r1|q\(15),
	datab => \i2|seletor\(1),
	datac => \i3|r5|q\(15),
	datad => \i2|seletor\(2),
	combout => \i3|saida~77_combout\);

-- Location: LCCOMB_X10_Y22_N18
\i3|saida~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~78_combout\ = (\i2|seletor\(1) & ((\i3|saida~77_combout\ & (\i3|r7|q\(15))) # (!\i3|saida~77_combout\ & ((\i3|r3|q\(15)))))) # (!\i2|seletor\(1) & (((\i3|saida~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|r7|q\(15),
	datab => \i2|seletor\(1),
	datac => \i3|r3|q\(15),
	datad => \i3|saida~77_combout\,
	combout => \i3|saida~78_combout\);

-- Location: LCCOMB_X10_Y22_N6
\i3|saida~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|saida~79_combout\ = (\i2|seletor\(0) & (\i3|saida~76_combout\)) # (!\i2|seletor\(0) & ((\i3|saida~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|seletor\(0),
	datab => \i3|saida~76_combout\,
	datad => \i3|saida~78_combout\,
	combout => \i3|saida~79_combout\);

-- Location: FF_X10_Y22_N7
\i3|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|saida~79_combout\,
	ena => \ALT_INV_bt1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|saida\(15));

-- Location: LCCOMB_X2_Y23_N0
\i2|valor_banco_regs_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_banco_regs_out[15]~feeder_combout\ = \i3|saida\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|saida\(15),
	combout => \i2|valor_banco_regs_out[15]~feeder_combout\);

-- Location: FF_X2_Y23_N1
\i2|valor_banco_regs_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_banco_regs_out[15]~feeder_combout\,
	ena => \i2|valor_banco_regs_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_banco_regs_out\(15));

-- Location: LCCOMB_X11_Y23_N12
\i2|valor_ula_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_ula_out[0]~feeder_combout\ = \i4|s[0]$latch~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i4|s[0]$latch~combout\,
	combout => \i2|valor_ula_out[0]~feeder_combout\);

-- Location: FF_X11_Y23_N13
\i2|valor_ula_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_ula_out[0]~feeder_combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(0));

-- Location: FF_X11_Y23_N11
\i2|valor_ula_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[1]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(1));

-- Location: FF_X11_Y23_N21
\i2|valor_ula_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[2]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(2));

-- Location: FF_X14_Y21_N25
\i2|valor_ula_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[3]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(3));

-- Location: FF_X14_Y21_N19
\i2|valor_ula_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[4]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(4));

-- Location: FF_X11_Y23_N3
\i2|valor_ula_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[5]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(5));

-- Location: FF_X14_Y22_N21
\i2|valor_ula_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[6]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(6));

-- Location: FF_X11_Y23_N29
\i2|valor_ula_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[7]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(7));

-- Location: FF_X12_Y23_N17
\i2|valor_ula_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[8]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(8));

-- Location: FF_X11_Y23_N19
\i2|valor_ula_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[9]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(9));

-- Location: FF_X17_Y23_N25
\i2|valor_ula_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[10]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(10));

-- Location: FF_X17_Y23_N3
\i2|valor_ula_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[11]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(11));

-- Location: FF_X15_Y23_N21
\i2|valor_ula_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[12]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(12));

-- Location: FF_X14_Y21_N13
\i2|valor_ula_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[13]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(13));

-- Location: FF_X14_Y21_N7
\i2|valor_ula_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i4|s[14]$latch~combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(14));

-- Location: LCCOMB_X14_Y21_N20
\i2|valor_ula_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|valor_ula_out[15]~feeder_combout\ = \i4|s[15]$latch~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i4|s[15]$latch~combout\,
	combout => \i2|valor_ula_out[15]~feeder_combout\);

-- Location: FF_X14_Y21_N21
\i2|valor_ula_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|valor_ula_out[15]~feeder_combout\,
	ena => \i2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|valor_ula_out\(15));

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

ww_d_ula(0) <= \d_ula[0]~output_o\;

ww_d_ula(1) <= \d_ula[1]~output_o\;

ww_d_ula(2) <= \d_ula[2]~output_o\;

ww_d_ula(3) <= \d_ula[3]~output_o\;

ww_d_ula(4) <= \d_ula[4]~output_o\;

ww_d_ula(5) <= \d_ula[5]~output_o\;

ww_d_ula(6) <= \d_ula[6]~output_o\;

ww_d_ula(7) <= \d_ula[7]~output_o\;

ww_d_ula(8) <= \d_ula[8]~output_o\;

ww_d_ula(9) <= \d_ula[9]~output_o\;

ww_d_ula(10) <= \d_ula[10]~output_o\;

ww_d_ula(11) <= \d_ula[11]~output_o\;

ww_d_ula(12) <= \d_ula[12]~output_o\;

ww_d_ula(13) <= \d_ula[13]~output_o\;

ww_d_ula(14) <= \d_ula[14]~output_o\;

ww_d_ula(15) <= \d_ula[15]~output_o\;

ww_d_a(0) <= \d_a[0]~output_o\;

ww_d_a(1) <= \d_a[1]~output_o\;

ww_d_a(2) <= \d_a[2]~output_o\;

ww_d_a(3) <= \d_a[3]~output_o\;

ww_d_a(4) <= \d_a[4]~output_o\;

ww_d_a(5) <= \d_a[5]~output_o\;

ww_d_a(6) <= \d_a[6]~output_o\;

ww_d_a(7) <= \d_a[7]~output_o\;

ww_d_a(8) <= \d_a[8]~output_o\;

ww_d_a(9) <= \d_a[9]~output_o\;

ww_d_a(10) <= \d_a[10]~output_o\;

ww_d_a(11) <= \d_a[11]~output_o\;

ww_d_a(12) <= \d_a[12]~output_o\;

ww_d_a(13) <= \d_a[13]~output_o\;

ww_d_a(14) <= \d_a[14]~output_o\;

ww_d_a(15) <= \d_a[15]~output_o\;

ww_d_b(0) <= \d_b[0]~output_o\;

ww_d_b(1) <= \d_b[1]~output_o\;

ww_d_b(2) <= \d_b[2]~output_o\;

ww_d_b(3) <= \d_b[3]~output_o\;

ww_d_b(4) <= \d_b[4]~output_o\;

ww_d_b(5) <= \d_b[5]~output_o\;

ww_d_b(6) <= \d_b[6]~output_o\;

ww_d_b(7) <= \d_b[7]~output_o\;

ww_d_b(8) <= \d_b[8]~output_o\;

ww_d_b(9) <= \d_b[9]~output_o\;

ww_d_b(10) <= \d_b[10]~output_o\;

ww_d_b(11) <= \d_b[11]~output_o\;

ww_d_b(12) <= \d_b[12]~output_o\;

ww_d_b(13) <= \d_b[13]~output_o\;

ww_d_b(14) <= \d_b[14]~output_o\;

ww_d_b(15) <= \d_b[15]~output_o\;

ww_d_op_ula(0) <= \d_op_ula[0]~output_o\;

ww_d_op_ula(1) <= \d_op_ula[1]~output_o\;

ww_d_op_ula(2) <= \d_op_ula[2]~output_o\;

ww_d_op_ula(3) <= \d_op_ula[3]~output_o\;

ww_d_op_ula(4) <= \d_op_ula[4]~output_o\;

ww_d_op_ula(5) <= \d_op_ula[5]~output_o\;

ww_d_op_ula(6) <= \d_op_ula[6]~output_o\;

ww_d_op_ula(7) <= \d_op_ula[7]~output_o\;

ww_d_op_ula(8) <= \d_op_ula[8]~output_o\;

ww_d_op_ula(9) <= \d_op_ula[9]~output_o\;

ww_d_op_ula(10) <= \d_op_ula[10]~output_o\;

ww_d_op_ula(11) <= \d_op_ula[11]~output_o\;

ww_d_op_ula(12) <= \d_op_ula[12]~output_o\;

ww_d_op_ula(13) <= \d_op_ula[13]~output_o\;

ww_d_op_ula(14) <= \d_op_ula[14]~output_o\;

ww_d_op_ula(15) <= \d_op_ula[15]~output_o\;

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
END structure;


