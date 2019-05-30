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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "10/22/2018 16:54:08"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
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

ENTITY 	main IS
    PORT (
	HDMI_PCLK : OUT std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	HDMI_DE : OUT std_logic;
	HDMI_HS : OUT std_logic;
	HDMI_VS : OUT std_logic;
	HDMI_D : OUT std_logic_vector(23 DOWNTO 0);
	LEFT : IN std_logic;
	RIGHT : IN std_logic
	);
END main;

-- Design Ports Information
-- HDMI_PCLK	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_DE	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_HS	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_VS	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[23]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[22]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[21]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[20]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[19]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[18]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[17]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[16]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[15]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[14]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[13]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[11]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[9]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[8]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[7]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[4]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HDMI_D[0]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIGHT	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEFT	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HDMI_PCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_HDMI_DE : std_logic;
SIGNAL ww_HDMI_HS : std_logic;
SIGNAL ww_HDMI_VS : std_logic;
SIGNAL ww_HDMI_D : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_LEFT : std_logic;
SIGNAL ww_RIGHT : std_logic;
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst8|clock_25~0_combout\ : std_logic;
SIGNAL \inst8|clock_25~feeder_combout\ : std_logic;
SIGNAL \inst8|clock_25~q\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~21_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~9_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~10\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~21_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~22\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~13_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~14\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~17_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~18\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~25_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~26\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~5_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~6\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~1_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~2\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~37_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~38\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~45_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~46\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~41_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~42\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~29_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~30\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add0~33_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~22\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~1_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~2\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~33_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~34\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~45_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~46\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~5_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~6\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~42\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~17_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~18\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~13_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~14\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~9_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~10\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~37_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~38\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~29_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~30\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~25_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal3~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal3~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal3~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add2~41_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal4~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal5~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_act~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|v_act~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal1~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Equal2~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_act~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_act~feeder_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_act~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|pre_vga_de~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|pre_vga_de~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|vga_de~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|h_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|vga_hs~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|vga_vs~q\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~41_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~4_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~5_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~6_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~9_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|y[10]~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~42\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~37_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~38\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~21_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~22\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~13_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~14\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~9_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~10\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~33_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~34\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~5_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~6\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~1_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~2\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~29_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~30\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~18\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add3~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~41_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~7_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~8_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|always0~3_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~42\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~37_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~38\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~33_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~34\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~29_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~30\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~25_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~26\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~21_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~22\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~17_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~18\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~13_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~14\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~9_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~10\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~5_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~6\ : std_logic;
SIGNAL \inst8|u_vga_generator|Add1~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~10\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_11~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~38_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~30_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~26_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~22_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~14_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~10_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|adr_brick[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|adr_brick[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|adr_brick[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~10\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_11~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~30_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~26_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~22_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~18_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~14_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~10_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~2\ : std_logic;
SIGNAL \inst1|inst2|Add0~3\ : std_logic;
SIGNAL \inst1|inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~6\ : std_logic;
SIGNAL \inst1|inst2|Add0~7\ : std_logic;
SIGNAL \inst1|inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~10\ : std_logic;
SIGNAL \inst1|inst2|Add0~11\ : std_logic;
SIGNAL \inst1|inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~14\ : std_logic;
SIGNAL \inst1|inst2|Add0~15\ : std_logic;
SIGNAL \inst1|inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~18\ : std_logic;
SIGNAL \inst1|inst2|Add0~19\ : std_logic;
SIGNAL \inst1|inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|type_brick_mem~0_combout\ : std_logic;
SIGNAL \inst1|inst2|adr_mem[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|adr_mem[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|Add3~38_cout\ : std_logic;
SIGNAL \inst1|inst2|Add3~39\ : std_logic;
SIGNAL \inst1|inst2|Add3~34_cout\ : std_logic;
SIGNAL \inst1|inst2|Add3~35\ : std_logic;
SIGNAL \inst1|inst2|Add3~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~2\ : std_logic;
SIGNAL \inst1|inst2|Add3~3\ : std_logic;
SIGNAL \inst1|inst2|Add3~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~2\ : std_logic;
SIGNAL \inst1|inst2|Add6~3\ : std_logic;
SIGNAL \inst1|inst2|Add6~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~6\ : std_logic;
SIGNAL \inst1|inst2|Add3~7\ : std_logic;
SIGNAL \inst1|inst2|Add3~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~6\ : std_logic;
SIGNAL \inst1|inst2|Add6~7\ : std_logic;
SIGNAL \inst1|inst2|Add6~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~10\ : std_logic;
SIGNAL \inst1|inst2|Add3~11\ : std_logic;
SIGNAL \inst1|inst2|Add3~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add5~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~10\ : std_logic;
SIGNAL \inst1|inst2|Add6~11\ : std_logic;
SIGNAL \inst1|inst2|Add6~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add5~2\ : std_logic;
SIGNAL \inst1|inst2|Add5~3\ : std_logic;
SIGNAL \inst1|inst2|Add5~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~14\ : std_logic;
SIGNAL \inst1|inst2|Add3~15\ : std_logic;
SIGNAL \inst1|inst2|Add3~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~14\ : std_logic;
SIGNAL \inst1|inst2|Add6~15\ : std_logic;
SIGNAL \inst1|inst2|Add6~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~18\ : std_logic;
SIGNAL \inst1|inst2|Add3~19\ : std_logic;
SIGNAL \inst1|inst2|Add3~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add5~20_combout\ : std_logic;
SIGNAL \inst1|inst2|Add5~6\ : std_logic;
SIGNAL \inst1|inst2|Add5~7\ : std_logic;
SIGNAL \inst1|inst2|Add5~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~18\ : std_logic;
SIGNAL \inst1|inst2|Add6~19\ : std_logic;
SIGNAL \inst1|inst2|Add6~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~22\ : std_logic;
SIGNAL \inst1|inst2|Add3~23\ : std_logic;
SIGNAL \inst1|inst2|Add3~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add5~21_combout\ : std_logic;
SIGNAL \inst1|inst2|Add5~10\ : std_logic;
SIGNAL \inst1|inst2|Add5~11\ : std_logic;
SIGNAL \inst1|inst2|Add5~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~22\ : std_logic;
SIGNAL \inst1|inst2|Add6~23\ : std_logic;
SIGNAL \inst1|inst2|Add6~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add3~26\ : std_logic;
SIGNAL \inst1|inst2|Add3~27\ : std_logic;
SIGNAL \inst1|inst2|Add3~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add5~22_combout\ : std_logic;
SIGNAL \inst1|inst2|Add5~14\ : std_logic;
SIGNAL \inst1|inst2|Add5~15\ : std_logic;
SIGNAL \inst1|inst2|Add5~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add6~26\ : std_logic;
SIGNAL \inst1|inst2|Add6~27\ : std_logic;
SIGNAL \inst1|inst2|Add6~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|type_brick_mem~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|type_brick_mem~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst8|adr[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst8|to_print~0_combout\ : std_logic;
SIGNAL \inst1|inst8|to_print~2_combout\ : std_logic;
SIGNAL \inst1|inst8|to_print~1_combout\ : std_logic;
SIGNAL \inst1|inst8|to_print~3_combout\ : std_logic;
SIGNAL \inst1|inst8|Add3~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add4~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add3~2\ : std_logic;
SIGNAL \inst1|inst8|Add3~3\ : std_logic;
SIGNAL \inst1|inst8|Add3~5_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add4~2\ : std_logic;
SIGNAL \inst1|inst8|Add4~5_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add3~6\ : std_logic;
SIGNAL \inst1|inst8|Add3~7\ : std_logic;
SIGNAL \inst1|inst8|Add3~9_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add4~6\ : std_logic;
SIGNAL \inst1|inst8|Add4~9_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add3~10\ : std_logic;
SIGNAL \inst1|inst8|Add3~11\ : std_logic;
SIGNAL \inst1|inst8|Add3~13_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add4~10\ : std_logic;
SIGNAL \inst1|inst8|Add4~13_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add2~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Add3~14\ : std_logic;
SIGNAL \inst1|inst8|Add3~15\ : std_logic;
SIGNAL \inst1|inst8|Add3~17_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add4~14\ : std_logic;
SIGNAL \inst1|inst8|Add4~17_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add2~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Add3~18\ : std_logic;
SIGNAL \inst1|inst8|Add3~19\ : std_logic;
SIGNAL \inst1|inst8|Add3~21_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add2~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Add4~18\ : std_logic;
SIGNAL \inst1|inst8|Add4~21_sumout\ : std_logic;
SIGNAL \inst1|inst8|Add3~22\ : std_logic;
SIGNAL \inst1|inst8|Add3~23\ : std_logic;
SIGNAL \inst1|inst8|Add3~25_sumout\ : std_logic;
SIGNAL \inst1|inst8|to_print~q\ : std_logic;
SIGNAL \RIGHT~input_o\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|position[10]~0_combout\ : std_logic;
SIGNAL \LEFT~input_o\ : std_logic;
SIGNAL \inst|position[10]~1_combout\ : std_logic;
SIGNAL \inst|position[10]~2_combout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|pos_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|pos_out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|pos_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~4_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan2~5_combout\ : std_logic;
SIGNAL \inst1|inst5|to_print~0_combout\ : std_logic;
SIGNAL \inst1|inst5|to_print~1_combout\ : std_logic;
SIGNAL \inst1|inst5|to_print~2_combout\ : std_logic;
SIGNAL \inst|pos_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|pos_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|Add0~34_cout\ : std_logic;
SIGNAL \inst1|inst5|Add0~26\ : std_logic;
SIGNAL \inst1|inst5|Add0~22\ : std_logic;
SIGNAL \inst1|inst5|Add0~18\ : std_logic;
SIGNAL \inst1|inst5|Add0~14\ : std_logic;
SIGNAL \inst1|inst5|Add0~10\ : std_logic;
SIGNAL \inst1|inst5|Add0~6\ : std_logic;
SIGNAL \inst1|inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add0~2\ : std_logic;
SIGNAL \inst1|inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~7_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~1_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~4_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~5_combout\ : std_logic;
SIGNAL \inst1|inst5|LessThan3~6_combout\ : std_logic;
SIGNAL \inst1|inst5|to_print~3_combout\ : std_logic;
SIGNAL \inst1|inst5|to_print~q\ : std_logic;
SIGNAL \inst1|inst5|Add5~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~2\ : std_logic;
SIGNAL \inst1|inst5|Add5~3\ : std_logic;
SIGNAL \inst1|inst5|Add5~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~6\ : std_logic;
SIGNAL \inst1|inst5|Add5~7\ : std_logic;
SIGNAL \inst1|inst5|Add5~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~10\ : std_logic;
SIGNAL \inst1|inst5|Add5~11\ : std_logic;
SIGNAL \inst1|inst5|Add5~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~14\ : std_logic;
SIGNAL \inst1|inst5|Add5~15\ : std_logic;
SIGNAL \inst1|inst5|Add5~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~2\ : std_logic;
SIGNAL \inst1|inst5|Add3~3\ : std_logic;
SIGNAL \inst1|inst5|Add3~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~18\ : std_logic;
SIGNAL \inst1|inst5|Add5~19\ : std_logic;
SIGNAL \inst1|inst5|Add5~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~6\ : std_logic;
SIGNAL \inst1|inst5|Add3~7\ : std_logic;
SIGNAL \inst1|inst5|Add3~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~22\ : std_logic;
SIGNAL \inst1|inst5|Add5~23\ : std_logic;
SIGNAL \inst1|inst5|Add5~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~10\ : std_logic;
SIGNAL \inst1|inst5|Add3~11\ : std_logic;
SIGNAL \inst1|inst5|Add3~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add5~26\ : std_logic;
SIGNAL \inst1|inst5|Add5~27\ : std_logic;
SIGNAL \inst1|inst5|Add5~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~14\ : std_logic;
SIGNAL \inst1|inst5|Add3~15\ : std_logic;
SIGNAL \inst1|inst5|Add3~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add5~30\ : std_logic;
SIGNAL \inst1|inst5|Add5~31\ : std_logic;
SIGNAL \inst1|inst5|Add5~33_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add1~1_combout\ : std_logic;
SIGNAL \inst1|inst5|Add3~18\ : std_logic;
SIGNAL \inst1|inst5|Add3~19\ : std_logic;
SIGNAL \inst1|inst5|Add3~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Add5~34\ : std_logic;
SIGNAL \inst1|inst5|Add5~35\ : std_logic;
SIGNAL \inst1|inst5|Add5~37_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~22\ : std_logic;
SIGNAL \inst1|inst5|Add3~23\ : std_logic;
SIGNAL \inst1|inst5|Add3~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add1~3_combout\ : std_logic;
SIGNAL \inst1|inst5|Add5~38\ : std_logic;
SIGNAL \inst1|inst5|Add5~39\ : std_logic;
SIGNAL \inst1|inst5|Add5~41_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~26\ : std_logic;
SIGNAL \inst1|inst5|Add3~27\ : std_logic;
SIGNAL \inst1|inst5|Add3~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst1|inst5|Add5~42\ : std_logic;
SIGNAL \inst1|inst5|Add5~43\ : std_logic;
SIGNAL \inst1|inst5|Add5~45_sumout\ : std_logic;
SIGNAL \inst1|inst5|Add3~30\ : std_logic;
SIGNAL \inst1|inst5|Add3~31\ : std_logic;
SIGNAL \inst1|inst5|Add3~33_sumout\ : std_logic;
SIGNAL \inst1|inst11|or_node[3][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst11|or_node[2][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst11|or_node[1][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst11|or_node[0][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst10|or_node[3][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst10|or_node[2][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst10|or_node[1][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst10|or_node[0][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst9|or_node[3][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst9|or_node[2][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst9|or_node[1][2]~combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst9|or_node[0][2]~combout\ : std_logic;
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|v_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|x\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|y\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst14|inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst2|type_brick_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst5|adr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|pos_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst8|adr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|inst2|adr_mem\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|position\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst2|adr_brick\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_pos_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pos_out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pos_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pos_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LEFT~input_o\ : std_logic;
SIGNAL \ALT_INV_RIGHT~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \inst8|ALT_INV_clock_25~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~8_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~32_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~31_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~27_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~25_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~24_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~23_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~22_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~30_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~29_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~27_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~21_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~20_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~19_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~26_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~25_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~24_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~23_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[35]~21_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~20_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~19_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~18_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~17_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~15_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~14_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~13_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~12_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~11_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~17_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~16_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~15_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~13_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~12_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~11_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[45]~9_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~9_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~7_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~5_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~22_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~21_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~20_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_position[10]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_position[10]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add1~4_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add1~3_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_act~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_position\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|ALT_INV_v_act~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_h_act~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_to_print~2_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_to_print~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_to_print~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_to_print~2_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_to_print~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_to_print~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pos_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst5|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_type_brick_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_to_print~q\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_to_print~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_vga_vs~q\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_vga_hs~q\ : std_logic;
SIGNAL \inst8|ALT_INV_clock_25~q\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_position[10]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_y\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst5|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst5|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_x\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst5|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst8|u_vga_generator|ALT_INV_v_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|u_vga_generator|ALT_INV_h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(11 DOWNTO 0);

BEGIN

HDMI_PCLK <= ww_HDMI_PCLK;
ww_CLK <= CLK;
ww_RST <= RST;
HDMI_DE <= ww_HDMI_DE;
HDMI_HS <= ww_HDMI_HS;
HDMI_VS <= ww_HDMI_VS;
HDMI_D <= ww_HDMI_D;
ww_LEFT <= LEFT;
ww_RIGHT <= RIGHT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst8|adr\(8) & \inst1|inst8|adr\(7) & \inst1|inst8|adr\(6) & \inst1|inst8|adr\(5) & \inst1|inst8|adr\(4) & \inst1|inst8|adr\(3) & 
\inst1|inst8|adr\(2) & \inst1|inst8|adr\(1) & \inst1|inst8|adr\(0));

\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(10) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst1|inst5|adr\(11) & \inst1|inst5|adr\(10) & \inst1|inst5|adr\(9) & \inst1|inst5|adr\(8) & \inst1|inst5|adr\(7) & \inst1|inst5|adr\(6) & 
\inst1|inst5|adr\(5) & \inst1|inst5|adr\(4) & \inst1|inst5|adr\(3) & \inst1|inst5|adr\(2) & \inst1|inst5|adr\(1) & \inst1|inst5|adr\(0));

\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9) <= \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst1|inst2|adr_mem\(11) & \inst1|inst2|adr_mem\(10) & \inst1|inst2|adr_mem\(9) & \inst1|inst2|adr_mem\(8) & \inst1|inst2|adr_mem\(7) & 
\inst1|inst2|adr_mem\(6) & \inst1|inst2|adr_mem\(5) & \inst1|inst2|adr_mem\(4) & \inst1|inst2|adr_mem\(3) & \inst1|inst2|adr_mem\(2) & \inst1|inst2|adr_mem\(1) & \inst1|inst2|adr_mem\(0));

\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(8) <= \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst2|adr_brick\(8) & \inst1|inst2|adr_brick\(7) & \inst1|inst2|adr_brick\(6) & \inst1|inst2|adr_brick\(5) & \inst1|inst2|adr_brick\(4) & 
\inst1|inst2|adr_brick\(3) & \inst1|inst2|adr_brick\(2) & \inst1|inst2|adr_brick\(1) & \inst1|inst2|adr_brick\(0));

\inst14|inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst14|inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst14|inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|ALT_INV_pos_out[4]~DUPLICATE_q\ <= NOT \inst|pos_out[4]~DUPLICATE_q\;
\inst|ALT_INV_pos_out[5]~DUPLICATE_q\ <= NOT \inst|pos_out[5]~DUPLICATE_q\;
\inst|ALT_INV_pos_out[8]~DUPLICATE_q\ <= NOT \inst|pos_out[8]~DUPLICATE_q\;
\inst|ALT_INV_pos_out[3]~DUPLICATE_q\ <= NOT \inst|pos_out[3]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[3]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[5]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[2]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[0]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[8]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[8]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_v_count[4]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|v_count[4]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[8]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[8]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[9]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[9]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[7]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[10]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[1]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[0]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[5]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[5]~DUPLICATE_q\;
\inst8|u_vga_generator|ALT_INV_h_count[6]~DUPLICATE_q\ <= NOT \inst8|u_vga_generator|h_count[6]~DUPLICATE_q\;
\ALT_INV_LEFT~input_o\ <= NOT \LEFT~input_o\;
\ALT_INV_RIGHT~input_o\ <= NOT \RIGHT~input_o\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\inst8|ALT_INV_clock_25~0_combout\ <= NOT \inst8|clock_25~0_combout\;
\inst8|u_vga_generator|ALT_INV_always0~8_combout\ <= NOT \inst8|u_vga_generator|always0~8_combout\;
\inst8|u_vga_generator|ALT_INV_always0~7_combout\ <= NOT \inst8|u_vga_generator|always0~7_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~32_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~31_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~27_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~25_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~24_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~23_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~22_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~30_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~29_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~27_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~21_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~20_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~19_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~26_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~25_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~24_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~23_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[35]~21_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~20_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~19_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~18_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~17_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~15_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~14_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~13_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~12_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~11_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~17_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~16_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~15_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~13_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~12_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~11_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[45]~9_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~4_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~2_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~1_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~0_combout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~9_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~8_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~7_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~6_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~5_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~4_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~1_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~0_combout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0_combout\;
\inst1|inst2|ALT_INV_Add5~22_combout\ <= NOT \inst1|inst2|Add5~22_combout\;
\inst1|inst2|ALT_INV_Add5~21_combout\ <= NOT \inst1|inst2|Add5~21_combout\;
\inst1|inst2|ALT_INV_Add5~20_combout\ <= NOT \inst1|inst2|Add5~20_combout\;
\inst|ALT_INV_LessThan1~0_combout\ <= NOT \inst|LessThan1~0_combout\;
\inst1|inst8|ALT_INV_Add2~2_combout\ <= NOT \inst1|inst8|Add2~2_combout\;
\inst1|inst8|ALT_INV_Add2~1_combout\ <= NOT \inst1|inst8|Add2~1_combout\;
\inst1|inst8|ALT_INV_Add2~0_combout\ <= NOT \inst1|inst8|Add2~0_combout\;
\inst|ALT_INV_position[10]~1_combout\ <= NOT \inst|position[10]~1_combout\;
\inst|ALT_INV_position[10]~0_combout\ <= NOT \inst|position[10]~0_combout\;
\inst1|inst5|ALT_INV_Add1~4_combout\ <= NOT \inst1|inst5|Add1~4_combout\;
\inst1|inst5|ALT_INV_Add1~3_combout\ <= NOT \inst1|inst5|Add1~3_combout\;
\inst1|inst5|ALT_INV_Add1~2_combout\ <= NOT \inst1|inst5|Add1~2_combout\;
\inst1|inst5|ALT_INV_Add1~1_combout\ <= NOT \inst1|inst5|Add1~1_combout\;
\inst1|inst5|ALT_INV_Add1~0_combout\ <= NOT \inst1|inst5|Add1~0_combout\;
\inst8|u_vga_generator|ALT_INV_Equal4~0_combout\ <= NOT \inst8|u_vga_generator|Equal4~0_combout\;
\inst8|u_vga_generator|ALT_INV_Equal5~0_combout\ <= NOT \inst8|u_vga_generator|Equal5~0_combout\;
\inst8|u_vga_generator|ALT_INV_h_act~0_combout\ <= NOT \inst8|u_vga_generator|h_act~0_combout\;
\inst8|u_vga_generator|ALT_INV_Equal1~0_combout\ <= NOT \inst8|u_vga_generator|Equal1~0_combout\;
\inst8|u_vga_generator|ALT_INV_Equal2~0_combout\ <= NOT \inst8|u_vga_generator|Equal2~0_combout\;
\inst8|u_vga_generator|ALT_INV_always0~6_combout\ <= NOT \inst8|u_vga_generator|always0~6_combout\;
\inst8|u_vga_generator|ALT_INV_always0~5_combout\ <= NOT \inst8|u_vga_generator|always0~5_combout\;
\inst8|u_vga_generator|ALT_INV_always0~4_combout\ <= NOT \inst8|u_vga_generator|always0~4_combout\;
\inst|ALT_INV_position\(4) <= NOT \inst|position\(4);
\inst|ALT_INV_position\(5) <= NOT \inst|position\(5);
\inst|ALT_INV_position\(6) <= NOT \inst|position\(6);
\inst|ALT_INV_position\(7) <= NOT \inst|position\(7);
\inst|ALT_INV_position\(10) <= NOT \inst|position\(10);
\inst|ALT_INV_position\(8) <= NOT \inst|position\(8);
\inst|ALT_INV_position\(9) <= NOT \inst|position\(9);
\inst|ALT_INV_position\(0) <= NOT \inst|position\(0);
\inst|ALT_INV_position\(1) <= NOT \inst|position\(1);
\inst|ALT_INV_position\(2) <= NOT \inst|position\(2);
\inst|ALT_INV_position\(3) <= NOT \inst|position\(3);
\inst8|u_vga_generator|ALT_INV_v_act~q\ <= NOT \inst8|u_vga_generator|v_act~q\;
\inst8|u_vga_generator|ALT_INV_h_act~q\ <= NOT \inst8|u_vga_generator|h_act~q\;
\inst1|inst2|ALT_INV_LessThan0~1_combout\ <= NOT \inst1|inst2|LessThan0~1_combout\;
\inst1|inst2|ALT_INV_LessThan0~0_combout\ <= NOT \inst1|inst2|LessThan0~0_combout\;
\inst1|inst8|ALT_INV_to_print~2_combout\ <= NOT \inst1|inst8|to_print~2_combout\;
\inst1|inst8|ALT_INV_to_print~1_combout\ <= NOT \inst1|inst8|to_print~1_combout\;
\inst1|inst8|ALT_INV_to_print~0_combout\ <= NOT \inst1|inst8|to_print~0_combout\;
\inst1|inst5|ALT_INV_to_print~2_combout\ <= NOT \inst1|inst5|to_print~2_combout\;
\inst1|inst5|ALT_INV_to_print~1_combout\ <= NOT \inst1|inst5|to_print~1_combout\;
\inst1|inst5|ALT_INV_to_print~0_combout\ <= NOT \inst1|inst5|to_print~0_combout\;
\inst1|inst5|ALT_INV_LessThan3~7_combout\ <= NOT \inst1|inst5|LessThan3~7_combout\;
\inst1|inst5|ALT_INV_LessThan2~5_combout\ <= NOT \inst1|inst5|LessThan2~5_combout\;
\inst1|inst5|ALT_INV_LessThan2~4_combout\ <= NOT \inst1|inst5|LessThan2~4_combout\;
\inst1|inst5|ALT_INV_LessThan2~3_combout\ <= NOT \inst1|inst5|LessThan2~3_combout\;
\inst1|inst5|ALT_INV_LessThan2~2_combout\ <= NOT \inst1|inst5|LessThan2~2_combout\;
\inst|ALT_INV_pos_out\(4) <= NOT \inst|pos_out\(4);
\inst1|inst5|ALT_INV_LessThan2~1_combout\ <= NOT \inst1|inst5|LessThan2~1_combout\;
\inst|ALT_INV_pos_out\(5) <= NOT \inst|pos_out\(5);
\inst|ALT_INV_pos_out\(6) <= NOT \inst|pos_out\(6);
\inst|ALT_INV_pos_out\(7) <= NOT \inst|pos_out\(7);
\inst1|inst5|ALT_INV_LessThan2~0_combout\ <= NOT \inst1|inst5|LessThan2~0_combout\;
\inst|ALT_INV_pos_out\(10) <= NOT \inst|pos_out\(10);
\inst|ALT_INV_pos_out\(8) <= NOT \inst|pos_out\(8);
\inst|ALT_INV_pos_out\(9) <= NOT \inst|pos_out\(9);
\inst1|inst5|ALT_INV_LessThan3~6_combout\ <= NOT \inst1|inst5|LessThan3~6_combout\;
\inst1|inst5|ALT_INV_LessThan3~5_combout\ <= NOT \inst1|inst5|LessThan3~5_combout\;
\inst1|inst5|ALT_INV_LessThan3~4_combout\ <= NOT \inst1|inst5|LessThan3~4_combout\;
\inst1|inst5|ALT_INV_LessThan3~3_combout\ <= NOT \inst1|inst5|LessThan3~3_combout\;
\inst|ALT_INV_pos_out\(0) <= NOT \inst|pos_out\(0);
\inst|ALT_INV_pos_out\(1) <= NOT \inst|pos_out\(1);
\inst|ALT_INV_pos_out\(2) <= NOT \inst|pos_out\(2);
\inst|ALT_INV_pos_out\(3) <= NOT \inst|pos_out\(3);
\inst1|inst5|ALT_INV_LessThan3~2_combout\ <= NOT \inst1|inst5|LessThan3~2_combout\;
\inst1|inst5|ALT_INV_LessThan3~1_combout\ <= NOT \inst1|inst5|LessThan3~1_combout\;
\inst1|inst5|ALT_INV_LessThan3~0_combout\ <= NOT \inst1|inst5|LessThan3~0_combout\;
\inst8|u_vga_generator|ALT_INV_LessThan1~0_combout\ <= NOT \inst8|u_vga_generator|LessThan1~0_combout\;
\inst8|u_vga_generator|ALT_INV_Equal3~1_combout\ <= NOT \inst8|u_vga_generator|Equal3~1_combout\;
\inst8|u_vga_generator|ALT_INV_Equal3~0_combout\ <= NOT \inst8|u_vga_generator|Equal3~0_combout\;
\inst8|u_vga_generator|ALT_INV_always0~1_combout\ <= NOT \inst8|u_vga_generator|always0~1_combout\;
\inst8|u_vga_generator|ALT_INV_LessThan0~2_combout\ <= NOT \inst8|u_vga_generator|LessThan0~2_combout\;
\inst8|u_vga_generator|ALT_INV_LessThan0~1_combout\ <= NOT \inst8|u_vga_generator|LessThan0~1_combout\;
\inst8|u_vga_generator|ALT_INV_Equal0~2_combout\ <= NOT \inst8|u_vga_generator|Equal0~2_combout\;
\inst8|u_vga_generator|ALT_INV_Equal0~1_combout\ <= NOT \inst8|u_vga_generator|Equal0~1_combout\;
\inst8|u_vga_generator|ALT_INV_Equal0~0_combout\ <= NOT \inst8|u_vga_generator|Equal0~0_combout\;
\inst8|u_vga_generator|ALT_INV_LessThan0~0_combout\ <= NOT \inst8|u_vga_generator|LessThan0~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0_combout\;
\inst1|inst2|ALT_INV_type_brick_mem\(2) <= NOT \inst1|inst2|type_brick_mem\(2);
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0_combout\;
\inst1|inst2|ALT_INV_type_brick_mem\(1) <= NOT \inst1|inst2|type_brick_mem\(1);
\inst1|inst2|ALT_INV_type_brick_mem\(0) <= NOT \inst1|inst2|type_brick_mem\(0);
\inst1|inst8|ALT_INV_to_print~q\ <= NOT \inst1|inst8|to_print~q\;
\inst1|inst5|ALT_INV_to_print~q\ <= NOT \inst1|inst5|to_print~q\;
\inst8|u_vga_generator|ALT_INV_vga_vs~q\ <= NOT \inst8|u_vga_generator|vga_vs~q\;
\inst8|u_vga_generator|ALT_INV_vga_hs~q\ <= NOT \inst8|u_vga_generator|vga_hs~q\;
\inst8|ALT_INV_clock_25~q\ <= NOT \inst8|clock_25~q\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\;
\inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\ <= NOT \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\;
\inst|ALT_INV_position[10]~2_combout\ <= NOT \inst|position[10]~2_combout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~33_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~29_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~29_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~25_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~25_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~21_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~21_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~17_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~17_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~13_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~13_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~21_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~21_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~17_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~17_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~13_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~13_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~9_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~9_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~17_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~13_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~9_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\;
\inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\;
\inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\;
\inst1|inst2|ALT_INV_Add5~17_sumout\ <= NOT \inst1|inst2|Add5~17_sumout\;
\inst1|inst2|ALT_INV_Add3~29_sumout\ <= NOT \inst1|inst2|Add3~29_sumout\;
\inst1|inst2|ALT_INV_Add5~13_sumout\ <= NOT \inst1|inst2|Add5~13_sumout\;
\inst1|inst2|ALT_INV_Add3~25_sumout\ <= NOT \inst1|inst2|Add3~25_sumout\;
\inst1|inst2|ALT_INV_Add5~9_sumout\ <= NOT \inst1|inst2|Add5~9_sumout\;
\inst1|inst2|ALT_INV_Add3~21_sumout\ <= NOT \inst1|inst2|Add3~21_sumout\;
\inst1|inst2|ALT_INV_Add5~5_sumout\ <= NOT \inst1|inst2|Add5~5_sumout\;
\inst1|inst2|ALT_INV_Add3~17_sumout\ <= NOT \inst1|inst2|Add3~17_sumout\;
\inst1|inst2|ALT_INV_Add5~1_sumout\ <= NOT \inst1|inst2|Add5~1_sumout\;
\inst1|inst2|ALT_INV_Add3~13_sumout\ <= NOT \inst1|inst2|Add3~13_sumout\;
\inst1|inst2|ALT_INV_Add3~9_sumout\ <= NOT \inst1|inst2|Add3~9_sumout\;
\inst1|inst2|ALT_INV_Add3~5_sumout\ <= NOT \inst1|inst2|Add3~5_sumout\;
\inst1|inst2|ALT_INV_Add3~1_sumout\ <= NOT \inst1|inst2|Add3~1_sumout\;
\inst1|inst8|ALT_INV_Add4~21_sumout\ <= NOT \inst1|inst8|Add4~21_sumout\;
\inst1|inst8|ALT_INV_Add4~17_sumout\ <= NOT \inst1|inst8|Add4~17_sumout\;
\inst1|inst8|ALT_INV_Add4~13_sumout\ <= NOT \inst1|inst8|Add4~13_sumout\;
\inst1|inst8|ALT_INV_Add4~9_sumout\ <= NOT \inst1|inst8|Add4~9_sumout\;
\inst1|inst8|ALT_INV_Add4~5_sumout\ <= NOT \inst1|inst8|Add4~5_sumout\;
\inst1|inst8|ALT_INV_Add4~1_sumout\ <= NOT \inst1|inst8|Add4~1_sumout\;
\inst1|inst5|ALT_INV_Add5~45_sumout\ <= NOT \inst1|inst5|Add5~45_sumout\;
\inst1|inst5|ALT_INV_Add5~41_sumout\ <= NOT \inst1|inst5|Add5~41_sumout\;
\inst1|inst5|ALT_INV_Add5~37_sumout\ <= NOT \inst1|inst5|Add5~37_sumout\;
\inst1|inst5|ALT_INV_Add5~33_sumout\ <= NOT \inst1|inst5|Add5~33_sumout\;
\inst1|inst5|ALT_INV_Add5~29_sumout\ <= NOT \inst1|inst5|Add5~29_sumout\;
\inst1|inst5|ALT_INV_Add5~25_sumout\ <= NOT \inst1|inst5|Add5~25_sumout\;
\inst1|inst5|ALT_INV_Add5~21_sumout\ <= NOT \inst1|inst5|Add5~21_sumout\;
\inst8|u_vga_generator|ALT_INV_y\(1) <= NOT \inst8|u_vga_generator|y\(1);
\inst1|inst5|ALT_INV_Add5~17_sumout\ <= NOT \inst1|inst5|Add5~17_sumout\;
\inst8|u_vga_generator|ALT_INV_y\(0) <= NOT \inst8|u_vga_generator|y\(0);
\inst1|inst5|ALT_INV_Add5~13_sumout\ <= NOT \inst1|inst5|Add5~13_sumout\;
\inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst14|inst2|altsyncram_component|auto_generated|q_a\(1);
\inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst14|inst2|altsyncram_component|auto_generated|q_a\(2);
\inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst14|inst2|altsyncram_component|auto_generated|q_a\(0);
\inst8|u_vga_generator|ALT_INV_y\(5) <= NOT \inst8|u_vga_generator|y\(5);
\inst8|u_vga_generator|ALT_INV_y\(8) <= NOT \inst8|u_vga_generator|y\(8);
\inst8|u_vga_generator|ALT_INV_y\(10) <= NOT \inst8|u_vga_generator|y\(10);
\inst8|u_vga_generator|ALT_INV_y\(2) <= NOT \inst8|u_vga_generator|y\(2);
\inst8|u_vga_generator|ALT_INV_y\(9) <= NOT \inst8|u_vga_generator|y\(9);
\inst8|u_vga_generator|ALT_INV_y\(3) <= NOT \inst8|u_vga_generator|y\(3);
\inst8|u_vga_generator|ALT_INV_y\(4) <= NOT \inst8|u_vga_generator|y\(4);
\inst8|u_vga_generator|ALT_INV_y\(6) <= NOT \inst8|u_vga_generator|y\(6);
\inst8|u_vga_generator|ALT_INV_y\(7) <= NOT \inst8|u_vga_generator|y\(7);
\inst1|inst5|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst5|Add0~29_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(0) <= NOT \inst8|u_vga_generator|x\(0);
\inst8|u_vga_generator|ALT_INV_x\(1) <= NOT \inst8|u_vga_generator|x\(1);
\inst8|u_vga_generator|ALT_INV_x\(2) <= NOT \inst8|u_vga_generator|x\(2);
\inst8|u_vga_generator|ALT_INV_x\(3) <= NOT \inst8|u_vga_generator|x\(3);
\inst1|inst5|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst5|Add0~25_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(4) <= NOT \inst8|u_vga_generator|x\(4);
\inst1|inst5|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst5|Add0~21_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(5) <= NOT \inst8|u_vga_generator|x\(5);
\inst1|inst5|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst5|Add0~17_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(6) <= NOT \inst8|u_vga_generator|x\(6);
\inst1|inst5|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst5|Add0~13_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(7) <= NOT \inst8|u_vga_generator|x\(7);
\inst1|inst5|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst5|Add0~9_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(8) <= NOT \inst8|u_vga_generator|x\(8);
\inst1|inst5|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst5|Add0~5_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(9) <= NOT \inst8|u_vga_generator|x\(9);
\inst1|inst5|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst5|Add0~1_sumout\;
\inst8|u_vga_generator|ALT_INV_x\(10) <= NOT \inst8|u_vga_generator|x\(10);
\inst8|u_vga_generator|ALT_INV_v_count\(3) <= NOT \inst8|u_vga_generator|v_count\(3);
\inst8|u_vga_generator|ALT_INV_v_count\(5) <= NOT \inst8|u_vga_generator|v_count\(5);
\inst8|u_vga_generator|ALT_INV_v_count\(9) <= NOT \inst8|u_vga_generator|v_count\(9);
\inst8|u_vga_generator|ALT_INV_v_count\(2) <= NOT \inst8|u_vga_generator|v_count\(2);
\inst8|u_vga_generator|ALT_INV_v_count\(10) <= NOT \inst8|u_vga_generator|v_count\(10);
\inst8|u_vga_generator|ALT_INV_v_count\(11) <= NOT \inst8|u_vga_generator|v_count\(11);
\inst8|u_vga_generator|ALT_INV_v_count\(0) <= NOT \inst8|u_vga_generator|v_count\(0);
\inst8|u_vga_generator|ALT_INV_v_count\(6) <= NOT \inst8|u_vga_generator|v_count\(6);
\inst8|u_vga_generator|ALT_INV_v_count\(7) <= NOT \inst8|u_vga_generator|v_count\(7);
\inst8|u_vga_generator|ALT_INV_v_count\(8) <= NOT \inst8|u_vga_generator|v_count\(8);
\inst8|u_vga_generator|ALT_INV_v_count\(4) <= NOT \inst8|u_vga_generator|v_count\(4);
\inst8|u_vga_generator|ALT_INV_v_count\(1) <= NOT \inst8|u_vga_generator|v_count\(1);
\inst8|u_vga_generator|ALT_INV_h_count\(8) <= NOT \inst8|u_vga_generator|h_count\(8);
\inst8|u_vga_generator|ALT_INV_h_count\(9) <= NOT \inst8|u_vga_generator|h_count\(9);
\inst8|u_vga_generator|ALT_INV_h_count\(7) <= NOT \inst8|u_vga_generator|h_count\(7);
\inst8|u_vga_generator|ALT_INV_h_count\(11) <= NOT \inst8|u_vga_generator|h_count\(11);
\inst8|u_vga_generator|ALT_INV_h_count\(10) <= NOT \inst8|u_vga_generator|h_count\(10);
\inst8|u_vga_generator|ALT_INV_h_count\(4) <= NOT \inst8|u_vga_generator|h_count\(4);
\inst8|u_vga_generator|ALT_INV_h_count\(1) <= NOT \inst8|u_vga_generator|h_count\(1);
\inst8|u_vga_generator|ALT_INV_h_count\(3) <= NOT \inst8|u_vga_generator|h_count\(3);
\inst8|u_vga_generator|ALT_INV_h_count\(2) <= NOT \inst8|u_vga_generator|h_count\(2);
\inst8|u_vga_generator|ALT_INV_h_count\(0) <= NOT \inst8|u_vga_generator|h_count\(0);
\inst8|u_vga_generator|ALT_INV_h_count\(5) <= NOT \inst8|u_vga_generator|h_count\(5);
\inst8|u_vga_generator|ALT_INV_h_count\(6) <= NOT \inst8|u_vga_generator|h_count\(6);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(8);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(9);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(10);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(11);
\inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(3);

-- Location: IOOBUF_X68_Y24_N39
\HDMI_PCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|clock_25~q\,
	devoe => ww_devoe,
	o => ww_HDMI_PCLK);

-- Location: IOOBUF_X68_Y24_N56
\HDMI_DE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|u_vga_generator|vga_de~q\,
	devoe => ww_devoe,
	o => ww_HDMI_DE);

-- Location: IOOBUF_X68_Y27_N56
\HDMI_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|u_vga_generator|ALT_INV_vga_hs~q\,
	devoe => ww_devoe,
	o => ww_HDMI_HS);

-- Location: IOOBUF_X68_Y27_N39
\HDMI_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|u_vga_generator|ALT_INV_vga_vs~q\,
	devoe => ww_devoe,
	o => ww_HDMI_VS);

-- Location: IOOBUF_X68_Y17_N39
\HDMI_D[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11|or_node[3][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(23));

-- Location: IOOBUF_X68_Y17_N56
\HDMI_D[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11|or_node[2][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(22));

-- Location: IOOBUF_X68_Y16_N56
\HDMI_D[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11|or_node[1][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(21));

-- Location: IOOBUF_X68_Y16_N39
\HDMI_D[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11|or_node[0][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(20));

-- Location: IOOBUF_X68_Y22_N79
\HDMI_D[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(19));

-- Location: IOOBUF_X68_Y24_N22
\HDMI_D[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(18));

-- Location: IOOBUF_X68_Y19_N5
\HDMI_D[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(17));

-- Location: IOOBUF_X68_Y26_N5
\HDMI_D[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(16));

-- Location: IOOBUF_X68_Y27_N22
\HDMI_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|or_node[3][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(15));

-- Location: IOOBUF_X68_Y27_N5
\HDMI_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|or_node[2][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(14));

-- Location: IOOBUF_X68_Y17_N22
\HDMI_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|or_node[1][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(13));

-- Location: IOOBUF_X68_Y26_N22
\HDMI_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|or_node[0][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(12));

-- Location: IOOBUF_X68_Y19_N22
\HDMI_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(11));

-- Location: IOOBUF_X68_Y17_N5
\HDMI_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(10));

-- Location: IOOBUF_X68_Y24_N5
\HDMI_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(9));

-- Location: IOOBUF_X68_Y16_N22
\HDMI_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(8));

-- Location: IOOBUF_X68_Y16_N5
\HDMI_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9|or_node[3][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(7));

-- Location: IOOBUF_X68_Y19_N39
\HDMI_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9|or_node[2][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(6));

-- Location: IOOBUF_X68_Y19_N56
\HDMI_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9|or_node[1][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(5));

-- Location: IOOBUF_X68_Y14_N96
\HDMI_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9|or_node[0][2]~combout\,
	devoe => ww_devoe,
	o => ww_HDMI_D(4));

-- Location: IOOBUF_X68_Y26_N56
\HDMI_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(3));

-- Location: IOOBUF_X68_Y26_N39
\HDMI_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(2));

-- Location: IOOBUF_X68_Y22_N96
\HDMI_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(1));

-- Location: IOOBUF_X68_Y14_N79
\HDMI_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_D(0));

-- Location: IOIBUF_X68_Y32_N44
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LABCELL_X58_Y16_N57
\inst8|clock_25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|clock_25~0_combout\ = ( !\inst8|clock_25~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst8|ALT_INV_clock_25~q\,
	combout => \inst8|clock_25~0_combout\);

-- Location: LABCELL_X58_Y16_N27
\inst8|clock_25~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|clock_25~feeder_combout\ = ( \inst8|clock_25~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst8|ALT_INV_clock_25~0_combout\,
	combout => \inst8|clock_25~feeder_combout\);

-- Location: FF_X58_Y16_N29
\inst8|clock_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst8|clock_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clock_25~q\);

-- Location: IOIBUF_X68_Y12_N55
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LABCELL_X61_Y16_N0
\inst8|u_vga_generator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~21_sumout\ = SUM(( \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst8|u_vga_generator|Add2~22\ = CARRY(( \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst8|u_vga_generator|Add2~21_sumout\,
	cout => \inst8|u_vga_generator|Add2~22\);

-- Location: LABCELL_X59_Y16_N0
\inst8|u_vga_generator|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~9_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst8|u_vga_generator|Add0~10\ = CARRY(( \inst8|u_vga_generator|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \inst8|u_vga_generator|Add0~9_sumout\,
	cout => \inst8|u_vga_generator|Add0~10\);

-- Location: FF_X59_Y16_N1
\inst8|u_vga_generator|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~9_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(0));

-- Location: LABCELL_X59_Y16_N3
\inst8|u_vga_generator|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~21_sumout\ = SUM(( \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~10\ ))
-- \inst8|u_vga_generator|Add0~22\ = CARRY(( \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[1]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add0~10\,
	sumout => \inst8|u_vga_generator|Add0~21_sumout\,
	cout => \inst8|u_vga_generator|Add0~22\);

-- Location: FF_X59_Y16_N5
\inst8|u_vga_generator|h_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~21_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N6
\inst8|u_vga_generator|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~13_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~22\ ))
-- \inst8|u_vga_generator|Add0~14\ = CARRY(( \inst8|u_vga_generator|h_count\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(2),
	cin => \inst8|u_vga_generator|Add0~22\,
	sumout => \inst8|u_vga_generator|Add0~13_sumout\,
	cout => \inst8|u_vga_generator|Add0~14\);

-- Location: FF_X59_Y16_N8
\inst8|u_vga_generator|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~13_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(2));

-- Location: LABCELL_X59_Y16_N9
\inst8|u_vga_generator|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~17_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~14\ ))
-- \inst8|u_vga_generator|Add0~18\ = CARRY(( \inst8|u_vga_generator|h_count\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(3),
	cin => \inst8|u_vga_generator|Add0~14\,
	sumout => \inst8|u_vga_generator|Add0~17_sumout\,
	cout => \inst8|u_vga_generator|Add0~18\);

-- Location: FF_X59_Y16_N11
\inst8|u_vga_generator|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~17_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(3));

-- Location: LABCELL_X59_Y16_N12
\inst8|u_vga_generator|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~25_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~18\ ))
-- \inst8|u_vga_generator|Add0~26\ = CARRY(( \inst8|u_vga_generator|h_count\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	cin => \inst8|u_vga_generator|Add0~18\,
	sumout => \inst8|u_vga_generator|Add0~25_sumout\,
	cout => \inst8|u_vga_generator|Add0~26\);

-- Location: FF_X59_Y16_N14
\inst8|u_vga_generator|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~25_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(4));

-- Location: FF_X59_Y16_N4
\inst8|u_vga_generator|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~21_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(1));

-- Location: LABCELL_X59_Y16_N15
\inst8|u_vga_generator|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~5_sumout\ = SUM(( \inst8|u_vga_generator|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~26\ ))
-- \inst8|u_vga_generator|Add0~6\ = CARRY(( \inst8|u_vga_generator|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count[5]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add0~26\,
	sumout => \inst8|u_vga_generator|Add0~5_sumout\,
	cout => \inst8|u_vga_generator|Add0~6\);

-- Location: FF_X59_Y16_N16
\inst8|u_vga_generator|h_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N18
\inst8|u_vga_generator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~1_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~6\ ))
-- \inst8|u_vga_generator|Add0~2\ = CARRY(( \inst8|u_vga_generator|h_count\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(6),
	cin => \inst8|u_vga_generator|Add0~6\,
	sumout => \inst8|u_vga_generator|Add0~1_sumout\,
	cout => \inst8|u_vga_generator|Add0~2\);

-- Location: FF_X59_Y16_N20
\inst8|u_vga_generator|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~1_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(6));

-- Location: LABCELL_X59_Y16_N21
\inst8|u_vga_generator|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~37_sumout\ = SUM(( \inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~2\ ))
-- \inst8|u_vga_generator|Add0~38\ = CARRY(( \inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add0~2\,
	sumout => \inst8|u_vga_generator|Add0~37_sumout\,
	cout => \inst8|u_vga_generator|Add0~38\);

-- Location: FF_X59_Y16_N23
\inst8|u_vga_generator|h_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~37_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N24
\inst8|u_vga_generator|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~45_sumout\ = SUM(( \inst8|u_vga_generator|h_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~38\ ))
-- \inst8|u_vga_generator|Add0~46\ = CARRY(( \inst8|u_vga_generator|h_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_h_count[8]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add0~38\,
	sumout => \inst8|u_vga_generator|Add0~45_sumout\,
	cout => \inst8|u_vga_generator|Add0~46\);

-- Location: FF_X59_Y16_N25
\inst8|u_vga_generator|h_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~45_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N27
\inst8|u_vga_generator|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~41_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~46\ ))
-- \inst8|u_vga_generator|Add0~42\ = CARRY(( \inst8|u_vga_generator|h_count\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(9),
	cin => \inst8|u_vga_generator|Add0~46\,
	sumout => \inst8|u_vga_generator|Add0~41_sumout\,
	cout => \inst8|u_vga_generator|Add0~42\);

-- Location: FF_X59_Y16_N29
\inst8|u_vga_generator|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~41_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(9));

-- Location: FF_X59_Y16_N26
\inst8|u_vga_generator|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~45_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(8));

-- Location: LABCELL_X59_Y16_N54
\inst8|u_vga_generator|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal0~1_combout\ = ( \inst8|u_vga_generator|h_count\(8) & ( (\inst8|u_vga_generator|h_count\(9) & !\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(9),
	datad => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	dataf => \inst8|u_vga_generator|ALT_INV_h_count\(8),
	combout => \inst8|u_vga_generator|Equal0~1_combout\);

-- Location: FF_X59_Y16_N17
\inst8|u_vga_generator|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(5));

-- Location: LABCELL_X59_Y16_N30
\inst8|u_vga_generator|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~29_sumout\ = SUM(( \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~42\ ))
-- \inst8|u_vga_generator|Add0~30\ = CARRY(( \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_h_count[10]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add0~42\,
	sumout => \inst8|u_vga_generator|Add0~29_sumout\,
	cout => \inst8|u_vga_generator|Add0~30\);

-- Location: FF_X59_Y16_N32
\inst8|u_vga_generator|h_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~29_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N33
\inst8|u_vga_generator|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add0~33_sumout\ = SUM(( \inst8|u_vga_generator|h_count\(11) ) + ( GND ) + ( \inst8|u_vga_generator|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count\(11),
	cin => \inst8|u_vga_generator|Add0~30\,
	sumout => \inst8|u_vga_generator|Add0~33_sumout\);

-- Location: FF_X59_Y16_N35
\inst8|u_vga_generator|h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~33_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(11));

-- Location: LABCELL_X59_Y16_N48
\inst8|u_vga_generator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal0~0_combout\ = ( !\inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ & ( (!\inst8|u_vga_generator|h_count\(6) & (!\inst8|u_vga_generator|h_count\(5) & !\inst8|u_vga_generator|h_count\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count\(6),
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(5),
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(11),
	dataf => \inst8|u_vga_generator|ALT_INV_h_count[10]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|Equal0~0_combout\);

-- Location: FF_X59_Y16_N2
\inst8|u_vga_generator|h_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~9_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N51
\inst8|u_vga_generator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|LessThan0~0_combout\ = ( \inst8|u_vga_generator|h_count\(3) & ( (\inst8|u_vga_generator|h_count\(2) & \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(2),
	datad => \inst8|u_vga_generator|ALT_INV_h_count[0]~DUPLICATE_q\,
	dataf => \inst8|u_vga_generator|ALT_INV_h_count\(3),
	combout => \inst8|u_vga_generator|LessThan0~0_combout\);

-- Location: MLABCELL_X60_Y16_N9
\inst8|u_vga_generator|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal0~2_combout\ = ( \inst8|u_vga_generator|Equal0~0_combout\ & ( \inst8|u_vga_generator|LessThan0~0_combout\ & ( (\inst8|u_vga_generator|h_count\(4) & (\inst8|u_vga_generator|h_count\(1) & 
-- \inst8|u_vga_generator|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(1),
	datad => \inst8|u_vga_generator|ALT_INV_Equal0~1_combout\,
	datae => \inst8|u_vga_generator|ALT_INV_Equal0~0_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_LessThan0~0_combout\,
	combout => \inst8|u_vga_generator|Equal0~2_combout\);

-- Location: FF_X61_Y16_N2
\inst8|u_vga_generator|v_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~21_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N3
\inst8|u_vga_generator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~1_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~22\ ))
-- \inst8|u_vga_generator|Add2~2\ = CARRY(( \inst8|u_vga_generator|v_count\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	cin => \inst8|u_vga_generator|Add2~22\,
	sumout => \inst8|u_vga_generator|Add2~1_sumout\,
	cout => \inst8|u_vga_generator|Add2~2\);

-- Location: FF_X61_Y16_N5
\inst8|u_vga_generator|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~1_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(1));

-- Location: LABCELL_X61_Y16_N6
\inst8|u_vga_generator|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~33_sumout\ = SUM(( \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~2\ ))
-- \inst8|u_vga_generator|Add2~34\ = CARRY(( \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_v_count[2]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add2~2\,
	sumout => \inst8|u_vga_generator|Add2~33_sumout\,
	cout => \inst8|u_vga_generator|Add2~34\);

-- Location: FF_X61_Y16_N8
\inst8|u_vga_generator|v_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~33_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N9
\inst8|u_vga_generator|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~45_sumout\ = SUM(( \inst8|u_vga_generator|v_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~34\ ))
-- \inst8|u_vga_generator|Add2~46\ = CARRY(( \inst8|u_vga_generator|v_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add2~34\,
	sumout => \inst8|u_vga_generator|Add2~45_sumout\,
	cout => \inst8|u_vga_generator|Add2~46\);

-- Location: FF_X61_Y16_N11
\inst8|u_vga_generator|v_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~45_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N12
\inst8|u_vga_generator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~5_sumout\ = SUM(( \inst8|u_vga_generator|v_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~46\ ))
-- \inst8|u_vga_generator|Add2~6\ = CARRY(( \inst8|u_vga_generator|v_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_v_count[4]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add2~46\,
	sumout => \inst8|u_vga_generator|Add2~5_sumout\,
	cout => \inst8|u_vga_generator|Add2~6\);

-- Location: FF_X61_Y16_N14
\inst8|u_vga_generator|v_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N15
\inst8|u_vga_generator|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~41_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~6\ ))
-- \inst8|u_vga_generator|Add2~42\ = CARRY(( \inst8|u_vga_generator|v_count\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(5),
	cin => \inst8|u_vga_generator|Add2~6\,
	sumout => \inst8|u_vga_generator|Add2~41_sumout\,
	cout => \inst8|u_vga_generator|Add2~42\);

-- Location: LABCELL_X61_Y16_N18
\inst8|u_vga_generator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~17_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~42\ ))
-- \inst8|u_vga_generator|Add2~18\ = CARRY(( \inst8|u_vga_generator|v_count\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(6),
	cin => \inst8|u_vga_generator|Add2~42\,
	sumout => \inst8|u_vga_generator|Add2~17_sumout\,
	cout => \inst8|u_vga_generator|Add2~18\);

-- Location: FF_X61_Y16_N20
\inst8|u_vga_generator|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~17_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(6));

-- Location: LABCELL_X61_Y16_N21
\inst8|u_vga_generator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~13_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~18\ ))
-- \inst8|u_vga_generator|Add2~14\ = CARRY(( \inst8|u_vga_generator|v_count\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(7),
	cin => \inst8|u_vga_generator|Add2~18\,
	sumout => \inst8|u_vga_generator|Add2~13_sumout\,
	cout => \inst8|u_vga_generator|Add2~14\);

-- Location: FF_X61_Y16_N23
\inst8|u_vga_generator|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~13_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(7));

-- Location: LABCELL_X61_Y16_N24
\inst8|u_vga_generator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~9_sumout\ = SUM(( \inst8|u_vga_generator|v_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~14\ ))
-- \inst8|u_vga_generator|Add2~10\ = CARRY(( \inst8|u_vga_generator|v_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst8|u_vga_generator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_v_count[8]~DUPLICATE_q\,
	cin => \inst8|u_vga_generator|Add2~14\,
	sumout => \inst8|u_vga_generator|Add2~9_sumout\,
	cout => \inst8|u_vga_generator|Add2~10\);

-- Location: FF_X61_Y16_N25
\inst8|u_vga_generator|v_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~9_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N27
\inst8|u_vga_generator|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~37_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~10\ ))
-- \inst8|u_vga_generator|Add2~38\ = CARRY(( \inst8|u_vga_generator|v_count\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	cin => \inst8|u_vga_generator|Add2~10\,
	sumout => \inst8|u_vga_generator|Add2~37_sumout\,
	cout => \inst8|u_vga_generator|Add2~38\);

-- Location: FF_X61_Y16_N29
\inst8|u_vga_generator|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~37_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(9));

-- Location: LABCELL_X61_Y16_N30
\inst8|u_vga_generator|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~29_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(10) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~38\ ))
-- \inst8|u_vga_generator|Add2~30\ = CARRY(( \inst8|u_vga_generator|v_count\(10) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_v_count\(10),
	cin => \inst8|u_vga_generator|Add2~38\,
	sumout => \inst8|u_vga_generator|Add2~29_sumout\,
	cout => \inst8|u_vga_generator|Add2~30\);

-- Location: FF_X61_Y16_N32
\inst8|u_vga_generator|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~29_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(10));

-- Location: FF_X61_Y16_N1
\inst8|u_vga_generator|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~21_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(0));

-- Location: LABCELL_X61_Y16_N33
\inst8|u_vga_generator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add2~25_sumout\ = SUM(( \inst8|u_vga_generator|v_count\(11) ) + ( GND ) + ( \inst8|u_vga_generator|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(11),
	cin => \inst8|u_vga_generator|Add2~30\,
	sumout => \inst8|u_vga_generator|Add2~25_sumout\);

-- Location: FF_X61_Y16_N34
\inst8|u_vga_generator|v_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~25_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(11));

-- Location: LABCELL_X61_Y16_N39
\inst8|u_vga_generator|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal3~0_combout\ = ( !\inst8|u_vga_generator|v_count\(11) & ( (!\inst8|u_vga_generator|v_count\(10) & !\inst8|u_vga_generator|v_count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(10),
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(0),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count\(11),
	combout => \inst8|u_vga_generator|Equal3~0_combout\);

-- Location: FF_X61_Y16_N26
\inst8|u_vga_generator|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~9_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(8));

-- Location: LABCELL_X61_Y16_N42
\inst8|u_vga_generator|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~1_combout\ = ( !\inst8|u_vga_generator|v_count[4]~DUPLICATE_q\ & ( (!\inst8|u_vga_generator|v_count\(6) & (!\inst8|u_vga_generator|v_count\(8) & !\inst8|u_vga_generator|v_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(6),
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(8),
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(7),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count[4]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|always0~1_combout\);

-- Location: FF_X61_Y16_N7
\inst8|u_vga_generator|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~33_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(2));

-- Location: MLABCELL_X60_Y16_N45
\inst8|u_vga_generator|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal3~1_combout\ = (\inst8|u_vga_generator|v_count\(9) & (\inst8|u_vga_generator|v_count\(2) & (\inst8|u_vga_generator|v_count[3]~DUPLICATE_q\ & !\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	datab => \inst8|u_vga_generator|ALT_INV_v_count\(2),
	datac => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|Equal3~1_combout\);

-- Location: LABCELL_X61_Y16_N54
\inst8|u_vga_generator|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal3~2_combout\ = ( \inst8|u_vga_generator|Equal3~1_combout\ & ( (!\inst8|u_vga_generator|v_count\(1) & (\inst8|u_vga_generator|Equal3~0_combout\ & \inst8|u_vga_generator|always0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	datac => \inst8|u_vga_generator|ALT_INV_Equal3~0_combout\,
	datad => \inst8|u_vga_generator|ALT_INV_always0~1_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_Equal3~1_combout\,
	combout => \inst8|u_vga_generator|Equal3~2_combout\);

-- Location: FF_X61_Y16_N16
\inst8|u_vga_generator|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~41_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(5));

-- Location: FF_X61_Y16_N17
\inst8|u_vga_generator|v_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~41_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count[5]~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y16_N3
\inst8|u_vga_generator|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal4~0_combout\ = ( !\inst8|u_vga_generator|v_count\(9) & ( !\inst8|u_vga_generator|v_count\(2) & ( (\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ & !\inst8|u_vga_generator|v_count[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	datae => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count\(2),
	combout => \inst8|u_vga_generator|Equal4~0_combout\);

-- Location: MLABCELL_X60_Y16_N54
\inst8|u_vga_generator|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal5~0_combout\ = ( \inst8|u_vga_generator|v_count\(9) & ( !\inst8|u_vga_generator|v_count[3]~DUPLICATE_q\ & ( (!\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ & !\inst8|u_vga_generator|v_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(2),
	datae => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|Equal5~0_combout\);

-- Location: MLABCELL_X60_Y16_N30
\inst8|u_vga_generator|v_act~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|v_act~0_combout\ = ( \inst8|u_vga_generator|always0~1_combout\ & ( \inst8|u_vga_generator|Equal3~0_combout\ & ( (!\inst8|u_vga_generator|v_count\(1) & (((\inst8|u_vga_generator|v_act~q\)))) # (\inst8|u_vga_generator|v_count\(1) & 
-- (((\inst8|u_vga_generator|v_act~q\ & !\inst8|u_vga_generator|Equal5~0_combout\)) # (\inst8|u_vga_generator|Equal4~0_combout\))) ) ) ) # ( !\inst8|u_vga_generator|always0~1_combout\ & ( \inst8|u_vga_generator|Equal3~0_combout\ & ( 
-- \inst8|u_vga_generator|v_act~q\ ) ) ) # ( \inst8|u_vga_generator|always0~1_combout\ & ( !\inst8|u_vga_generator|Equal3~0_combout\ & ( \inst8|u_vga_generator|v_act~q\ ) ) ) # ( !\inst8|u_vga_generator|always0~1_combout\ & ( 
-- !\inst8|u_vga_generator|Equal3~0_combout\ & ( \inst8|u_vga_generator|v_act~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_Equal4~0_combout\,
	datab => \inst8|u_vga_generator|ALT_INV_v_act~q\,
	datac => \inst8|u_vga_generator|ALT_INV_Equal5~0_combout\,
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	datae => \inst8|u_vga_generator|ALT_INV_always0~1_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_Equal3~0_combout\,
	combout => \inst8|u_vga_generator|v_act~0_combout\);

-- Location: FF_X60_Y16_N11
\inst8|u_vga_generator|v_act\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	asdata => \inst8|u_vga_generator|v_act~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_act~q\);

-- Location: FF_X59_Y16_N28
\inst8|u_vga_generator|h_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~41_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[9]~DUPLICATE_q\);

-- Location: FF_X59_Y16_N22
\inst8|u_vga_generator|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~37_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(7));

-- Location: MLABCELL_X60_Y16_N18
\inst8|u_vga_generator|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal1~0_combout\ = ( !\inst8|u_vga_generator|h_count[8]~DUPLICATE_q\ & ( (!\inst8|u_vga_generator|h_count[9]~DUPLICATE_q\ & \inst8|u_vga_generator|h_count\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count[9]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(7),
	dataf => \inst8|u_vga_generator|ALT_INV_h_count[8]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|Equal1~0_combout\);

-- Location: MLABCELL_X60_Y16_N21
\inst8|u_vga_generator|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Equal2~0_combout\ = (!\inst8|u_vga_generator|h_count\(1) & !\inst8|u_vga_generator|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(1),
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	combout => \inst8|u_vga_generator|Equal2~0_combout\);

-- Location: MLABCELL_X60_Y16_N36
\inst8|u_vga_generator|h_act~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|h_act~0_combout\ = ( \inst8|u_vga_generator|Equal2~0_combout\ & ( \inst8|u_vga_generator|Equal0~1_combout\ & ( (!\inst8|u_vga_generator|LessThan0~0_combout\ & (((\inst8|u_vga_generator|h_act~q\)))) # 
-- (\inst8|u_vga_generator|LessThan0~0_combout\ & ((!\inst8|u_vga_generator|Equal0~0_combout\ & ((\inst8|u_vga_generator|h_act~q\))) # (\inst8|u_vga_generator|Equal0~0_combout\ & (\inst8|u_vga_generator|Equal1~0_combout\)))) ) ) ) # ( 
-- !\inst8|u_vga_generator|Equal2~0_combout\ & ( \inst8|u_vga_generator|Equal0~1_combout\ & ( \inst8|u_vga_generator|h_act~q\ ) ) ) # ( \inst8|u_vga_generator|Equal2~0_combout\ & ( !\inst8|u_vga_generator|Equal0~1_combout\ & ( 
-- ((\inst8|u_vga_generator|LessThan0~0_combout\ & (\inst8|u_vga_generator|Equal0~0_combout\ & \inst8|u_vga_generator|Equal1~0_combout\))) # (\inst8|u_vga_generator|h_act~q\) ) ) ) # ( !\inst8|u_vga_generator|Equal2~0_combout\ & ( 
-- !\inst8|u_vga_generator|Equal0~1_combout\ & ( \inst8|u_vga_generator|h_act~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111100000000111111110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_LessThan0~0_combout\,
	datab => \inst8|u_vga_generator|ALT_INV_Equal0~0_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_Equal1~0_combout\,
	datad => \inst8|u_vga_generator|ALT_INV_h_act~q\,
	datae => \inst8|u_vga_generator|ALT_INV_Equal2~0_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_Equal0~1_combout\,
	combout => \inst8|u_vga_generator|h_act~0_combout\);

-- Location: MLABCELL_X60_Y16_N15
\inst8|u_vga_generator|h_act~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|h_act~feeder_combout\ = \inst8|u_vga_generator|h_act~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_act~0_combout\,
	combout => \inst8|u_vga_generator|h_act~feeder_combout\);

-- Location: FF_X60_Y16_N17
\inst8|u_vga_generator|h_act\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|h_act~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_act~q\);

-- Location: MLABCELL_X60_Y16_N27
\inst8|u_vga_generator|pre_vga_de~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|pre_vga_de~0_combout\ = ( \inst8|u_vga_generator|h_act~q\ & ( \inst8|u_vga_generator|v_act~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_v_act~q\,
	dataf => \inst8|u_vga_generator|ALT_INV_h_act~q\,
	combout => \inst8|u_vga_generator|pre_vga_de~0_combout\);

-- Location: FF_X58_Y16_N59
\inst8|u_vga_generator|pre_vga_de\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	asdata => \inst8|u_vga_generator|pre_vga_de~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|pre_vga_de~q\);

-- Location: FF_X58_Y16_N55
\inst8|u_vga_generator|vga_de\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	asdata => \inst8|u_vga_generator|pre_vga_de~q\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|vga_de~q\);

-- Location: MLABCELL_X60_Y16_N51
\inst8|u_vga_generator|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|LessThan0~1_combout\ = ( \inst8|u_vga_generator|h_count\(4) & ( \inst8|u_vga_generator|h_count\(0) & ( (\inst8|u_vga_generator|h_count\(2) & (\inst8|u_vga_generator|h_count\(3) & \inst8|u_vga_generator|h_count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count\(2),
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(3),
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(1),
	datae => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	dataf => \inst8|u_vga_generator|ALT_INV_h_count\(0),
	combout => \inst8|u_vga_generator|LessThan0~1_combout\);

-- Location: FF_X59_Y16_N31
\inst8|u_vga_generator|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~29_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count\(10));

-- Location: LABCELL_X59_Y16_N42
\inst8|u_vga_generator|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|LessThan0~2_combout\ = ( !\inst8|u_vga_generator|h_count\(10) & ( (!\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & (!\inst8|u_vga_generator|h_count[8]~DUPLICATE_q\ & (!\inst8|u_vga_generator|h_count\(11) & 
-- !\inst8|u_vga_generator|h_count\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst8|u_vga_generator|ALT_INV_h_count[8]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(11),
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(9),
	dataf => \inst8|u_vga_generator|ALT_INV_h_count\(10),
	combout => \inst8|u_vga_generator|LessThan0~2_combout\);

-- Location: FF_X59_Y16_N19
\inst8|u_vga_generator|h_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add0~1_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|h_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y16_N57
\inst8|u_vga_generator|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~0_combout\ = ( \inst8|u_vga_generator|h_count[6]~DUPLICATE_q\ & ( ((!\inst8|u_vga_generator|LessThan0~1_combout\ & (!\inst8|u_vga_generator|h_count[5]~DUPLICATE_q\ & \inst8|u_vga_generator|LessThan0~2_combout\))) # 
-- (\inst8|u_vga_generator|Equal0~2_combout\) ) ) # ( !\inst8|u_vga_generator|h_count[6]~DUPLICATE_q\ & ( (\inst8|u_vga_generator|Equal0~2_combout\) # (\inst8|u_vga_generator|LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_LessThan0~1_combout\,
	datab => \inst8|u_vga_generator|ALT_INV_h_count[5]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_LessThan0~2_combout\,
	datad => \inst8|u_vga_generator|ALT_INV_Equal0~2_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_h_count[6]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|always0~0_combout\);

-- Location: FF_X59_Y16_N58
\inst8|u_vga_generator|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|always0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|vga_hs~q\);

-- Location: MLABCELL_X60_Y16_N42
\inst8|u_vga_generator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|LessThan1~0_combout\ = (!\inst8|u_vga_generator|v_count\(9) & (!\inst8|u_vga_generator|v_count\(2) & (!\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ & !\inst8|u_vga_generator|v_count[3]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	datab => \inst8|u_vga_generator|ALT_INV_v_count\(2),
	datac => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|LessThan1~0_combout\);

-- Location: MLABCELL_X60_Y16_N24
\inst8|u_vga_generator|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~2_combout\ = ( \inst8|u_vga_generator|LessThan1~0_combout\ & ( (\inst8|u_vga_generator|Equal3~0_combout\ & (\inst8|u_vga_generator|always0~1_combout\ & !\inst8|u_vga_generator|v_count\(1))) ) ) # ( 
-- !\inst8|u_vga_generator|LessThan1~0_combout\ & ( (\inst8|u_vga_generator|Equal3~0_combout\ & (\inst8|u_vga_generator|always0~1_combout\ & (!\inst8|u_vga_generator|v_count\(1) & \inst8|u_vga_generator|Equal3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_Equal3~0_combout\,
	datab => \inst8|u_vga_generator|ALT_INV_always0~1_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	datad => \inst8|u_vga_generator|ALT_INV_Equal3~1_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_LessThan1~0_combout\,
	combout => \inst8|u_vga_generator|always0~2_combout\);

-- Location: FF_X60_Y16_N25
\inst8|u_vga_generator|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|always0~2_combout\,
	clrn => \RST~input_o\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|vga_vs~q\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X55_Y13_N0
\inst8|u_vga_generator|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~41_sumout\ = SUM(( \inst8|u_vga_generator|y\(0) ) + ( VCC ) + ( !VCC ))
-- \inst8|u_vga_generator|Add3~42\ = CARRY(( \inst8|u_vga_generator|y\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(0),
	cin => GND,
	sumout => \inst8|u_vga_generator|Add3~41_sumout\,
	cout => \inst8|u_vga_generator|Add3~42\);

-- Location: FF_X61_Y16_N13
\inst8|u_vga_generator|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(4));

-- Location: LABCELL_X61_Y16_N45
\inst8|u_vga_generator|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~4_combout\ = ( !\inst8|u_vga_generator|v_count\(8) & ( (!\inst8|u_vga_generator|v_count\(6) & !\inst8|u_vga_generator|v_count\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(6),
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(7),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count\(8),
	combout => \inst8|u_vga_generator|always0~4_combout\);

-- Location: LABCELL_X61_Y16_N57
\inst8|u_vga_generator|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~5_combout\ = ( \inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ ) # ( !\inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ & ( (((\inst8|u_vga_generator|v_count\(1) & \inst8|u_vga_generator|v_count[0]~DUPLICATE_q\)) # 
-- (\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\)) # (\inst8|u_vga_generator|v_count[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	datab => \inst8|u_vga_generator|ALT_INV_v_count[3]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_v_count[0]~DUPLICATE_q\,
	dataf => \inst8|u_vga_generator|ALT_INV_v_count[2]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|always0~5_combout\);

-- Location: FF_X61_Y16_N10
\inst8|u_vga_generator|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add2~45_sumout\,
	clrn => \RST~input_o\,
	sclr => \inst8|u_vga_generator|Equal3~2_combout\,
	ena => \inst8|u_vga_generator|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|v_count\(3));

-- Location: LABCELL_X61_Y16_N36
\inst8|u_vga_generator|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~6_combout\ = ( \inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ & ( (!\inst8|u_vga_generator|v_count\(3) & (!\inst8|u_vga_generator|v_count[2]~DUPLICATE_q\ & (!\inst8|u_vga_generator|v_count\(1) & 
-- !\inst8|u_vga_generator|v_count\(4)))) ) ) # ( !\inst8|u_vga_generator|v_count[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(3),
	datab => \inst8|u_vga_generator|ALT_INV_v_count[2]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(1),
	datad => \inst8|u_vga_generator|ALT_INV_v_count\(4),
	dataf => \inst8|u_vga_generator|ALT_INV_v_count[5]~DUPLICATE_q\,
	combout => \inst8|u_vga_generator|always0~6_combout\);

-- Location: LABCELL_X61_Y16_N48
\inst8|u_vga_generator|always0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~9_combout\ = ( !\inst8|u_vga_generator|v_count\(9) & ( (((\inst8|u_vga_generator|always0~6_combout\ & (\inst8|u_vga_generator|always0~4_combout\))) # (\inst8|u_vga_generator|v_count\(10))) # 
-- (\inst8|u_vga_generator|v_count\(11)) ) ) # ( \inst8|u_vga_generator|v_count\(9) & ( ((((!\inst8|u_vga_generator|always0~4_combout\) # (\inst8|u_vga_generator|always0~5_combout\)) # (\inst8|u_vga_generator|v_count\(4))) # 
-- (\inst8|u_vga_generator|v_count\(10))) # (\inst8|u_vga_generator|v_count\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101111111111111110111111101110111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_v_count\(11),
	datab => \inst8|u_vga_generator|ALT_INV_v_count\(10),
	datac => \inst8|u_vga_generator|ALT_INV_v_count\(4),
	datad => \inst8|u_vga_generator|ALT_INV_always0~4_combout\,
	datae => \inst8|u_vga_generator|ALT_INV_v_count\(9),
	dataf => \inst8|u_vga_generator|ALT_INV_always0~5_combout\,
	datag => \inst8|u_vga_generator|ALT_INV_always0~6_combout\,
	combout => \inst8|u_vga_generator|always0~9_combout\);

-- Location: LABCELL_X58_Y16_N48
\inst8|u_vga_generator|y[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|y[10]~0_combout\ = ( \inst8|u_vga_generator|Equal0~1_combout\ & ( \inst8|u_vga_generator|LessThan0~0_combout\ & ( (\RST~input_o\ & (\inst8|u_vga_generator|h_count\(4) & (\inst8|u_vga_generator|h_count[1]~DUPLICATE_q\ & 
-- \inst8|u_vga_generator|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST~input_o\,
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	datac => \inst8|u_vga_generator|ALT_INV_h_count[1]~DUPLICATE_q\,
	datad => \inst8|u_vga_generator|ALT_INV_Equal0~0_combout\,
	datae => \inst8|u_vga_generator|ALT_INV_Equal0~1_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_LessThan0~0_combout\,
	combout => \inst8|u_vga_generator|y[10]~0_combout\);

-- Location: FF_X55_Y13_N2
\inst8|u_vga_generator|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~41_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(0));

-- Location: MLABCELL_X55_Y13_N3
\inst8|u_vga_generator|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~37_sumout\ = SUM(( \inst8|u_vga_generator|y\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~42\ ))
-- \inst8|u_vga_generator|Add3~38\ = CARRY(( \inst8|u_vga_generator|y\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(1),
	cin => \inst8|u_vga_generator|Add3~42\,
	sumout => \inst8|u_vga_generator|Add3~37_sumout\,
	cout => \inst8|u_vga_generator|Add3~38\);

-- Location: FF_X55_Y13_N5
\inst8|u_vga_generator|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~37_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(1));

-- Location: MLABCELL_X55_Y13_N6
\inst8|u_vga_generator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~21_sumout\ = SUM(( \inst8|u_vga_generator|y\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~38\ ))
-- \inst8|u_vga_generator|Add3~22\ = CARRY(( \inst8|u_vga_generator|y\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(2),
	cin => \inst8|u_vga_generator|Add3~38\,
	sumout => \inst8|u_vga_generator|Add3~21_sumout\,
	cout => \inst8|u_vga_generator|Add3~22\);

-- Location: FF_X55_Y13_N8
\inst8|u_vga_generator|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~21_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(2));

-- Location: MLABCELL_X55_Y13_N9
\inst8|u_vga_generator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~13_sumout\ = SUM(( \inst8|u_vga_generator|y\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~22\ ))
-- \inst8|u_vga_generator|Add3~14\ = CARRY(( \inst8|u_vga_generator|y\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	cin => \inst8|u_vga_generator|Add3~22\,
	sumout => \inst8|u_vga_generator|Add3~13_sumout\,
	cout => \inst8|u_vga_generator|Add3~14\);

-- Location: FF_X55_Y13_N11
\inst8|u_vga_generator|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~13_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(3));

-- Location: MLABCELL_X55_Y13_N12
\inst8|u_vga_generator|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~9_sumout\ = SUM(( \inst8|u_vga_generator|y\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~14\ ))
-- \inst8|u_vga_generator|Add3~10\ = CARRY(( \inst8|u_vga_generator|y\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	cin => \inst8|u_vga_generator|Add3~14\,
	sumout => \inst8|u_vga_generator|Add3~9_sumout\,
	cout => \inst8|u_vga_generator|Add3~10\);

-- Location: FF_X55_Y13_N14
\inst8|u_vga_generator|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~9_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(4));

-- Location: MLABCELL_X55_Y13_N15
\inst8|u_vga_generator|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~33_sumout\ = SUM(( \inst8|u_vga_generator|y\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~10\ ))
-- \inst8|u_vga_generator|Add3~34\ = CARRY(( \inst8|u_vga_generator|y\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(5),
	cin => \inst8|u_vga_generator|Add3~10\,
	sumout => \inst8|u_vga_generator|Add3~33_sumout\,
	cout => \inst8|u_vga_generator|Add3~34\);

-- Location: FF_X55_Y13_N17
\inst8|u_vga_generator|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~33_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(5));

-- Location: MLABCELL_X55_Y13_N18
\inst8|u_vga_generator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~5_sumout\ = SUM(( \inst8|u_vga_generator|y\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~34\ ))
-- \inst8|u_vga_generator|Add3~6\ = CARRY(( \inst8|u_vga_generator|y\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(6),
	cin => \inst8|u_vga_generator|Add3~34\,
	sumout => \inst8|u_vga_generator|Add3~5_sumout\,
	cout => \inst8|u_vga_generator|Add3~6\);

-- Location: FF_X55_Y13_N20
\inst8|u_vga_generator|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~5_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(6));

-- Location: MLABCELL_X55_Y13_N21
\inst8|u_vga_generator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~1_sumout\ = SUM(( \inst8|u_vga_generator|y\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~6\ ))
-- \inst8|u_vga_generator|Add3~2\ = CARRY(( \inst8|u_vga_generator|y\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(7),
	cin => \inst8|u_vga_generator|Add3~6\,
	sumout => \inst8|u_vga_generator|Add3~1_sumout\,
	cout => \inst8|u_vga_generator|Add3~2\);

-- Location: FF_X55_Y13_N23
\inst8|u_vga_generator|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~1_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(7));

-- Location: MLABCELL_X55_Y13_N24
\inst8|u_vga_generator|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~29_sumout\ = SUM(( \inst8|u_vga_generator|y\(8) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~2\ ))
-- \inst8|u_vga_generator|Add3~30\ = CARRY(( \inst8|u_vga_generator|y\(8) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(8),
	cin => \inst8|u_vga_generator|Add3~2\,
	sumout => \inst8|u_vga_generator|Add3~29_sumout\,
	cout => \inst8|u_vga_generator|Add3~30\);

-- Location: FF_X55_Y13_N26
\inst8|u_vga_generator|y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~29_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(8));

-- Location: MLABCELL_X55_Y13_N27
\inst8|u_vga_generator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~17_sumout\ = SUM(( \inst8|u_vga_generator|y\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~30\ ))
-- \inst8|u_vga_generator|Add3~18\ = CARRY(( \inst8|u_vga_generator|y\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(9),
	cin => \inst8|u_vga_generator|Add3~30\,
	sumout => \inst8|u_vga_generator|Add3~17_sumout\,
	cout => \inst8|u_vga_generator|Add3~18\);

-- Location: FF_X55_Y13_N29
\inst8|u_vga_generator|y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~17_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(9));

-- Location: MLABCELL_X55_Y13_N36
\inst1|inst2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|LessThan0~0_combout\ = ( \inst8|u_vga_generator|y\(5) & ( \inst8|u_vga_generator|y\(6) ) ) # ( !\inst8|u_vga_generator|y\(5) & ( (\inst8|u_vga_generator|y\(6) & ((\inst8|u_vga_generator|y\(3)) # (\inst8|u_vga_generator|y\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(6),
	datad => \inst8|u_vga_generator|ALT_INV_y\(3),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(5),
	combout => \inst1|inst2|LessThan0~0_combout\);

-- Location: MLABCELL_X55_Y13_N30
\inst8|u_vga_generator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add3~25_sumout\ = SUM(( \inst8|u_vga_generator|y\(10) ) + ( GND ) + ( \inst8|u_vga_generator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(10),
	cin => \inst8|u_vga_generator|Add3~18\,
	sumout => \inst8|u_vga_generator|Add3~25_sumout\);

-- Location: FF_X55_Y13_N32
\inst8|u_vga_generator|y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add3~25_sumout\,
	sclr => \inst8|u_vga_generator|always0~9_combout\,
	ena => \inst8|u_vga_generator|y[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|y\(10));

-- Location: MLABCELL_X55_Y13_N48
\inst1|inst2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|LessThan0~1_combout\ = ( !\inst8|u_vga_generator|y\(10) & ( \inst8|u_vga_generator|y\(8) & ( (!\inst8|u_vga_generator|y\(9)) # ((!\inst8|u_vga_generator|y\(7) & !\inst1|inst2|LessThan0~0_combout\)) ) ) ) # ( !\inst8|u_vga_generator|y\(10) & ( 
-- !\inst8|u_vga_generator|y\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011101110101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(9),
	datab => \inst8|u_vga_generator|ALT_INV_y\(7),
	datad => \inst1|inst2|ALT_INV_LessThan0~0_combout\,
	datae => \inst8|u_vga_generator|ALT_INV_y\(10),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(8),
	combout => \inst1|inst2|LessThan0~1_combout\);

-- Location: LABCELL_X58_Y14_N36
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

-- Location: LABCELL_X56_Y16_N0
\inst8|u_vga_generator|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~41_sumout\ = SUM(( \inst8|u_vga_generator|x\(0) ) + ( VCC ) + ( !VCC ))
-- \inst8|u_vga_generator|Add1~42\ = CARRY(( \inst8|u_vga_generator|x\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(0),
	cin => GND,
	sumout => \inst8|u_vga_generator|Add1~41_sumout\,
	cout => \inst8|u_vga_generator|Add1~42\);

-- Location: LABCELL_X59_Y16_N39
\inst8|u_vga_generator|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~7_combout\ = ( \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\ & ( \inst8|u_vga_generator|h_count\(2) & ( (!\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & (((\inst8|u_vga_generator|h_count\(3) & 
-- \inst8|u_vga_generator|h_count[1]~DUPLICATE_q\)) # (\inst8|u_vga_generator|h_count\(4)))) # (\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & (!\inst8|u_vga_generator|h_count\(4) & (!\inst8|u_vga_generator|h_count\(3)))) ) ) ) # ( 
-- !\inst8|u_vga_generator|h_count[0]~DUPLICATE_q\ & ( \inst8|u_vga_generator|h_count\(2) & ( !\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ $ (((!\inst8|u_vga_generator|h_count\(4) & ((!\inst8|u_vga_generator|h_count\(3)) # 
-- (!\inst8|u_vga_generator|h_count[1]~DUPLICATE_q\))))) ) ) ) # ( \inst8|u_vga_generator|h_count[0]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|h_count\(2) & ( !\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ $ (!\inst8|u_vga_generator|h_count\(4)) ) ) ) # ( 
-- !\inst8|u_vga_generator|h_count[0]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|h_count\(2) & ( !\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ $ (!\inst8|u_vga_generator|h_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011010100110001001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst8|u_vga_generator|ALT_INV_h_count\(4),
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(3),
	datad => \inst8|u_vga_generator|ALT_INV_h_count[1]~DUPLICATE_q\,
	datae => \inst8|u_vga_generator|ALT_INV_h_count[0]~DUPLICATE_q\,
	dataf => \inst8|u_vga_generator|ALT_INV_h_count\(2),
	combout => \inst8|u_vga_generator|always0~7_combout\);

-- Location: LABCELL_X59_Y16_N45
\inst8|u_vga_generator|always0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~8_combout\ = ( \inst8|u_vga_generator|always0~7_combout\ & ( (!\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\) # ((!\inst8|u_vga_generator|h_count\(5) & !\inst8|u_vga_generator|h_count\(6))) ) ) # ( 
-- !\inst8|u_vga_generator|always0~7_combout\ & ( (!\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & ((\inst8|u_vga_generator|h_count\(6)) # (\inst8|u_vga_generator|h_count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(5),
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(6),
	dataf => \inst8|u_vga_generator|ALT_INV_always0~7_combout\,
	combout => \inst8|u_vga_generator|always0~8_combout\);

-- Location: LABCELL_X58_Y16_N12
\inst8|u_vga_generator|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|always0~3_combout\ = ( \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ & ( \inst8|u_vga_generator|always0~8_combout\ ) ) # ( !\inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ & ( \inst8|u_vga_generator|always0~8_combout\ & ( 
-- (!\inst8|u_vga_generator|h_count[9]~DUPLICATE_q\ $ (\inst8|u_vga_generator|h_count\(8))) # (\inst8|u_vga_generator|h_count\(11)) ) ) ) # ( \inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|always0~8_combout\ ) ) # ( 
-- !\inst8|u_vga_generator|h_count[10]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|always0~8_combout\ & ( ((!\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & (!\inst8|u_vga_generator|h_count[9]~DUPLICATE_q\ & !\inst8|u_vga_generator|h_count\(8))) # 
-- (\inst8|u_vga_generator|h_count[7]~DUPLICATE_q\ & (\inst8|u_vga_generator|h_count[9]~DUPLICATE_q\ & \inst8|u_vga_generator|h_count\(8)))) # (\inst8|u_vga_generator|h_count\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100011111111111111111111111001111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst8|u_vga_generator|ALT_INV_h_count[9]~DUPLICATE_q\,
	datac => \inst8|u_vga_generator|ALT_INV_h_count\(11),
	datad => \inst8|u_vga_generator|ALT_INV_h_count\(8),
	datae => \inst8|u_vga_generator|ALT_INV_h_count[10]~DUPLICATE_q\,
	dataf => \inst8|u_vga_generator|ALT_INV_always0~8_combout\,
	combout => \inst8|u_vga_generator|always0~3_combout\);

-- Location: FF_X56_Y16_N2
\inst8|u_vga_generator|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~41_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(0));

-- Location: LABCELL_X56_Y16_N3
\inst8|u_vga_generator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~37_sumout\ = SUM(( \inst8|u_vga_generator|x\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~42\ ))
-- \inst8|u_vga_generator|Add1~38\ = CARRY(( \inst8|u_vga_generator|x\(1) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(1),
	cin => \inst8|u_vga_generator|Add1~42\,
	sumout => \inst8|u_vga_generator|Add1~37_sumout\,
	cout => \inst8|u_vga_generator|Add1~38\);

-- Location: FF_X56_Y16_N5
\inst8|u_vga_generator|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~37_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(1));

-- Location: LABCELL_X56_Y16_N6
\inst8|u_vga_generator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~33_sumout\ = SUM(( \inst8|u_vga_generator|x\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~38\ ))
-- \inst8|u_vga_generator|Add1~34\ = CARRY(( \inst8|u_vga_generator|x\(2) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(2),
	cin => \inst8|u_vga_generator|Add1~38\,
	sumout => \inst8|u_vga_generator|Add1~33_sumout\,
	cout => \inst8|u_vga_generator|Add1~34\);

-- Location: FF_X56_Y16_N8
\inst8|u_vga_generator|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~33_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(2));

-- Location: LABCELL_X56_Y16_N9
\inst8|u_vga_generator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~29_sumout\ = SUM(( \inst8|u_vga_generator|x\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~34\ ))
-- \inst8|u_vga_generator|Add1~30\ = CARRY(( \inst8|u_vga_generator|x\(3) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(3),
	cin => \inst8|u_vga_generator|Add1~34\,
	sumout => \inst8|u_vga_generator|Add1~29_sumout\,
	cout => \inst8|u_vga_generator|Add1~30\);

-- Location: FF_X56_Y16_N11
\inst8|u_vga_generator|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~29_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(3));

-- Location: LABCELL_X56_Y16_N12
\inst8|u_vga_generator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~25_sumout\ = SUM(( \inst8|u_vga_generator|x\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~30\ ))
-- \inst8|u_vga_generator|Add1~26\ = CARRY(( \inst8|u_vga_generator|x\(4) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(4),
	cin => \inst8|u_vga_generator|Add1~30\,
	sumout => \inst8|u_vga_generator|Add1~25_sumout\,
	cout => \inst8|u_vga_generator|Add1~26\);

-- Location: FF_X56_Y16_N14
\inst8|u_vga_generator|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~25_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(4));

-- Location: LABCELL_X56_Y16_N15
\inst8|u_vga_generator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~21_sumout\ = SUM(( \inst8|u_vga_generator|x\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~26\ ))
-- \inst8|u_vga_generator|Add1~22\ = CARRY(( \inst8|u_vga_generator|x\(5) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(5),
	cin => \inst8|u_vga_generator|Add1~26\,
	sumout => \inst8|u_vga_generator|Add1~21_sumout\,
	cout => \inst8|u_vga_generator|Add1~22\);

-- Location: FF_X56_Y16_N17
\inst8|u_vga_generator|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~21_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(5));

-- Location: LABCELL_X56_Y16_N18
\inst8|u_vga_generator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~17_sumout\ = SUM(( \inst8|u_vga_generator|x\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~22\ ))
-- \inst8|u_vga_generator|Add1~18\ = CARRY(( \inst8|u_vga_generator|x\(6) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(6),
	cin => \inst8|u_vga_generator|Add1~22\,
	sumout => \inst8|u_vga_generator|Add1~17_sumout\,
	cout => \inst8|u_vga_generator|Add1~18\);

-- Location: FF_X56_Y16_N20
\inst8|u_vga_generator|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~17_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(6));

-- Location: LABCELL_X56_Y16_N21
\inst8|u_vga_generator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~13_sumout\ = SUM(( \inst8|u_vga_generator|x\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~18\ ))
-- \inst8|u_vga_generator|Add1~14\ = CARRY(( \inst8|u_vga_generator|x\(7) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(7),
	cin => \inst8|u_vga_generator|Add1~18\,
	sumout => \inst8|u_vga_generator|Add1~13_sumout\,
	cout => \inst8|u_vga_generator|Add1~14\);

-- Location: FF_X56_Y16_N23
\inst8|u_vga_generator|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~13_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(7));

-- Location: LABCELL_X56_Y16_N24
\inst8|u_vga_generator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~9_sumout\ = SUM(( \inst8|u_vga_generator|x\(8) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~14\ ))
-- \inst8|u_vga_generator|Add1~10\ = CARRY(( \inst8|u_vga_generator|x\(8) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(8),
	cin => \inst8|u_vga_generator|Add1~14\,
	sumout => \inst8|u_vga_generator|Add1~9_sumout\,
	cout => \inst8|u_vga_generator|Add1~10\);

-- Location: FF_X56_Y16_N26
\inst8|u_vga_generator|x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~9_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(8));

-- Location: LABCELL_X56_Y16_N27
\inst8|u_vga_generator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~5_sumout\ = SUM(( \inst8|u_vga_generator|x\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~10\ ))
-- \inst8|u_vga_generator|Add1~6\ = CARRY(( \inst8|u_vga_generator|x\(9) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(9),
	cin => \inst8|u_vga_generator|Add1~10\,
	sumout => \inst8|u_vga_generator|Add1~5_sumout\,
	cout => \inst8|u_vga_generator|Add1~6\);

-- Location: FF_X56_Y16_N29
\inst8|u_vga_generator|x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~5_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(9));

-- Location: LABCELL_X56_Y16_N30
\inst8|u_vga_generator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|u_vga_generator|Add1~1_sumout\ = SUM(( \inst8|u_vga_generator|x\(10) ) + ( GND ) + ( \inst8|u_vga_generator|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(10),
	cin => \inst8|u_vga_generator|Add1~6\,
	sumout => \inst8|u_vga_generator|Add1~1_sumout\);

-- Location: FF_X56_Y16_N32
\inst8|u_vga_generator|x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clock_25~q\,
	d => \inst8|u_vga_generator|Add1~1_sumout\,
	sclr => \inst8|u_vga_generator|always0~3_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|u_vga_generator|x\(10));

-- Location: MLABCELL_X55_Y16_N0
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ = SUM(( \inst8|u_vga_generator|x\(4) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ = CARRY(( \inst8|u_vga_generator|x\(4) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(4),
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\);

-- Location: MLABCELL_X55_Y16_N3
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ = SUM(( !\inst8|u_vga_generator|x\(5) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ = CARRY(( !\inst8|u_vga_generator|x\(5) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ = SHARE(\inst8|u_vga_generator|x\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(5),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\);

-- Location: MLABCELL_X55_Y16_N6
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ = SUM(( !\inst8|u_vga_generator|x\(6) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ = CARRY(( !\inst8|u_vga_generator|x\(6) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ = SHARE(\inst8|u_vga_generator|x\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(6),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\);

-- Location: MLABCELL_X55_Y16_N9
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ = SUM(( !\inst8|u_vga_generator|x\(7) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ = CARRY(( !\inst8|u_vga_generator|x\(7) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ = SHARE(\inst8|u_vga_generator|x\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(7),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\);

-- Location: MLABCELL_X55_Y16_N12
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ = SUM(( \inst8|u_vga_generator|x\(8) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ = CARRY(( \inst8|u_vga_generator|x\(8) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(8),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\);

-- Location: MLABCELL_X55_Y16_N15
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ = SUM(( !\inst8|u_vga_generator|x\(9) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ = CARRY(( !\inst8|u_vga_generator|x\(9) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ = SHARE(\inst8|u_vga_generator|x\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(9),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\);

-- Location: MLABCELL_X55_Y16_N18
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ = SUM(( \inst8|u_vga_generator|x\(10) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ = CARRY(( \inst8|u_vga_generator|x\(10) ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(10),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	shareout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: MLABCELL_X55_Y16_N21
\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ = SUM(( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	sharein => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\);

-- Location: LABCELL_X54_Y16_N6
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\ = ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\);

-- Location: MLABCELL_X55_Y16_N36
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(9),
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\);

-- Location: MLABCELL_X55_Y16_N57
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\);

-- Location: LABCELL_X54_Y16_N27
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst8|u_vga_generator|ALT_INV_x\(7),
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\);

-- Location: LABCELL_X54_Y16_N15
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\ = ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\);

-- Location: MLABCELL_X55_Y16_N42
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(5),
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\);

-- Location: LABCELL_X54_Y16_N30
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\);

-- Location: LABCELL_X54_Y16_N33
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( \inst8|u_vga_generator|x\(3) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\ = CARRY(( \inst8|u_vga_generator|x\(3) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(3),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~38_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\);

-- Location: LABCELL_X54_Y16_N36
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(4))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(4))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(4),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~34\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X54_Y16_N39
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\ = CARRY(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~23_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~22_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~22_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~23_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~30\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X54_Y16_N42
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(6))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(6))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(6),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~26\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\);

-- Location: LABCELL_X54_Y16_N45
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~12_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~11_combout\) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~11_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~12_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~22\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X54_Y16_N48
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(8))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(8))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(8),
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~10\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X54_Y16_N51
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~18\ = CARRY(( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~9_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~14\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X54_Y16_N54
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(10))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(10),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~18\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X54_Y16_N57
\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X55_Y16_N48
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\ = ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\);

-- Location: LABCELL_X53_Y15_N12
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(8),
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\);

-- Location: MLABCELL_X55_Y16_N24
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ & ( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # 
-- (\inst8|u_vga_generator|x\(7)) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ & ( (\inst8|u_vga_generator|x\(7) & \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(7),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\);

-- Location: MLABCELL_X55_Y16_N54
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\);

-- Location: LABCELL_X53_Y15_N15
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(6),
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\);

-- Location: MLABCELL_X55_Y16_N39
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst8|u_vga_generator|x\(5) ) ) # ( 
-- !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(5),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\);

-- Location: MLABCELL_X55_Y16_N27
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\ = ( \inst8|u_vga_generator|x\(4) & ( (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) ) # ( !\inst8|u_vga_generator|x\(4) & ( (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & 
-- \inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	dataf => \inst8|u_vga_generator|ALT_INV_x\(4),
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\);

-- Location: LABCELL_X54_Y15_N0
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\);

-- Location: LABCELL_X54_Y15_N3
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\ = SUM(( \inst8|u_vga_generator|x\(2) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\ = CARRY(( \inst8|u_vga_generator|x\(2) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(2),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~38_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\);

-- Location: LABCELL_X54_Y15_N6
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst8|u_vga_generator|x\(3))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst8|u_vga_generator|x\(3))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_x\(3),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~34\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\);

-- Location: LABCELL_X54_Y15_N9
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~25_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~30\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\);

-- Location: LABCELL_X54_Y15_N12
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~19_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~26\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\);

-- Location: LABCELL_X54_Y15_N15
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( GND ) + ( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\))) ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\ = CARRY(( GND ) + ( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\))) ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~14_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~15_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~22\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\);

-- Location: LABCELL_X54_Y15_N18
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~18\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\);

-- Location: LABCELL_X54_Y15_N21
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~6_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~7_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~10\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~14\);

-- Location: LABCELL_X54_Y15_N24
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_9~17_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~9_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[53]~10_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~9_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~14\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~6_cout\);

-- Location: LABCELL_X54_Y15_N27
\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: LABCELL_X53_Y15_N3
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0_combout\ = ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0_combout\);

-- Location: LABCELL_X53_Y15_N21
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5_combout\ = ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5_combout\);

-- Location: LABCELL_X53_Y15_N33
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\ & ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\ & ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) ) # ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~6_combout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[52]~7_combout\ & ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~6_combout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~7_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8_combout\);

-- Location: LABCELL_X54_Y16_N21
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~9_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\);

-- Location: LABCELL_X54_Y16_N3
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\ = (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\ & \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\);

-- Location: LABCELL_X53_Y15_N42
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ ) ) # ( 
-- !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) ) # ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ & ( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\) ) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~21_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~15_combout\ & ( 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[50]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~14_combout\,
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~15_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\);

-- Location: LABCELL_X54_Y16_N18
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~25_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\);

-- Location: MLABCELL_X55_Y16_N45
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[49]~19_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~19_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\);

-- Location: LABCELL_X53_Y15_N27
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) # ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\ ) ) ) # ( 
-- !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[48]~25_combout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~25_combout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\);

-- Location: LABCELL_X53_Y15_N57
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \inst8|u_vga_generator|x\(3) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_9~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(3),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\);

-- Location: LABCELL_X54_Y15_N30
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\);

-- Location: LABCELL_X54_Y15_N33
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~33_sumout\ = SUM(( \inst8|u_vga_generator|x\(1) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\ = CARRY(( \inst8|u_vga_generator|x\(1) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(1),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~38_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~33_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\);

-- Location: LABCELL_X54_Y15_N36
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~29_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst8|u_vga_generator|x\(2))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst8|u_vga_generator|x\(2))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_x\(2),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~34\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~29_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\);

-- Location: LABCELL_X54_Y15_N39
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~25_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~30\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~25_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\);

-- Location: LABCELL_X54_Y15_N42
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~21_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~26\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~21_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\);

-- Location: LABCELL_X54_Y15_N45
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~17_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~20_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~22\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~17_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\);

-- Location: LABCELL_X54_Y15_N48
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~13_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~18\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~13_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\);

-- Location: LABCELL_X54_Y15_N51
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~9_sumout\ = SUM(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\)))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\ ))
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~10\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~9_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\)))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~1_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~14\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~9_sumout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~10\);

-- Location: LABCELL_X54_Y15_N54
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~13_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~8_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[61]~5_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~5_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~8_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~10\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~6_cout\);

-- Location: LABCELL_X54_Y15_N57
\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\);

-- Location: LABCELL_X54_Y16_N0
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) ) # ( 
-- !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~1_combout\ & ( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[60]~3_combout\ & \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~1_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4_combout\);

-- Location: LABCELL_X53_Y15_N39
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~17_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13_combout\);

-- Location: LABCELL_X53_Y15_N51
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[59]~16_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17_combout\);

-- Location: LABCELL_X56_Y15_N54
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[58]~20_combout\) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~20_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21_combout\);

-- Location: LABCELL_X53_Y15_N6
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~25_sumout\ & ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24_combout\);

-- Location: LABCELL_X53_Y15_N48
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ & ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27_combout\);

-- Location: LABCELL_X53_Y15_N54
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ & ( (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ & ( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29_combout\);

-- Location: LABCELL_X53_Y15_N18
\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30_combout\ = ( \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \inst8|u_vga_generator|x\(2) ) ) # ( !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_10~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(2),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	dataf => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30_combout\);

-- Location: MLABCELL_X55_Y15_N30
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~38_cout\);

-- Location: MLABCELL_X55_Y15_N33
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~34_cout\ = CARRY(( \inst8|u_vga_generator|x\(0) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(0),
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~38_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~34_cout\);

-- Location: MLABCELL_X55_Y15_N36
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~30_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~33_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\inst8|u_vga_generator|x\(1))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_x\(1),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~34_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~30_cout\);

-- Location: MLABCELL_X55_Y15_N39
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~26_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~29_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[64]~30_combout\))) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~30_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~26_cout\);

-- Location: MLABCELL_X55_Y15_N42
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~22_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~25_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[65]~29_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~26_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~22_cout\);

-- Location: MLABCELL_X55_Y15_N45
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~21_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~27_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[66]~24_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~24_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~27_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~22_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~18_cout\);

-- Location: MLABCELL_X55_Y15_N48
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~14_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~17_sumout\))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[67]~21_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~21_combout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~18_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~14_cout\);

-- Location: MLABCELL_X55_Y15_N51
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~10_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~13_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~17_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[68]~13_combout\))) ) + ( GND ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~13_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~17_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~14_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~10_cout\);

-- Location: MLABCELL_X55_Y15_N54
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( (!\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~9_sumout\)))) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~4_combout\)) # (\inst1|inst2|Div0|auto_generated|divider|divider|StageOut[69]~0_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~0_combout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~4_combout\,
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~10_cout\,
	cout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~6_cout\);

-- Location: MLABCELL_X55_Y15_N57
\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div0|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X56_Y15_N27
\inst1|inst2|adr_brick[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|adr_brick[0]~0_combout\ = !\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \inst1|inst2|adr_brick[0]~0_combout\);

-- Location: FF_X56_Y15_N28
\inst1|inst2|adr_brick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|adr_brick[0]~0_combout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(0));

-- Location: LABCELL_X56_Y15_N51
\inst1|inst2|adr_brick[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|adr_brick[1]~1_combout\ = !\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \inst1|inst2|adr_brick[1]~1_combout\);

-- Location: FF_X56_Y15_N53
\inst1|inst2|adr_brick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|adr_brick[1]~1_combout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(1));

-- Location: LABCELL_X58_Y14_N9
\inst1|inst2|adr_brick[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|adr_brick[2]~2_combout\ = !\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|adr_brick[2]~2_combout\);

-- Location: FF_X58_Y14_N10
\inst1|inst2|adr_brick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|adr_brick[2]~2_combout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(2));

-- Location: LABCELL_X54_Y13_N30
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ = SUM(( \inst8|u_vga_generator|y\(5) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ = CARRY(( \inst8|u_vga_generator|y\(5) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(5),
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\);

-- Location: LABCELL_X54_Y13_N33
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\ = SUM(( !\inst8|u_vga_generator|y\(6) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\ = CARRY(( !\inst8|u_vga_generator|y\(6) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\ = SHARE(\inst8|u_vga_generator|y\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(6),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\);

-- Location: LABCELL_X54_Y13_N36
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\ = SUM(( !\inst8|u_vga_generator|y\(7) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\ = CARRY(( !\inst8|u_vga_generator|y\(7) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\ = SHARE(\inst8|u_vga_generator|y\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(7),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~10\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~11\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\);

-- Location: LABCELL_X54_Y13_N39
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\ = SUM(( \inst8|u_vga_generator|y\(8) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\ = CARRY(( \inst8|u_vga_generator|y\(8) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(8),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~14\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~15\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\);

-- Location: LABCELL_X54_Y13_N42
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\ = SUM(( !\inst8|u_vga_generator|y\(9) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\ = CARRY(( !\inst8|u_vga_generator|y\(9) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\ = SHARE(\inst8|u_vga_generator|y\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(9),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~18\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~19\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\);

-- Location: LABCELL_X54_Y13_N45
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ = SUM(( \inst8|u_vga_generator|y\(10) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ = CARRY(( \inst8|u_vga_generator|y\(10) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(10),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~22\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~23\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\,
	shareout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LABCELL_X54_Y13_N48
\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ = SUM(( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\,
	sharein => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\);

-- Location: LABCELL_X54_Y13_N24
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16_combout\ = ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16_combout\);

-- Location: LABCELL_X54_Y13_N12
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_y\(10),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\);

-- Location: LABCELL_X54_Y13_N21
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\ = ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~17_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\);

-- Location: LABCELL_X54_Y13_N6
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(8),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\);

-- Location: LABCELL_X54_Y13_N57
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\ = ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~9_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\);

-- Location: LABCELL_X54_Y13_N0
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(6),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\);

-- Location: LABCELL_X54_Y14_N30
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\);

-- Location: LABCELL_X54_Y14_N33
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( \inst8|u_vga_generator|y\(4) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\ = CARRY(( \inst8|u_vga_generator|y\(4) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(4),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~34_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X54_Y14_N36
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(5))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(5))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(5),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~30\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X54_Y14_N39
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\ = CARRY(( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~19_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~18_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~18_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~19_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~26\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X54_Y14_N42
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(7))) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(7))) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(7),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~13_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~10\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X54_Y14_N45
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\ = CARRY(( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~26_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~25_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~25_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~26_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~14\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X54_Y14_N48
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(9))) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\inst8|u_vga_generator|y\(9))) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(9),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~21_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~18\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X54_Y14_N51
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~17_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[40]~16_combout\) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~16_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~17_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~22\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X54_Y14_N54
\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X53_Y14_N15
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11_combout\);

-- Location: LABCELL_X54_Y13_N3
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~21_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~21_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14_combout\);

-- Location: LABCELL_X54_Y13_N18
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(9),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15_combout\);

-- Location: LABCELL_X54_Y13_N9
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\) # 
-- (\inst8|u_vga_generator|y\(8)) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~17_sumout\ & ( (\inst8|u_vga_generator|y\(8) & \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(8),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~17_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\);

-- Location: LABCELL_X54_Y13_N27
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~13_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~13_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\);

-- Location: LABCELL_X54_Y13_N54
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(7),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LABCELL_X53_Y14_N27
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst8|u_vga_generator|y\(6) ) ) # ( 
-- !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(6),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~9_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\);

-- Location: LABCELL_X54_Y13_N15
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\) # 
-- (\inst8|u_vga_generator|y\(5)) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & \inst8|u_vga_generator|y\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\);

-- Location: LABCELL_X54_Y14_N0
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\);

-- Location: LABCELL_X54_Y14_N3
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( \inst8|u_vga_generator|y\(3) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\ = CARRY(( \inst8|u_vga_generator|y\(3) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(3),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~34_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X54_Y14_N6
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst8|u_vga_generator|y\(4))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst8|u_vga_generator|y\(4))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~30\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X54_Y14_N9
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[35]~21_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~26\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\);

-- Location: LABCELL_X54_Y14_N12
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~2_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~22\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X54_Y14_N15
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~10\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X54_Y14_N18
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~12_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~14\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X54_Y14_N21
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~15_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[39]~14_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[39]~15_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~18\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X54_Y14_N24
\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: LABCELL_X53_Y14_N57
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[38]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[38]~12_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13_combout\);

-- Location: LABCELL_X53_Y14_N24
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\ & ( ((!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~13_sumout\ & ( 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~7_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[37]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\);

-- Location: LABCELL_X53_Y14_N3
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~9_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\);

-- Location: LABCELL_X53_Y14_N6
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[36]~2_combout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[36]~2_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\);

-- Location: LABCELL_X53_Y14_N42
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~25_sumout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[35]~21_combout\ & 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[35]~21_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\);

-- Location: LABCELL_X53_Y14_N39
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) # (\inst8|u_vga_generator|y\(4)) ) ) # ( 
-- !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~29_sumout\ & ( (\inst8|u_vga_generator|y\(4) & \inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(4),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\);

-- Location: MLABCELL_X55_Y14_N0
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\);

-- Location: MLABCELL_X55_Y14_N3
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\ = SUM(( \inst8|u_vga_generator|y\(2) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\ = CARRY(( \inst8|u_vga_generator|y\(2) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(2),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~34_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\);

-- Location: MLABCELL_X55_Y14_N6
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\ = SUM(( VCC ) + ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst8|u_vga_generator|y\(3))) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\ = CARRY(( VCC ) + ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst8|u_vga_generator|y\(3))) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~30\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\);

-- Location: MLABCELL_X55_Y14_N9
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~26\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\);

-- Location: MLABCELL_X55_Y14_N12
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~22\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\);

-- Location: MLABCELL_X55_Y14_N15
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\)) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\)) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~1_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~18\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\);

-- Location: MLABCELL_X55_Y14_N18
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[45]~9_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~10\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~14\);

-- Location: MLABCELL_X55_Y14_N21
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_9~17_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~13_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[46]~11_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~11_combout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[46]~13_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~14\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~6_cout\);

-- Location: MLABCELL_X55_Y14_N24
\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: LABCELL_X53_Y14_N51
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~13_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\);

-- Location: LABCELL_X53_Y14_N9
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[45]~9_combout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[45]~9_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10_combout\);

-- Location: LABCELL_X53_Y14_N36
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~9_sumout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[44]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~1_combout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LABCELL_X53_Y14_N18
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~21_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\);

-- Location: LABCELL_X53_Y14_N21
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[43]~22_combout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\);

-- Location: LABCELL_X53_Y14_N45
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[42]~28_combout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\);

-- Location: LABCELL_X53_Y14_N30
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ( \inst8|u_vga_generator|y\(3) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_9~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_y\(3),
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\);

-- Location: MLABCELL_X55_Y14_N30
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\);

-- Location: MLABCELL_X55_Y14_N33
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~29_sumout\ = SUM(( \inst8|u_vga_generator|y\(1) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\ = CARRY(( \inst8|u_vga_generator|y\(1) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(1),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~34_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~29_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\);

-- Location: MLABCELL_X55_Y14_N36
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~25_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst8|u_vga_generator|y\(2))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst8|u_vga_generator|y\(2))) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(2),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~30\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~25_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\);

-- Location: MLABCELL_X55_Y14_N39
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~21_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~31_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~26\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~21_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\);

-- Location: MLABCELL_X55_Y14_N42
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~17_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~29_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~22\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~17_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\);

-- Location: MLABCELL_X55_Y14_N45
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~13_sumout\ = SUM(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~20_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~23_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~18\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~13_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\);

-- Location: MLABCELL_X55_Y14_N48
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~9_sumout\ = SUM(( GND ) + ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\ ))
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~10\ = CARRY(( GND ) + ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~4_combout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~14\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~9_sumout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~10\);

-- Location: MLABCELL_X55_Y14_N51
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~13_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~10_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~10_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~10\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~6_cout\);

-- Location: MLABCELL_X55_Y14_N54
\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\);

-- Location: LABCELL_X56_Y14_N48
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~9_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0_combout\);

-- Location: LABCELL_X56_Y14_N51
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~4_combout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LABCELL_X56_Y14_N54
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~20_combout\ & ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\inst1|inst2|Div1|auto_generated|divider|divider|op_10~17_sumout\))) # (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[51]~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~23_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~20_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24_combout\);

-- Location: LABCELL_X56_Y14_N57
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~21_sumout\ & ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27_combout\);

-- Location: LABCELL_X53_Y14_N0
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[50]~29_combout\ & ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~29_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30_combout\);

-- Location: LABCELL_X53_Y14_N33
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[49]~31_combout\ & ( (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~25_sumout\ & 
-- !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~31_combout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32_combout\);

-- Location: LABCELL_X53_Y14_N12
\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33_combout\ = ( \inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( \inst8|u_vga_generator|y\(2) ) ) # ( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_10~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33_combout\);

-- Location: LABCELL_X56_Y14_N18
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~34_cout\);

-- Location: LABCELL_X56_Y14_N21
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~30_cout\ = CARRY(( \inst8|u_vga_generator|y\(0) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(0),
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~34_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~30_cout\);

-- Location: LABCELL_X56_Y14_N24
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~26_cout\ = CARRY(( VCC ) + ( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~29_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (\inst8|u_vga_generator|y\(1))) ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(1),
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	dataf => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~30_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~26_cout\);

-- Location: LABCELL_X56_Y14_N27
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~22_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~25_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[56]~33_combout\)) ) + ( VCC ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~26_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~22_cout\);

-- Location: LABCELL_X56_Y14_N30
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~18_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~21_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[57]~32_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~32_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~22_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~18_cout\);

-- Location: LABCELL_X56_Y14_N33
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~14_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~17_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~30_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[58]~27_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~27_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~30_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~18_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~14_cout\);

-- Location: LABCELL_X56_Y14_N36
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~10_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & ((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~13_sumout\))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[59]~24_combout\)) ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~24_combout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~14_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~10_cout\);

-- Location: LABCELL_X56_Y14_N39
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|op_11~9_sumout\)))) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (((\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\)) # (\inst1|inst2|Div1|auto_generated|divider|divider|StageOut[60]~0_combout\))) ) + ( VCC ) + ( 
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~0_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\,
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~10_cout\,
	cout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~6_cout\);

-- Location: LABCELL_X56_Y14_N42
\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst1|inst2|Div1|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X56_Y14_N0
\inst1|inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~1_sumout\ = SUM(( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add0~2\ = CARRY(( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add0~3\ = SHARE((!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & !\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst2|Add0~1_sumout\,
	cout => \inst1|inst2|Add0~2\,
	shareout => \inst1|inst2|Add0~3\);

-- Location: FF_X56_Y14_N1
\inst1|inst2|adr_brick[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~1_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(3));

-- Location: LABCELL_X56_Y14_N3
\inst1|inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~5_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ $ (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ $ 
-- (!\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( \inst1|inst2|Add0~3\ ) + ( \inst1|inst2|Add0~2\ ))
-- \inst1|inst2|Add0~6\ = CARRY(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ $ (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)) ) 
-- + ( \inst1|inst2|Add0~3\ ) + ( \inst1|inst2|Add0~2\ ))
-- \inst1|inst2|Add0~7\ = SHARE((!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & ((!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (!\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\))) 
-- # (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & (!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & !\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101000100000000000000000001001100101100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => \inst1|inst2|Add0~2\,
	sharein => \inst1|inst2|Add0~3\,
	sumout => \inst1|inst2|Add0~5_sumout\,
	cout => \inst1|inst2|Add0~6\,
	shareout => \inst1|inst2|Add0~7\);

-- Location: FF_X56_Y14_N4
\inst1|inst2|adr_brick[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~5_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(4));

-- Location: LABCELL_X56_Y14_N6
\inst1|inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~9_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add0~7\ ) + ( \inst1|inst2|Add0~6\ ))
-- \inst1|inst2|Add0~10\ = CARRY(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add0~7\ ) + ( \inst1|inst2|Add0~6\ ))
-- \inst1|inst2|Add0~11\ = SHARE((!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & !\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	cin => \inst1|inst2|Add0~6\,
	sharein => \inst1|inst2|Add0~7\,
	sumout => \inst1|inst2|Add0~9_sumout\,
	cout => \inst1|inst2|Add0~10\,
	shareout => \inst1|inst2|Add0~11\);

-- Location: FF_X56_Y14_N7
\inst1|inst2|adr_brick[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~9_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(5));

-- Location: LABCELL_X56_Y14_N9
\inst1|inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~13_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) ) + ( \inst1|inst2|Add0~11\ ) + ( \inst1|inst2|Add0~10\ ))
-- \inst1|inst2|Add0~14\ = CARRY(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) ) + ( \inst1|inst2|Add0~11\ ) + ( \inst1|inst2|Add0~10\ ))
-- \inst1|inst2|Add0~15\ = SHARE((!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	cin => \inst1|inst2|Add0~10\,
	sharein => \inst1|inst2|Add0~11\,
	sumout => \inst1|inst2|Add0~13_sumout\,
	cout => \inst1|inst2|Add0~14\,
	shareout => \inst1|inst2|Add0~15\);

-- Location: FF_X56_Y14_N10
\inst1|inst2|adr_brick[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~13_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(6));

-- Location: LABCELL_X56_Y14_N12
\inst1|inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~17_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) ) + ( \inst1|inst2|Add0~15\ ) + ( \inst1|inst2|Add0~14\ ))
-- \inst1|inst2|Add0~18\ = CARRY(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\) ) + ( \inst1|inst2|Add0~15\ ) + ( \inst1|inst2|Add0~14\ ))
-- \inst1|inst2|Add0~19\ = SHARE((!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ & !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	cin => \inst1|inst2|Add0~14\,
	sharein => \inst1|inst2|Add0~15\,
	sumout => \inst1|inst2|Add0~17_sumout\,
	cout => \inst1|inst2|Add0~18\,
	shareout => \inst1|inst2|Add0~19\);

-- Location: FF_X56_Y14_N14
\inst1|inst2|adr_brick[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~17_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(7));

-- Location: LABCELL_X56_Y14_N15
\inst1|inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~21_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\) ) + ( \inst1|inst2|Add0~19\ ) + ( \inst1|inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datab => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	cin => \inst1|inst2|Add0~18\,
	sharein => \inst1|inst2|Add0~19\,
	sumout => \inst1|inst2|Add0~21_sumout\);

-- Location: FF_X56_Y14_N17
\inst1|inst2|adr_brick[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~21_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_brick\(8));

-- Location: M10K_X57_Y14_N0
\inst14|inst2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000060000500004000030000200001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brick_ram_init_2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "etat_briques:inst14|ram_bricks:inst2|altsyncram:altsyncram_component|altsyncram_j534:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portadatain => \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X58_Y14_N3
\inst1|inst2|type_brick_mem~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|type_brick_mem~0_combout\ = ( \inst14|inst2|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|inst2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_LessThan0~1_combout\,
	datae => \inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst2|type_brick_mem~0_combout\);

-- Location: FF_X58_Y14_N5
\inst1|inst2|type_brick_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|type_brick_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|type_brick_mem\(0));

-- Location: FF_X55_Y16_N32
\inst1|inst2|adr_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst8|u_vga_generator|x\(0),
	sload => VCC,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(0));

-- Location: LABCELL_X53_Y16_N0
\inst1|inst2|adr_mem[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|adr_mem[1]~feeder_combout\ = ( \inst8|u_vga_generator|x\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst8|u_vga_generator|ALT_INV_x\(1),
	combout => \inst1|inst2|adr_mem[1]~feeder_combout\);

-- Location: FF_X53_Y16_N2
\inst1|inst2|adr_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|adr_mem[1]~feeder_combout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(1));

-- Location: FF_X51_Y16_N50
\inst1|inst2|adr_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst8|u_vga_generator|x\(2),
	sload => VCC,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(2));

-- Location: LABCELL_X53_Y16_N42
\inst1|inst2|adr_mem[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|adr_mem[3]~feeder_combout\ = \inst8|u_vga_generator|x\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(3),
	combout => \inst1|inst2|adr_mem[3]~feeder_combout\);

-- Location: FF_X53_Y16_N44
\inst1|inst2|adr_mem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|adr_mem[3]~feeder_combout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(3));

-- Location: MLABCELL_X55_Y15_N0
\inst1|inst2|Add3~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~38_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add3~39\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \inst1|inst2|Add3~38_cout\,
	shareout => \inst1|inst2|Add3~39\);

-- Location: MLABCELL_X55_Y15_N3
\inst1|inst2|Add3~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~34_cout\ = CARRY(( VCC ) + ( \inst1|inst2|Add3~39\ ) + ( \inst1|inst2|Add3~38_cout\ ))
-- \inst1|inst2|Add3~35\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Add3~38_cout\,
	sharein => \inst1|inst2|Add3~39\,
	cout => \inst1|inst2|Add3~34_cout\,
	shareout => \inst1|inst2|Add3~35\);

-- Location: MLABCELL_X55_Y15_N6
\inst1|inst2|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~1_sumout\ = SUM(( !\inst8|u_vga_generator|x\(4) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\) ) + ( \inst1|inst2|Add3~35\ ) + ( \inst1|inst2|Add3~34_cout\ ))
-- \inst1|inst2|Add3~2\ = CARRY(( !\inst8|u_vga_generator|x\(4) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\) ) + ( \inst1|inst2|Add3~35\ ) + ( \inst1|inst2|Add3~34_cout\ ))
-- \inst1|inst2|Add3~3\ = SHARE((\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\) # (\inst8|u_vga_generator|x\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(4),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => \inst1|inst2|Add3~34_cout\,
	sharein => \inst1|inst2|Add3~35\,
	sumout => \inst1|inst2|Add3~1_sumout\,
	cout => \inst1|inst2|Add3~2\,
	shareout => \inst1|inst2|Add3~3\);

-- Location: LABCELL_X56_Y15_N0
\inst1|inst2|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~1_sumout\ = SUM(( !\inst8|u_vga_generator|y\(0) $ (!\inst1|inst2|Add3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add6~2\ = CARRY(( !\inst8|u_vga_generator|y\(0) $ (!\inst1|inst2|Add3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add6~3\ = SHARE((\inst8|u_vga_generator|y\(0) & \inst1|inst2|Add3~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(0),
	datac => \inst1|inst2|ALT_INV_Add3~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst2|Add6~1_sumout\,
	cout => \inst1|inst2|Add6~2\,
	shareout => \inst1|inst2|Add6~3\);

-- Location: FF_X56_Y15_N2
\inst1|inst2|adr_mem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~1_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(4));

-- Location: MLABCELL_X55_Y15_N9
\inst1|inst2|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~5_sumout\ = SUM(( !\inst8|u_vga_generator|x\(5) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add3~3\ ) + ( \inst1|inst2|Add3~2\ ))
-- \inst1|inst2|Add3~6\ = CARRY(( !\inst8|u_vga_generator|x\(5) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add3~3\ ) + ( \inst1|inst2|Add3~2\ ))
-- \inst1|inst2|Add3~7\ = SHARE((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\) # (\inst8|u_vga_generator|x\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111111100000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(5),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	cin => \inst1|inst2|Add3~2\,
	sharein => \inst1|inst2|Add3~3\,
	sumout => \inst1|inst2|Add3~5_sumout\,
	cout => \inst1|inst2|Add3~6\,
	shareout => \inst1|inst2|Add3~7\);

-- Location: LABCELL_X56_Y15_N3
\inst1|inst2|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~5_sumout\ = SUM(( !\inst1|inst2|Add3~5_sumout\ $ (!\inst8|u_vga_generator|y\(1)) ) + ( \inst1|inst2|Add6~3\ ) + ( \inst1|inst2|Add6~2\ ))
-- \inst1|inst2|Add6~6\ = CARRY(( !\inst1|inst2|Add3~5_sumout\ $ (!\inst8|u_vga_generator|y\(1)) ) + ( \inst1|inst2|Add6~3\ ) + ( \inst1|inst2|Add6~2\ ))
-- \inst1|inst2|Add6~7\ = SHARE((\inst1|inst2|Add3~5_sumout\ & \inst8|u_vga_generator|y\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_Add3~5_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(1),
	cin => \inst1|inst2|Add6~2\,
	sharein => \inst1|inst2|Add6~3\,
	sumout => \inst1|inst2|Add6~5_sumout\,
	cout => \inst1|inst2|Add6~6\,
	shareout => \inst1|inst2|Add6~7\);

-- Location: FF_X56_Y15_N5
\inst1|inst2|adr_mem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~5_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(5));

-- Location: MLABCELL_X55_Y15_N12
\inst1|inst2|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~9_sumout\ = SUM(( !\inst8|u_vga_generator|x\(6) $ (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( \inst1|inst2|Add3~7\ ) + ( 
-- \inst1|inst2|Add3~6\ ))
-- \inst1|inst2|Add3~10\ = CARRY(( !\inst8|u_vga_generator|x\(6) $ (!\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( \inst1|inst2|Add3~7\ ) + ( \inst1|inst2|Add3~6\ 
-- ))
-- \inst1|inst2|Add3~11\ = SHARE((!\inst8|u_vga_generator|x\(6) & (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\ & \inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\)) # (\inst8|u_vga_generator|x\(6) & 
-- ((\inst1|inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(6),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => \inst1|inst2|Add3~6\,
	sharein => \inst1|inst2|Add3~7\,
	sumout => \inst1|inst2|Add3~9_sumout\,
	cout => \inst1|inst2|Add3~10\,
	shareout => \inst1|inst2|Add3~11\);

-- Location: LABCELL_X56_Y15_N6
\inst1|inst2|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~9_sumout\ = SUM(( !\inst8|u_vga_generator|y\(0) $ (!\inst8|u_vga_generator|y\(2) $ (\inst1|inst2|Add3~9_sumout\)) ) + ( \inst1|inst2|Add6~7\ ) + ( \inst1|inst2|Add6~6\ ))
-- \inst1|inst2|Add6~10\ = CARRY(( !\inst8|u_vga_generator|y\(0) $ (!\inst8|u_vga_generator|y\(2) $ (\inst1|inst2|Add3~9_sumout\)) ) + ( \inst1|inst2|Add6~7\ ) + ( \inst1|inst2|Add6~6\ ))
-- \inst1|inst2|Add6~11\ = SHARE((!\inst8|u_vga_generator|y\(0) & (\inst8|u_vga_generator|y\(2) & \inst1|inst2|Add3~9_sumout\)) # (\inst8|u_vga_generator|y\(0) & ((\inst1|inst2|Add3~9_sumout\) # (\inst8|u_vga_generator|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(0),
	datac => \inst8|u_vga_generator|ALT_INV_y\(2),
	datad => \inst1|inst2|ALT_INV_Add3~9_sumout\,
	cin => \inst1|inst2|Add6~6\,
	sharein => \inst1|inst2|Add6~7\,
	sumout => \inst1|inst2|Add6~9_sumout\,
	cout => \inst1|inst2|Add6~10\,
	shareout => \inst1|inst2|Add6~11\);

-- Location: FF_X56_Y15_N8
\inst1|inst2|adr_mem[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~9_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(6));

-- Location: MLABCELL_X55_Y15_N15
\inst1|inst2|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~13_sumout\ = SUM(( !\inst8|u_vga_generator|x\(7) $ (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\)) ) + ( \inst1|inst2|Add3~11\ ) + ( 
-- \inst1|inst2|Add3~10\ ))
-- \inst1|inst2|Add3~14\ = CARRY(( !\inst8|u_vga_generator|x\(7) $ (!\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\)) ) + ( \inst1|inst2|Add3~11\ ) + ( \inst1|inst2|Add3~10\ 
-- ))
-- \inst1|inst2|Add3~15\ = SHARE((!\inst8|u_vga_generator|x\(7) & (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & \inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\)) # (\inst8|u_vga_generator|x\(7) & 
-- ((\inst1|inst2|Div0|auto_generated|divider|divider|op_11~1_sumout\) # (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(7),
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	cin => \inst1|inst2|Add3~10\,
	sharein => \inst1|inst2|Add3~11\,
	sumout => \inst1|inst2|Add3~13_sumout\,
	cout => \inst1|inst2|Add3~14\,
	shareout => \inst1|inst2|Add3~15\);

-- Location: LABCELL_X56_Y15_N30
\inst1|inst2|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~1_sumout\ = SUM(( !\inst8|u_vga_generator|y\(3) $ (\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add5~2\ = CARRY(( !\inst8|u_vga_generator|y\(3) $ (\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst2|Add5~3\ = SHARE((\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) # (\inst8|u_vga_generator|y\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst2|Add5~1_sumout\,
	cout => \inst1|inst2|Add5~2\,
	shareout => \inst1|inst2|Add5~3\);

-- Location: LABCELL_X56_Y15_N9
\inst1|inst2|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~13_sumout\ = SUM(( !\inst1|inst2|Add3~13_sumout\ $ (!\inst1|inst2|Add5~1_sumout\ $ (\inst8|u_vga_generator|y\(1))) ) + ( \inst1|inst2|Add6~11\ ) + ( \inst1|inst2|Add6~10\ ))
-- \inst1|inst2|Add6~14\ = CARRY(( !\inst1|inst2|Add3~13_sumout\ $ (!\inst1|inst2|Add5~1_sumout\ $ (\inst8|u_vga_generator|y\(1))) ) + ( \inst1|inst2|Add6~11\ ) + ( \inst1|inst2|Add6~10\ ))
-- \inst1|inst2|Add6~15\ = SHARE((!\inst1|inst2|Add3~13_sumout\ & (\inst1|inst2|Add5~1_sumout\ & \inst8|u_vga_generator|y\(1))) # (\inst1|inst2|Add3~13_sumout\ & ((\inst8|u_vga_generator|y\(1)) # (\inst1|inst2|Add5~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_Add3~13_sumout\,
	datac => \inst1|inst2|ALT_INV_Add5~1_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_y\(1),
	cin => \inst1|inst2|Add6~10\,
	sharein => \inst1|inst2|Add6~11\,
	sumout => \inst1|inst2|Add6~13_sumout\,
	cout => \inst1|inst2|Add6~14\,
	shareout => \inst1|inst2|Add6~15\);

-- Location: FF_X56_Y15_N11
\inst1|inst2|adr_mem[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~13_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(7));

-- Location: LABCELL_X56_Y15_N33
\inst1|inst2|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~5_sumout\ = SUM(( !\inst8|u_vga_generator|y\(4) $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add5~3\ ) + ( \inst1|inst2|Add5~2\ ))
-- \inst1|inst2|Add5~6\ = CARRY(( !\inst8|u_vga_generator|y\(4) $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\) ) + ( \inst1|inst2|Add5~3\ ) + ( \inst1|inst2|Add5~2\ ))
-- \inst1|inst2|Add5~7\ = SHARE((!\inst8|u_vga_generator|y\(4)) # (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101111111100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(4),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	cin => \inst1|inst2|Add5~2\,
	sharein => \inst1|inst2|Add5~3\,
	sumout => \inst1|inst2|Add5~5_sumout\,
	cout => \inst1|inst2|Add5~6\,
	shareout => \inst1|inst2|Add5~7\);

-- Location: MLABCELL_X55_Y15_N18
\inst1|inst2|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~17_sumout\ = SUM(( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ $ (!\inst8|u_vga_generator|x\(8) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\)) ) + ( \inst1|inst2|Add3~15\ ) + 
-- ( \inst1|inst2|Add3~14\ ))
-- \inst1|inst2|Add3~18\ = CARRY(( !\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ $ (!\inst8|u_vga_generator|x\(8) $ (\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\)) ) + ( \inst1|inst2|Add3~15\ ) + ( 
-- \inst1|inst2|Add3~14\ ))
-- \inst1|inst2|Add3~19\ = SHARE((!\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst8|u_vga_generator|x\(8) & \inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\)) # 
-- (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst1|inst2|Div0|auto_generated|divider|divider|op_10~1_sumout\) # (\inst8|u_vga_generator|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_x\(8),
	datad => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	cin => \inst1|inst2|Add3~14\,
	sharein => \inst1|inst2|Add3~15\,
	sumout => \inst1|inst2|Add3~17_sumout\,
	cout => \inst1|inst2|Add3~18\,
	shareout => \inst1|inst2|Add3~19\);

-- Location: LABCELL_X56_Y15_N12
\inst1|inst2|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~17_sumout\ = SUM(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst2|Add5~5_sumout\ $ (\inst1|inst2|Add3~17_sumout\)) ) + ( \inst1|inst2|Add6~15\ ) + ( \inst1|inst2|Add6~14\ ))
-- \inst1|inst2|Add6~18\ = CARRY(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst2|Add5~5_sumout\ $ (\inst1|inst2|Add3~17_sumout\)) ) + ( \inst1|inst2|Add6~15\ ) + ( \inst1|inst2|Add6~14\ ))
-- \inst1|inst2|Add6~19\ = SHARE((!\inst8|u_vga_generator|y\(2) & (\inst1|inst2|Add5~5_sumout\ & \inst1|inst2|Add3~17_sumout\)) # (\inst8|u_vga_generator|y\(2) & ((\inst1|inst2|Add3~17_sumout\) # (\inst1|inst2|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(2),
	datac => \inst1|inst2|ALT_INV_Add5~5_sumout\,
	datad => \inst1|inst2|ALT_INV_Add3~17_sumout\,
	cin => \inst1|inst2|Add6~14\,
	sharein => \inst1|inst2|Add6~15\,
	sumout => \inst1|inst2|Add6~17_sumout\,
	cout => \inst1|inst2|Add6~18\,
	shareout => \inst1|inst2|Add6~19\);

-- Location: FF_X56_Y15_N14
\inst1|inst2|adr_mem[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~17_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(8));

-- Location: MLABCELL_X55_Y15_N21
\inst1|inst2|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~21_sumout\ = SUM(( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (\inst8|u_vga_generator|x\(9)) ) + ( \inst1|inst2|Add3~19\ ) + ( \inst1|inst2|Add3~18\ ))
-- \inst1|inst2|Add3~22\ = CARRY(( !\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\ $ (\inst8|u_vga_generator|x\(9)) ) + ( \inst1|inst2|Add3~19\ ) + ( \inst1|inst2|Add3~18\ ))
-- \inst1|inst2|Add3~23\ = SHARE((\inst8|u_vga_generator|x\(9)) # (\inst1|inst2|Div0|auto_generated|divider|divider|op_9~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_x\(9),
	cin => \inst1|inst2|Add3~18\,
	sharein => \inst1|inst2|Add3~19\,
	sumout => \inst1|inst2|Add3~21_sumout\,
	cout => \inst1|inst2|Add3~22\,
	shareout => \inst1|inst2|Add3~23\);

-- Location: LABCELL_X56_Y15_N24
\inst1|inst2|Add5~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~20_combout\ = ( \inst8|u_vga_generator|y\(4) & ( !\inst8|u_vga_generator|y\(5) ) ) # ( !\inst8|u_vga_generator|y\(4) & ( \inst8|u_vga_generator|y\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(4),
	combout => \inst1|inst2|Add5~20_combout\);

-- Location: LABCELL_X56_Y15_N36
\inst1|inst2|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~9_sumout\ = SUM(( !\inst1|inst2|Add5~20_combout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( \inst1|inst2|Add5~7\ ) + ( 
-- \inst1|inst2|Add5~6\ ))
-- \inst1|inst2|Add5~10\ = CARRY(( !\inst1|inst2|Add5~20_combout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ $ (\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( \inst1|inst2|Add5~7\ ) + ( \inst1|inst2|Add5~6\ 
-- ))
-- \inst1|inst2|Add5~11\ = SHARE((!\inst1|inst2|Add5~20_combout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\ & \inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\)) # (\inst1|inst2|Add5~20_combout\ & 
-- ((\inst1|inst2|Div1|auto_generated|divider|divider|op_3~1_sumout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_Add5~20_combout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => \inst1|inst2|Add5~6\,
	sharein => \inst1|inst2|Add5~7\,
	sumout => \inst1|inst2|Add5~9_sumout\,
	cout => \inst1|inst2|Add5~10\,
	shareout => \inst1|inst2|Add5~11\);

-- Location: LABCELL_X56_Y15_N15
\inst1|inst2|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~21_sumout\ = SUM(( !\inst1|inst2|Add3~21_sumout\ $ (!\inst1|inst2|Add5~1_sumout\ $ (\inst1|inst2|Add5~9_sumout\)) ) + ( \inst1|inst2|Add6~19\ ) + ( \inst1|inst2|Add6~18\ ))
-- \inst1|inst2|Add6~22\ = CARRY(( !\inst1|inst2|Add3~21_sumout\ $ (!\inst1|inst2|Add5~1_sumout\ $ (\inst1|inst2|Add5~9_sumout\)) ) + ( \inst1|inst2|Add6~19\ ) + ( \inst1|inst2|Add6~18\ ))
-- \inst1|inst2|Add6~23\ = SHARE((!\inst1|inst2|Add3~21_sumout\ & (\inst1|inst2|Add5~1_sumout\ & \inst1|inst2|Add5~9_sumout\)) # (\inst1|inst2|Add3~21_sumout\ & ((\inst1|inst2|Add5~9_sumout\) # (\inst1|inst2|Add5~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Add3~21_sumout\,
	datac => \inst1|inst2|ALT_INV_Add5~1_sumout\,
	datad => \inst1|inst2|ALT_INV_Add5~9_sumout\,
	cin => \inst1|inst2|Add6~18\,
	sharein => \inst1|inst2|Add6~19\,
	sumout => \inst1|inst2|Add6~21_sumout\,
	cout => \inst1|inst2|Add6~22\,
	shareout => \inst1|inst2|Add6~23\);

-- Location: FF_X56_Y15_N17
\inst1|inst2|adr_mem[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~21_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(9));

-- Location: MLABCELL_X55_Y15_N24
\inst1|inst2|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~25_sumout\ = SUM(( !\inst8|u_vga_generator|x\(10) $ (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) + ( \inst1|inst2|Add3~23\ ) + ( \inst1|inst2|Add3~22\ ))
-- \inst1|inst2|Add3~26\ = CARRY(( !\inst8|u_vga_generator|x\(10) $ (\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) + ( \inst1|inst2|Add3~23\ ) + ( \inst1|inst2|Add3~22\ ))
-- \inst1|inst2|Add3~27\ = SHARE((\inst1|inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\inst8|u_vga_generator|x\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(10),
	datab => \inst1|inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \inst1|inst2|Add3~22\,
	sharein => \inst1|inst2|Add3~23\,
	sumout => \inst1|inst2|Add3~25_sumout\,
	cout => \inst1|inst2|Add3~26\,
	shareout => \inst1|inst2|Add3~27\);

-- Location: LABCELL_X56_Y15_N48
\inst1|inst2|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~21_combout\ = ( \inst8|u_vga_generator|y\(4) & ( !\inst8|u_vga_generator|y\(6) $ (!\inst8|u_vga_generator|y\(5)) ) ) # ( !\inst8|u_vga_generator|y\(4) & ( \inst8|u_vga_generator|y\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(6),
	datac => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(4),
	combout => \inst1|inst2|Add5~21_combout\);

-- Location: LABCELL_X56_Y15_N39
\inst1|inst2|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~13_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ $ (\inst1|inst2|Add5~21_combout\)) ) + ( \inst1|inst2|Add5~11\ ) + ( 
-- \inst1|inst2|Add5~10\ ))
-- \inst1|inst2|Add5~14\ = CARRY(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ $ (\inst1|inst2|Add5~21_combout\)) ) + ( \inst1|inst2|Add5~11\ ) + ( 
-- \inst1|inst2|Add5~10\ ))
-- \inst1|inst2|Add5~15\ = SHARE((!\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\ & \inst1|inst2|Add5~21_combout\)) # 
-- (\inst1|inst2|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\inst1|inst2|Add5~21_combout\) # (\inst1|inst2|Div1|auto_generated|divider|divider|op_11~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \inst1|inst2|ALT_INV_Add5~21_combout\,
	cin => \inst1|inst2|Add5~10\,
	sharein => \inst1|inst2|Add5~11\,
	sumout => \inst1|inst2|Add5~13_sumout\,
	cout => \inst1|inst2|Add5~14\,
	shareout => \inst1|inst2|Add5~15\);

-- Location: LABCELL_X56_Y15_N18
\inst1|inst2|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~25_sumout\ = SUM(( !\inst1|inst2|Add3~25_sumout\ $ (!\inst1|inst2|Add5~5_sumout\ $ (\inst1|inst2|Add5~13_sumout\)) ) + ( \inst1|inst2|Add6~23\ ) + ( \inst1|inst2|Add6~22\ ))
-- \inst1|inst2|Add6~26\ = CARRY(( !\inst1|inst2|Add3~25_sumout\ $ (!\inst1|inst2|Add5~5_sumout\ $ (\inst1|inst2|Add5~13_sumout\)) ) + ( \inst1|inst2|Add6~23\ ) + ( \inst1|inst2|Add6~22\ ))
-- \inst1|inst2|Add6~27\ = SHARE((!\inst1|inst2|Add3~25_sumout\ & (\inst1|inst2|Add5~5_sumout\ & \inst1|inst2|Add5~13_sumout\)) # (\inst1|inst2|Add3~25_sumout\ & ((\inst1|inst2|Add5~13_sumout\) # (\inst1|inst2|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_Add3~25_sumout\,
	datac => \inst1|inst2|ALT_INV_Add5~5_sumout\,
	datad => \inst1|inst2|ALT_INV_Add5~13_sumout\,
	cin => \inst1|inst2|Add6~22\,
	sharein => \inst1|inst2|Add6~23\,
	sumout => \inst1|inst2|Add6~25_sumout\,
	cout => \inst1|inst2|Add6~26\,
	shareout => \inst1|inst2|Add6~27\);

-- Location: FF_X56_Y15_N20
\inst1|inst2|adr_mem[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~25_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(10));

-- Location: MLABCELL_X55_Y15_N27
\inst1|inst2|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add3~29_sumout\ = SUM(( GND ) + ( \inst1|inst2|Add3~27\ ) + ( \inst1|inst2|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|Add3~26\,
	sharein => \inst1|inst2|Add3~27\,
	sumout => \inst1|inst2|Add3~29_sumout\);

-- Location: LABCELL_X56_Y15_N57
\inst1|inst2|Add5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~22_combout\ = ( \inst8|u_vga_generator|y\(4) & ( (\inst8|u_vga_generator|y\(5) & \inst8|u_vga_generator|y\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(5),
	datac => \inst8|u_vga_generator|ALT_INV_y\(6),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(4),
	combout => \inst1|inst2|Add5~22_combout\);

-- Location: LABCELL_X56_Y15_N42
\inst1|inst2|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add5~17_sumout\ = SUM(( !\inst1|inst2|Div1|auto_generated|divider|divider|op_8~1_sumout\ $ (!\inst1|inst2|Add5~22_combout\ $ (!\inst8|u_vga_generator|y\(7) $ (!\inst1|inst2|Div1|auto_generated|divider|divider|op_10~1_sumout\))) ) + ( 
-- \inst1|inst2|Add5~15\ ) + ( \inst1|inst2|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst1|inst2|ALT_INV_Add5~22_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(7),
	datad => \inst1|inst2|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	cin => \inst1|inst2|Add5~14\,
	sharein => \inst1|inst2|Add5~15\,
	sumout => \inst1|inst2|Add5~17_sumout\);

-- Location: LABCELL_X56_Y15_N21
\inst1|inst2|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add6~29_sumout\ = SUM(( !\inst1|inst2|Add3~29_sumout\ $ (!\inst1|inst2|Add5~17_sumout\ $ (\inst1|inst2|Add5~9_sumout\)) ) + ( \inst1|inst2|Add6~27\ ) + ( \inst1|inst2|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Add3~29_sumout\,
	datac => \inst1|inst2|ALT_INV_Add5~17_sumout\,
	datad => \inst1|inst2|ALT_INV_Add5~9_sumout\,
	cin => \inst1|inst2|Add6~26\,
	sharein => \inst1|inst2|Add6~27\,
	sumout => \inst1|inst2|Add6~29_sumout\);

-- Location: FF_X56_Y15_N23
\inst1|inst2|adr_mem[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add6~29_sumout\,
	ena => \inst1|inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|adr_mem\(11));

-- Location: M10K_X39_Y19_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555555555555557FFFFD5555555555555555555555555555555555FFFFFD5555555555555555555555555555555557FFFFFD555555555555555555555555555555555FFFFFFD56AAA595AAA6AA6AA6996AAAAA9A966ABFFFFFFD55555555555555555555555555555555FFFFFFFD56555555555555555555555555555557FFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD565FF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD567FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y13_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAFBFAAAEAAEAAEBBEAAAAABABEEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X29_Y17_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000F3F000C00C00C33C00000303CC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LABCELL_X58_Y14_N21
\inst1|inst2|type_brick_mem~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|type_brick_mem~1_combout\ = ( \inst14|inst2|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|inst2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_LessThan0~1_combout\,
	dataf => \inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst1|inst2|type_brick_mem~1_combout\);

-- Location: FF_X58_Y14_N23
\inst1|inst2|type_brick_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|type_brick_mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|type_brick_mem\(1));

-- Location: LABCELL_X43_Y15_N54
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3) & ( \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & 
-- (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(3))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( !\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3) & ( 
-- \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(3))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3) & ( !\inst1|inst2|type_brick_mem\(1) & ( (\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(3)) # (\inst1|inst2|type_brick_mem\(0)) ) ) ) # ( 
-- !\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(3) & ( !\inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X58_Y14_N15
\inst1|inst2|type_brick_mem~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|type_brick_mem~2_combout\ = ( \inst14|inst2|altsyncram_component|auto_generated|q_a\(2) & ( \inst1|inst2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|ALT_INV_LessThan0~1_combout\,
	datae => \inst14|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst1|inst2|type_brick_mem~2_combout\);

-- Location: FF_X58_Y14_N17
\inst1|inst2|type_brick_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst2|type_brick_mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|type_brick_mem\(2));

-- Location: M10K_X39_Y12_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y15_N48
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & ((((\inst1|inst2|type_brick_mem\(1) & 
-- \inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(3)))))) # (\inst1|inst2|type_brick_mem\(0) & ((!\inst1|inst2|type_brick_mem\(1) & (((\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(3))))) # (\inst1|inst2|type_brick_mem\(1) & 
-- (\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(3))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100010001000011110000111100000101101110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\,
	datad => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X63_Y16_N0
\inst1|inst8|adr[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|adr[0]~feeder_combout\ = ( \inst8|u_vga_generator|x\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst8|u_vga_generator|ALT_INV_x\(0),
	combout => \inst1|inst8|adr[0]~feeder_combout\);

-- Location: LABCELL_X58_Y16_N6
\inst1|inst8|to_print~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|to_print~0_combout\ = ( !\inst8|u_vga_generator|x\(6) & ( \inst8|u_vga_generator|x\(5) & ( (!\inst8|u_vga_generator|x\(7) & \inst8|u_vga_generator|x\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(7),
	datac => \inst8|u_vga_generator|ALT_INV_x\(8),
	datae => \inst8|u_vga_generator|ALT_INV_x\(6),
	dataf => \inst8|u_vga_generator|ALT_INV_x\(5),
	combout => \inst1|inst8|to_print~0_combout\);

-- Location: LABCELL_X58_Y16_N18
\inst1|inst8|to_print~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|to_print~2_combout\ = ( \inst8|u_vga_generator|x\(3) & ( \inst8|u_vga_generator|x\(2) & ( (\inst8|u_vga_generator|y\(8) & (!\inst8|u_vga_generator|y\(10) & \inst8|u_vga_generator|y\(5))) ) ) ) # ( !\inst8|u_vga_generator|x\(3) & ( 
-- \inst8|u_vga_generator|x\(2) & ( (\inst8|u_vga_generator|x\(4) & (\inst8|u_vga_generator|y\(8) & (!\inst8|u_vga_generator|y\(10) & \inst8|u_vga_generator|y\(5)))) ) ) ) # ( \inst8|u_vga_generator|x\(3) & ( !\inst8|u_vga_generator|x\(2) & ( 
-- (\inst8|u_vga_generator|x\(4) & (\inst8|u_vga_generator|y\(8) & (!\inst8|u_vga_generator|y\(10) & \inst8|u_vga_generator|y\(5)))) ) ) ) # ( !\inst8|u_vga_generator|x\(3) & ( !\inst8|u_vga_generator|x\(2) & ( (\inst8|u_vga_generator|x\(4) & 
-- (\inst8|u_vga_generator|y\(8) & (!\inst8|u_vga_generator|y\(10) & \inst8|u_vga_generator|y\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(4),
	datab => \inst8|u_vga_generator|ALT_INV_y\(8),
	datac => \inst8|u_vga_generator|ALT_INV_y\(10),
	datad => \inst8|u_vga_generator|ALT_INV_y\(5),
	datae => \inst8|u_vga_generator|ALT_INV_x\(3),
	dataf => \inst8|u_vga_generator|ALT_INV_x\(2),
	combout => \inst1|inst8|to_print~2_combout\);

-- Location: MLABCELL_X55_Y13_N42
\inst1|inst8|to_print~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|to_print~1_combout\ = ( !\inst8|u_vga_generator|y\(6) & ( \inst8|u_vga_generator|y\(2) & ( (!\inst8|u_vga_generator|y\(7) & (!\inst8|u_vga_generator|y\(9) & ((\inst8|u_vga_generator|y\(3)) # (\inst8|u_vga_generator|y\(4))))) ) ) ) # ( 
-- !\inst8|u_vga_generator|y\(6) & ( !\inst8|u_vga_generator|y\(2) & ( (!\inst8|u_vga_generator|y\(7) & (\inst8|u_vga_generator|y\(4) & !\inst8|u_vga_generator|y\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(7),
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(9),
	datad => \inst8|u_vga_generator|ALT_INV_y\(3),
	datae => \inst8|u_vga_generator|ALT_INV_y\(6),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(2),
	combout => \inst1|inst8|to_print~1_combout\);

-- Location: LABCELL_X58_Y16_N0
\inst1|inst8|to_print~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|to_print~3_combout\ = ( !\inst8|u_vga_generator|x\(10) & ( !\inst8|u_vga_generator|x\(9) & ( (\inst1|inst8|to_print~0_combout\ & (\inst1|inst8|to_print~2_combout\ & \inst1|inst8|to_print~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_to_print~0_combout\,
	datab => \inst1|inst8|ALT_INV_to_print~2_combout\,
	datac => \inst1|inst8|ALT_INV_to_print~1_combout\,
	datae => \inst8|u_vga_generator|ALT_INV_x\(10),
	dataf => \inst8|u_vga_generator|ALT_INV_x\(9),
	combout => \inst1|inst8|to_print~3_combout\);

-- Location: FF_X63_Y16_N2
\inst1|inst8|adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|adr[0]~feeder_combout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(0));

-- Location: FF_X63_Y16_N25
\inst1|inst8|adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst8|u_vga_generator|x\(1),
	sload => VCC,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(1));

-- Location: LABCELL_X63_Y16_N30
\inst1|inst8|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~1_sumout\ = SUM(( !\inst8|u_vga_generator|x\(2) $ (\inst8|u_vga_generator|y\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst8|Add3~2\ = CARRY(( !\inst8|u_vga_generator|x\(2) $ (\inst8|u_vga_generator|y\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst8|Add3~3\ = SHARE((!\inst8|u_vga_generator|x\(2) & \inst8|u_vga_generator|y\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(2),
	datad => \inst8|u_vga_generator|ALT_INV_y\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst8|Add3~1_sumout\,
	cout => \inst1|inst8|Add3~2\,
	shareout => \inst1|inst8|Add3~3\);

-- Location: FF_X63_Y16_N8
\inst1|inst8|adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|inst8|Add3~1_sumout\,
	sload => VCC,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(2));

-- Location: LABCELL_X58_Y16_N30
\inst1|inst8|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~1_sumout\ = SUM(( \inst8|u_vga_generator|x\(2) ) + ( \inst8|u_vga_generator|x\(3) ) + ( !VCC ))
-- \inst1|inst8|Add4~2\ = CARRY(( \inst8|u_vga_generator|x\(2) ) + ( \inst8|u_vga_generator|x\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(2),
	dataf => \inst8|u_vga_generator|ALT_INV_x\(3),
	cin => GND,
	sumout => \inst1|inst8|Add4~1_sumout\,
	cout => \inst1|inst8|Add4~2\);

-- Location: LABCELL_X63_Y16_N33
\inst1|inst8|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~5_sumout\ = SUM(( !\inst8|u_vga_generator|y\(1) $ (!\inst1|inst8|Add4~1_sumout\) ) + ( \inst1|inst8|Add3~3\ ) + ( \inst1|inst8|Add3~2\ ))
-- \inst1|inst8|Add3~6\ = CARRY(( !\inst8|u_vga_generator|y\(1) $ (!\inst1|inst8|Add4~1_sumout\) ) + ( \inst1|inst8|Add3~3\ ) + ( \inst1|inst8|Add3~2\ ))
-- \inst1|inst8|Add3~7\ = SHARE((\inst8|u_vga_generator|y\(1) & \inst1|inst8|Add4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(1),
	datab => \inst1|inst8|ALT_INV_Add4~1_sumout\,
	cin => \inst1|inst8|Add3~2\,
	sharein => \inst1|inst8|Add3~3\,
	sumout => \inst1|inst8|Add3~5_sumout\,
	cout => \inst1|inst8|Add3~6\,
	shareout => \inst1|inst8|Add3~7\);

-- Location: FF_X63_Y16_N34
\inst1|inst8|adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~5_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(3));

-- Location: LABCELL_X58_Y16_N33
\inst1|inst8|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~5_sumout\ = SUM(( \inst8|u_vga_generator|x\(4) ) + ( VCC ) + ( \inst1|inst8|Add4~2\ ))
-- \inst1|inst8|Add4~6\ = CARRY(( \inst8|u_vga_generator|x\(4) ) + ( VCC ) + ( \inst1|inst8|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(4),
	cin => \inst1|inst8|Add4~2\,
	sumout => \inst1|inst8|Add4~5_sumout\,
	cout => \inst1|inst8|Add4~6\);

-- Location: LABCELL_X63_Y16_N36
\inst1|inst8|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~9_sumout\ = SUM(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~5_sumout\ $ (!\inst8|u_vga_generator|y\(0))) ) + ( \inst1|inst8|Add3~7\ ) + ( \inst1|inst8|Add3~6\ ))
-- \inst1|inst8|Add3~10\ = CARRY(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~5_sumout\ $ (!\inst8|u_vga_generator|y\(0))) ) + ( \inst1|inst8|Add3~7\ ) + ( \inst1|inst8|Add3~6\ ))
-- \inst1|inst8|Add3~11\ = SHARE((!\inst8|u_vga_generator|y\(2) & ((\inst8|u_vga_generator|y\(0)) # (\inst1|inst8|Add4~5_sumout\))) # (\inst8|u_vga_generator|y\(2) & (\inst1|inst8|Add4~5_sumout\ & \inst8|u_vga_generator|y\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datac => \inst1|inst8|ALT_INV_Add4~5_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_y\(0),
	cin => \inst1|inst8|Add3~6\,
	sharein => \inst1|inst8|Add3~7\,
	sumout => \inst1|inst8|Add3~9_sumout\,
	cout => \inst1|inst8|Add3~10\,
	shareout => \inst1|inst8|Add3~11\);

-- Location: FF_X63_Y16_N38
\inst1|inst8|adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~9_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(4));

-- Location: LABCELL_X58_Y16_N36
\inst1|inst8|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~9_sumout\ = SUM(( \inst8|u_vga_generator|x\(5) ) + ( GND ) + ( \inst1|inst8|Add4~6\ ))
-- \inst1|inst8|Add4~10\ = CARRY(( \inst8|u_vga_generator|x\(5) ) + ( GND ) + ( \inst1|inst8|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(5),
	cin => \inst1|inst8|Add4~6\,
	sumout => \inst1|inst8|Add4~9_sumout\,
	cout => \inst1|inst8|Add4~10\);

-- Location: LABCELL_X63_Y16_N39
\inst1|inst8|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~13_sumout\ = SUM(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~9_sumout\ $ (!\inst8|u_vga_generator|y\(3) $ (!\inst8|u_vga_generator|y\(1)))) ) + ( \inst1|inst8|Add3~11\ ) + ( \inst1|inst8|Add3~10\ ))
-- \inst1|inst8|Add3~14\ = CARRY(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~9_sumout\ $ (!\inst8|u_vga_generator|y\(3) $ (!\inst8|u_vga_generator|y\(1)))) ) + ( \inst1|inst8|Add3~11\ ) + ( \inst1|inst8|Add3~10\ ))
-- \inst1|inst8|Add3~15\ = SHARE((!\inst1|inst8|Add4~9_sumout\ & (\inst8|u_vga_generator|y\(1) & (!\inst8|u_vga_generator|y\(2) $ (!\inst8|u_vga_generator|y\(3))))) # (\inst1|inst8|Add4~9_sumout\ & ((!\inst8|u_vga_generator|y\(2) $ 
-- (!\inst8|u_vga_generator|y\(3))) # (\inst8|u_vga_generator|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100111101100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datab => \inst1|inst8|ALT_INV_Add4~9_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	datad => \inst8|u_vga_generator|ALT_INV_y\(1),
	cin => \inst1|inst8|Add3~10\,
	sharein => \inst1|inst8|Add3~11\,
	sumout => \inst1|inst8|Add3~13_sumout\,
	cout => \inst1|inst8|Add3~14\,
	shareout => \inst1|inst8|Add3~15\);

-- Location: FF_X63_Y16_N40
\inst1|inst8|adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~13_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(5));

-- Location: LABCELL_X58_Y16_N39
\inst1|inst8|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~13_sumout\ = SUM(( \inst8|u_vga_generator|x\(6) ) + ( VCC ) + ( \inst1|inst8|Add4~10\ ))
-- \inst1|inst8|Add4~14\ = CARRY(( \inst8|u_vga_generator|x\(6) ) + ( VCC ) + ( \inst1|inst8|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(6),
	cin => \inst1|inst8|Add4~10\,
	sumout => \inst1|inst8|Add4~13_sumout\,
	cout => \inst1|inst8|Add4~14\);

-- Location: LABCELL_X63_Y16_N9
\inst1|inst8|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add2~0_combout\ = !\inst8|u_vga_generator|y\(4) $ (((!\inst8|u_vga_generator|y\(2)) # (!\inst8|u_vga_generator|y\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011000110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst8|Add2~0_combout\);

-- Location: LABCELL_X63_Y16_N42
\inst1|inst8|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~17_sumout\ = SUM(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~13_sumout\ $ (\inst1|inst8|Add2~0_combout\)) ) + ( \inst1|inst8|Add3~15\ ) + ( \inst1|inst8|Add3~14\ ))
-- \inst1|inst8|Add3~18\ = CARRY(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~13_sumout\ $ (\inst1|inst8|Add2~0_combout\)) ) + ( \inst1|inst8|Add3~15\ ) + ( \inst1|inst8|Add3~14\ ))
-- \inst1|inst8|Add3~19\ = SHARE((!\inst8|u_vga_generator|y\(2) & ((!\inst1|inst8|Add2~0_combout\) # (\inst1|inst8|Add4~13_sumout\))) # (\inst8|u_vga_generator|y\(2) & (\inst1|inst8|Add4~13_sumout\ & !\inst1|inst8|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datac => \inst1|inst8|ALT_INV_Add4~13_sumout\,
	datad => \inst1|inst8|ALT_INV_Add2~0_combout\,
	cin => \inst1|inst8|Add3~14\,
	sharein => \inst1|inst8|Add3~15\,
	sumout => \inst1|inst8|Add3~17_sumout\,
	cout => \inst1|inst8|Add3~18\,
	shareout => \inst1|inst8|Add3~19\);

-- Location: FF_X63_Y16_N44
\inst1|inst8|adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~17_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(6));

-- Location: LABCELL_X58_Y16_N42
\inst1|inst8|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~17_sumout\ = SUM(( \inst8|u_vga_generator|x\(7) ) + ( VCC ) + ( \inst1|inst8|Add4~14\ ))
-- \inst1|inst8|Add4~18\ = CARRY(( \inst8|u_vga_generator|x\(7) ) + ( VCC ) + ( \inst1|inst8|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|u_vga_generator|ALT_INV_x\(7),
	cin => \inst1|inst8|Add4~14\,
	sumout => \inst1|inst8|Add4~17_sumout\,
	cout => \inst1|inst8|Add4~18\);

-- Location: LABCELL_X63_Y16_N54
\inst1|inst8|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add2~1_combout\ = ( \inst8|u_vga_generator|y\(2) & ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(5) ) ) ) # ( !\inst8|u_vga_generator|y\(2) & ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(5) $ 
-- (!\inst8|u_vga_generator|y\(4)) ) ) ) # ( \inst8|u_vga_generator|y\(2) & ( !\inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(5) $ (!\inst8|u_vga_generator|y\(4)) ) ) ) # ( !\inst8|u_vga_generator|y\(2) & ( !\inst8|u_vga_generator|y\(3) & ( 
-- !\inst8|u_vga_generator|y\(5) $ (!\inst8|u_vga_generator|y\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(5),
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datae => \inst8|u_vga_generator|ALT_INV_y\(2),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst8|Add2~1_combout\);

-- Location: LABCELL_X63_Y16_N45
\inst1|inst8|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~21_sumout\ = SUM(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~17_sumout\ $ (!\inst8|u_vga_generator|y\(3) $ (!\inst1|inst8|Add2~1_combout\))) ) + ( \inst1|inst8|Add3~19\ ) + ( \inst1|inst8|Add3~18\ ))
-- \inst1|inst8|Add3~22\ = CARRY(( !\inst8|u_vga_generator|y\(2) $ (!\inst1|inst8|Add4~17_sumout\ $ (!\inst8|u_vga_generator|y\(3) $ (!\inst1|inst8|Add2~1_combout\))) ) + ( \inst1|inst8|Add3~19\ ) + ( \inst1|inst8|Add3~18\ ))
-- \inst1|inst8|Add3~23\ = SHARE((!\inst1|inst8|Add4~17_sumout\ & (\inst1|inst8|Add2~1_combout\ & (!\inst8|u_vga_generator|y\(2) $ (!\inst8|u_vga_generator|y\(3))))) # (\inst1|inst8|Add4~17_sumout\ & ((!\inst8|u_vga_generator|y\(2) $ 
-- (!\inst8|u_vga_generator|y\(3))) # (\inst1|inst8|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100111101100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datab => \inst1|inst8|ALT_INV_Add4~17_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	datad => \inst1|inst8|ALT_INV_Add2~1_combout\,
	cin => \inst1|inst8|Add3~18\,
	sharein => \inst1|inst8|Add3~19\,
	sumout => \inst1|inst8|Add3~21_sumout\,
	cout => \inst1|inst8|Add3~22\,
	shareout => \inst1|inst8|Add3~23\);

-- Location: FF_X63_Y16_N46
\inst1|inst8|adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~21_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(7));

-- Location: LABCELL_X63_Y16_N6
\inst1|inst8|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add2~2_combout\ = ( \inst8|u_vga_generator|y\(3) & ( (\inst8|u_vga_generator|y\(5) & ((\inst8|u_vga_generator|y\(4)) # (\inst8|u_vga_generator|y\(2)))) ) ) # ( !\inst8|u_vga_generator|y\(3) & ( (\inst8|u_vga_generator|y\(4) & 
-- \inst8|u_vga_generator|y\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(2),
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst8|Add2~2_combout\);

-- Location: LABCELL_X58_Y16_N45
\inst1|inst8|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add4~21_sumout\ = SUM(( \inst8|u_vga_generator|x\(8) ) + ( GND ) + ( \inst1|inst8|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(8),
	cin => \inst1|inst8|Add4~18\,
	sumout => \inst1|inst8|Add4~21_sumout\);

-- Location: LABCELL_X63_Y16_N48
\inst1|inst8|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add3~25_sumout\ = SUM(( !\inst1|inst8|Add2~2_combout\ $ (!\inst1|inst8|Add4~21_sumout\ $ (!\inst8|u_vga_generator|y\(6) $ (!\inst1|inst8|Add2~0_combout\))) ) + ( \inst1|inst8|Add3~23\ ) + ( \inst1|inst8|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Add2~2_combout\,
	datab => \inst1|inst8|ALT_INV_Add4~21_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(6),
	datad => \inst1|inst8|ALT_INV_Add2~0_combout\,
	cin => \inst1|inst8|Add3~22\,
	sharein => \inst1|inst8|Add3~23\,
	sumout => \inst1|inst8|Add3~25_sumout\);

-- Location: FF_X63_Y16_N50
\inst1|inst8|adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst8|Add3~25_sumout\,
	ena => \inst1|inst8|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|adr\(8));

-- Location: M10K_X62_Y16_N0
\inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000066600ABB009AA009AA00ABB0066600000000000000000000000000000000000000000000000000000000000000ABB009AA00899008880088800888009AA00ABB00BBB00BCC000000000000000000000000000000000000000000222009AA00899008880089900999009AA00ABB00BBC00BCC00ABB00ABB00BBB00222000000000000000000000000000222008990078800899009AA009AA00AAA00AAA00ABB00BCC00BCC00CDD00CCC00BBB00BCC00222000000000000000000000088800788009AA00ABB00ABB00BCC00BCC00BCD00CDD00CDD00CD",
	mem_init2 => "D00CDD00DEE00DEE00BCC00BCC00000000000000000999007880089900ABB00BCC00BCC00CDD00CDD00CDD00CDD00CDD00CDD00DEE00DEE00DFF00DEE00BCC00BCC0000000000008880088800ABB00ACC00CDD00CDD00CDD00CDD00CDD00CDD00CDD00DEE00DEE00DFF00EFF00EFF00CDD00BCC000000055500888009AA00ABB00BCC00CDD00CDD00CDD00CDD00CDD00DEE00DEE00DFF00EFF00EFF00EFF00FFF00FFF00DDD00888009990078800ABB00BCC00CDD00CDD00CDD00CDD00DEE00DEE00DEF00EFF00EFF00EFF00FFF00FFF00FFF00FFF00EFF00FFF009990078800ABB00BCC00CDD00CDD00CDD00DEE00DEE00DFF00EFF00EFF00EFF00EFF00FFF0",
	mem_init1 => "0FFF00FFF00FFF00FFF00FFF009AA0077700ABB00CDD00CDD00CDD00DEE00DEE00DFF00EFF00EFF00EFF00EFF00EFF00FFF00FFF00FFF00FFF00FFF00FFF00ABB0088800ABB00CDD00CDD00DEE00DEE00DFF00DFF00EFF00EFF00EFF00EFF00EFF00FFF00FFF00FFF00FFF00FFF00EFF00666009AA00ABB00CDD00DEE00DEE00DFF00EFF00EFF00EFF00EFF00EFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF008990000000AAA00AAA00CDD00DEE00DEE00DFF00EFF00EFF00EFF00EFF00EFF00FFF00FFF00FFF00FFF00FFF00FFF00EFF000000000000BCC00ABB00CDD00DEF00DEE00DFF00EFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00E",
	mem_init0 => "FF00DEE00000000000000000BBB00BCC00DEE00DEE00EFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00EFF00DEE000000000000000000000022200BCC00BCC00CDD00EFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00FFF00EEE00DDD0033300000000000000000000000000022200BCC00BCC00CCD00DEE00FFF00FFF00FFF00FFF00FFF00EFF00DDD00CDD00333000000000000000000000000000000000000000000BCC00BCC00BCC00DDD00EFF00EFF00EEE00EEE00DDD00CCC0000000000000000000000000000000000000000000000000000000000000067700CDD00CDD00DDD00CDD0077700000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/ball.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_ball:inst7|ball_rom:inst|altsyncram:altsyncram_component|altsyncram_9i24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst7|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X63_Y16_N17
\inst1|inst8|to_print\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|inst8|to_print~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|to_print~q\);

-- Location: IOIBUF_X46_Y0_N1
\RIGHT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RIGHT,
	o => \RIGHT~input_o\);

-- Location: MLABCELL_X55_Y17_N0
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|position\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~14\ = CARRY(( \inst|position\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_position\(0),
	cin => GND,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: MLABCELL_X55_Y17_N42
\inst|position[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|position[10]~0_combout\ = ( !\inst|position\(7) & ( !\inst|position\(3) & ( (!\inst|position\(5) & (!\inst|position\(6) & !\inst|position\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_position\(5),
	datac => \inst|ALT_INV_position\(6),
	datad => \inst|ALT_INV_position\(4),
	datae => \inst|ALT_INV_position\(7),
	dataf => \inst|ALT_INV_position\(3),
	combout => \inst|position[10]~0_combout\);

-- Location: IOIBUF_X46_Y0_N18
\LEFT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEFT,
	o => \LEFT~input_o\);

-- Location: MLABCELL_X55_Y17_N36
\inst|position[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|position[10]~1_combout\ = ( !\inst|position\(1) & ( !\inst|position\(8) & ( (!\inst|position\(0) & (!\inst|position\(10) & (!\inst|position\(9) & !\inst|position\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(0),
	datab => \inst|ALT_INV_position\(10),
	datac => \inst|ALT_INV_position\(9),
	datad => \inst|ALT_INV_position\(2),
	datae => \inst|ALT_INV_position\(1),
	dataf => \inst|ALT_INV_position\(8),
	combout => \inst|position[10]~1_combout\);

-- Location: MLABCELL_X55_Y17_N48
\inst|position[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|position[10]~2_combout\ = ( !\LEFT~input_o\ & ( ((\RIGHT~input_o\ & (\inst|position[10]~1_combout\ & (\inst|position[10]~0_combout\)))) ) ) # ( \LEFT~input_o\ & ( ((\inst|position\(9) & (\inst|position\(10) & (!\inst|position[10]~0_combout\ & 
-- \inst|position\(8))))) # (\RIGHT~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000011001100110011001100000000000000110011011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_position\(10),
	datad => \inst|ALT_INV_position[10]~0_combout\,
	datae => \ALT_INV_LEFT~input_o\,
	dataf => \inst|ALT_INV_position\(8),
	datag => \inst|ALT_INV_position[10]~1_combout\,
	combout => \inst|position[10]~2_combout\);

-- Location: FF_X55_Y17_N2
\inst|position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(0));

-- Location: MLABCELL_X55_Y17_N3
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|position\(1) ) + ( ((\inst|position\(9) & (\inst|position\(10) & \inst|LessThan1~0_combout\))) # (\RIGHT~input_o\) ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|position\(1) ) + ( ((\inst|position\(9) & (\inst|position\(10) & \inst|LessThan1~0_combout\))) # (\RIGHT~input_o\) ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \inst|ALT_INV_position\(10),
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(1),
	dataf => \ALT_INV_RIGHT~input_o\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: FF_X55_Y17_N5
\inst|position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(1));

-- Location: MLABCELL_X55_Y17_N6
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(2) ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(2) ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(2),
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: FF_X55_Y17_N8
\inst|position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(2));

-- Location: MLABCELL_X55_Y17_N9
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(3) ) + ( \inst|Add0~6\ ))
-- \inst|Add0~2\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(3) ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(3),
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: FF_X55_Y17_N11
\inst|position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(3));

-- Location: MLABCELL_X55_Y17_N12
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(4) ) + ( \inst|Add0~2\ ))
-- \inst|Add0~42\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(4) ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(4),
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: FF_X55_Y17_N14
\inst|position[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(4));

-- Location: MLABCELL_X55_Y17_N15
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(5) ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(5) ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(5),
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

-- Location: FF_X55_Y17_N17
\inst|position[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(5));

-- Location: MLABCELL_X55_Y17_N18
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(6) ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(6) ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(6),
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: FF_X55_Y17_N20
\inst|position[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(6));

-- Location: MLABCELL_X55_Y17_N21
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|position\(7) ) + ( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \inst|position\(7) ) + ( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(7),
	dataf => \inst|ALT_INV_position\(10),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: FF_X55_Y17_N23
\inst|position[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(7));

-- Location: MLABCELL_X55_Y17_N24
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(8) ) + ( \inst|Add0~30\ ))
-- \inst|Add0~22\ = CARRY(( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|position\(8) ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_position\(10),
	dataf => \inst|ALT_INV_position\(8),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: MLABCELL_X55_Y17_N27
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|position\(9) ) + ( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|position\(9) ) + ( ((\inst|position\(9) & (\inst|LessThan1~0_combout\ & \inst|position\(10)))) # (\RIGHT~input_o\) ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(9),
	datab => \ALT_INV_RIGHT~input_o\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_position\(10),
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: MLABCELL_X55_Y17_N30
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|position\(10) ) + ( ((\inst|position\(10) & (\inst|LessThan1~0_combout\ & \inst|position\(9)))) # (\RIGHT~input_o\) ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(10),
	datab => \inst|ALT_INV_LessThan1~0_combout\,
	datac => \inst|ALT_INV_position\(9),
	dataf => \ALT_INV_RIGHT~input_o\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~25_sumout\);

-- Location: FF_X55_Y17_N32
\inst|position[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(10));

-- Location: FF_X55_Y17_N26
\inst|position[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~21_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(8));

-- Location: MLABCELL_X55_Y17_N54
\inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ( \inst|position\(7) & ( \inst|position\(3) & ( \inst|position\(8) ) ) ) # ( !\inst|position\(7) & ( \inst|position\(3) & ( \inst|position\(8) ) ) ) # ( \inst|position\(7) & ( !\inst|position\(3) & ( \inst|position\(8) ) ) ) # 
-- ( !\inst|position\(7) & ( !\inst|position\(3) & ( (\inst|position\(8) & (((\inst|position\(4)) # (\inst|position\(6))) # (\inst|position\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_position\(8),
	datab => \inst|ALT_INV_position\(5),
	datac => \inst|ALT_INV_position\(6),
	datad => \inst|ALT_INV_position\(4),
	datae => \inst|ALT_INV_position\(7),
	dataf => \inst|ALT_INV_position\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: FF_X55_Y17_N29
\inst|position[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	ena => \inst|ALT_INV_position[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|position\(9));

-- Location: FF_X58_Y17_N56
\inst|pos_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(9));

-- Location: LABCELL_X56_Y17_N27
\inst|pos_out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pos_out[10]~feeder_combout\ = ( \inst|position\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_position\(10),
	combout => \inst|pos_out[10]~feeder_combout\);

-- Location: FF_X56_Y17_N28
\inst|pos_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|pos_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(10));

-- Location: LABCELL_X56_Y17_N57
\inst1|inst5|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~0_combout\ = ( !\inst8|u_vga_generator|x\(10) & ( \inst|pos_out\(10) ) ) # ( \inst8|u_vga_generator|x\(10) & ( !\inst|pos_out\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst8|u_vga_generator|ALT_INV_x\(10),
	dataf => \inst|ALT_INV_pos_out\(10),
	combout => \inst1|inst5|LessThan2~0_combout\);

-- Location: FF_X60_Y17_N43
\inst|pos_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(8));

-- Location: FF_X60_Y17_N59
\inst|pos_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(6));

-- Location: FF_X59_Y17_N58
\inst|pos_out[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out[5]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y17_N36
\inst1|inst5|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~1_combout\ = ( \inst|pos_out[5]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|x\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(5),
	dataf => \inst|ALT_INV_pos_out[5]~DUPLICATE_q\,
	combout => \inst1|inst5|LessThan2~1_combout\);

-- Location: FF_X60_Y17_N35
\inst|pos_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(7));

-- Location: FF_X60_Y17_N55
\inst|pos_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(3));

-- Location: FF_X60_Y17_N53
\inst|pos_out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out[4]~DUPLICATE_q\);

-- Location: LABCELL_X59_Y17_N48
\inst1|inst5|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~2_combout\ = ( \inst|pos_out[5]~DUPLICATE_q\ & ( !\inst8|u_vga_generator|x\(5) ) ) # ( !\inst|pos_out[5]~DUPLICATE_q\ & ( \inst8|u_vga_generator|x\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(5),
	dataf => \inst|ALT_INV_pos_out[5]~DUPLICATE_q\,
	combout => \inst1|inst5|LessThan2~2_combout\);

-- Location: FF_X58_Y17_N47
\inst|pos_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(1));

-- Location: FF_X58_Y17_N38
\inst|pos_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(0));

-- Location: FF_X58_Y17_N53
\inst|pos_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(2));

-- Location: LABCELL_X58_Y17_N57
\inst1|inst5|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~3_combout\ = ( \inst|pos_out\(0) & ( \inst|pos_out\(2) & ( (!\inst8|u_vga_generator|x\(2)) # ((!\inst8|u_vga_generator|x\(1) & ((!\inst8|u_vga_generator|x\(0)) # (\inst|pos_out\(1)))) # (\inst8|u_vga_generator|x\(1) & 
-- (!\inst8|u_vga_generator|x\(0) & \inst|pos_out\(1)))) ) ) ) # ( !\inst|pos_out\(0) & ( \inst|pos_out\(2) & ( (!\inst8|u_vga_generator|x\(2)) # ((!\inst8|u_vga_generator|x\(1) & \inst|pos_out\(1))) ) ) ) # ( \inst|pos_out\(0) & ( !\inst|pos_out\(2) & ( 
-- (!\inst8|u_vga_generator|x\(2) & ((!\inst8|u_vga_generator|x\(1) & ((!\inst8|u_vga_generator|x\(0)) # (\inst|pos_out\(1)))) # (\inst8|u_vga_generator|x\(1) & (!\inst8|u_vga_generator|x\(0) & \inst|pos_out\(1))))) ) ) ) # ( !\inst|pos_out\(0) & ( 
-- !\inst|pos_out\(2) & ( (!\inst8|u_vga_generator|x\(1) & (\inst|pos_out\(1) & !\inst8|u_vga_generator|x\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000100011100000000011111111000010101111111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(1),
	datab => \inst8|u_vga_generator|ALT_INV_x\(0),
	datac => \inst|ALT_INV_pos_out\(1),
	datad => \inst8|u_vga_generator|ALT_INV_x\(2),
	datae => \inst|ALT_INV_pos_out\(0),
	dataf => \inst|ALT_INV_pos_out\(2),
	combout => \inst1|inst5|LessThan3~3_combout\);

-- Location: LABCELL_X58_Y17_N48
\inst1|inst5|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~3_combout\ = ( !\inst1|inst5|LessThan2~2_combout\ & ( \inst1|inst5|LessThan3~3_combout\ & ( (!\inst8|u_vga_generator|x\(4) & ((!\inst8|u_vga_generator|x\(3)) # ((\inst|pos_out[4]~DUPLICATE_q\) # (\inst|pos_out\(3))))) # 
-- (\inst8|u_vga_generator|x\(4) & (\inst|pos_out[4]~DUPLICATE_q\ & ((!\inst8|u_vga_generator|x\(3)) # (\inst|pos_out\(3))))) ) ) ) # ( !\inst1|inst5|LessThan2~2_combout\ & ( !\inst1|inst5|LessThan3~3_combout\ & ( (!\inst8|u_vga_generator|x\(4) & 
-- (((!\inst8|u_vga_generator|x\(3) & \inst|pos_out\(3))) # (\inst|pos_out[4]~DUPLICATE_q\))) # (\inst8|u_vga_generator|x\(4) & (!\inst8|u_vga_generator|x\(3) & (\inst|pos_out\(3) & \inst|pos_out[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000000000000000010001010111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(4),
	datab => \inst8|u_vga_generator|ALT_INV_x\(3),
	datac => \inst|ALT_INV_pos_out\(3),
	datad => \inst|ALT_INV_pos_out[4]~DUPLICATE_q\,
	datae => \inst1|inst5|ALT_INV_LessThan2~2_combout\,
	dataf => \inst1|inst5|ALT_INV_LessThan3~3_combout\,
	combout => \inst1|inst5|LessThan2~3_combout\);

-- Location: LABCELL_X58_Y17_N42
\inst1|inst5|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~4_combout\ = ( \inst|pos_out\(7) & ( \inst1|inst5|LessThan2~3_combout\ & ( (!\inst|pos_out\(6) & (\inst8|u_vga_generator|x\(7) & \inst8|u_vga_generator|x\(6))) ) ) ) # ( !\inst|pos_out\(7) & ( \inst1|inst5|LessThan2~3_combout\ & ( 
-- ((!\inst|pos_out\(6) & \inst8|u_vga_generator|x\(6))) # (\inst8|u_vga_generator|x\(7)) ) ) ) # ( \inst|pos_out\(7) & ( !\inst1|inst5|LessThan2~3_combout\ & ( (\inst8|u_vga_generator|x\(7) & ((!\inst|pos_out\(6) & ((!\inst1|inst5|LessThan2~1_combout\) # 
-- (\inst8|u_vga_generator|x\(6)))) # (\inst|pos_out\(6) & (\inst8|u_vga_generator|x\(6) & !\inst1|inst5|LessThan2~1_combout\)))) ) ) ) # ( !\inst|pos_out\(7) & ( !\inst1|inst5|LessThan2~3_combout\ & ( ((!\inst|pos_out\(6) & 
-- ((!\inst1|inst5|LessThan2~1_combout\) # (\inst8|u_vga_generator|x\(6)))) # (\inst|pos_out\(6) & (\inst8|u_vga_generator|x\(6) & !\inst1|inst5|LessThan2~1_combout\))) # (\inst8|u_vga_generator|x\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111011001000110000001000111011001110110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pos_out\(6),
	datab => \inst8|u_vga_generator|ALT_INV_x\(7),
	datac => \inst8|u_vga_generator|ALT_INV_x\(6),
	datad => \inst1|inst5|ALT_INV_LessThan2~1_combout\,
	datae => \inst|ALT_INV_pos_out\(7),
	dataf => \inst1|inst5|ALT_INV_LessThan2~3_combout\,
	combout => \inst1|inst5|LessThan2~4_combout\);

-- Location: LABCELL_X58_Y17_N39
\inst1|inst5|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan2~5_combout\ = ( \inst|pos_out\(8) & ( \inst1|inst5|LessThan2~4_combout\ & ( (!\inst1|inst5|LessThan2~0_combout\ & ((!\inst8|u_vga_generator|x\(9) & ((!\inst8|u_vga_generator|x\(8)) # (\inst|pos_out\(9)))) # 
-- (\inst8|u_vga_generator|x\(9) & (\inst|pos_out\(9) & !\inst8|u_vga_generator|x\(8))))) ) ) ) # ( !\inst|pos_out\(8) & ( \inst1|inst5|LessThan2~4_combout\ & ( (!\inst8|u_vga_generator|x\(9) & (\inst|pos_out\(9) & !\inst1|inst5|LessThan2~0_combout\)) ) ) ) 
-- # ( \inst|pos_out\(8) & ( !\inst1|inst5|LessThan2~4_combout\ & ( (!\inst1|inst5|LessThan2~0_combout\ & ((!\inst8|u_vga_generator|x\(9)) # (\inst|pos_out\(9)))) ) ) ) # ( !\inst|pos_out\(8) & ( !\inst1|inst5|LessThan2~4_combout\ & ( 
-- (!\inst1|inst5|LessThan2~0_combout\ & ((!\inst8|u_vga_generator|x\(9) & ((!\inst8|u_vga_generator|x\(8)) # (\inst|pos_out\(9)))) # (\inst8|u_vga_generator|x\(9) & (\inst|pos_out\(9) & !\inst8|u_vga_generator|x\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000000000101110110000000000100010000000001011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(9),
	datab => \inst|ALT_INV_pos_out\(9),
	datac => \inst8|u_vga_generator|ALT_INV_x\(8),
	datad => \inst1|inst5|ALT_INV_LessThan2~0_combout\,
	datae => \inst|ALT_INV_pos_out\(8),
	dataf => \inst1|inst5|ALT_INV_LessThan2~4_combout\,
	combout => \inst1|inst5|LessThan2~5_combout\);

-- Location: MLABCELL_X55_Y13_N39
\inst1|inst5|to_print~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|to_print~0_combout\ = ( \inst8|u_vga_generator|y\(2) & ( (\inst8|u_vga_generator|y\(9) & (!\inst8|u_vga_generator|y\(4) $ (!\inst8|u_vga_generator|y\(3)))) ) ) # ( !\inst8|u_vga_generator|y\(2) & ( (\inst8|u_vga_generator|y\(9) & 
-- ((\inst8|u_vga_generator|y\(3)) # (\inst8|u_vga_generator|y\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(9),
	datad => \inst8|u_vga_generator|ALT_INV_y\(3),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(2),
	combout => \inst1|inst5|to_print~0_combout\);

-- Location: LABCELL_X59_Y17_N45
\inst1|inst5|to_print~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|to_print~1_combout\ = ( \inst|pos_out\(10) & ( (\inst8|u_vga_generator|y\(5) & (!\inst8|u_vga_generator|y\(10) & (\inst8|u_vga_generator|x\(10) & \inst8|u_vga_generator|y\(8)))) ) ) # ( !\inst|pos_out\(10) & ( (\inst8|u_vga_generator|y\(5) & 
-- (!\inst8|u_vga_generator|y\(10) & \inst8|u_vga_generator|y\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(5),
	datab => \inst8|u_vga_generator|ALT_INV_y\(10),
	datac => \inst8|u_vga_generator|ALT_INV_x\(10),
	datad => \inst8|u_vga_generator|ALT_INV_y\(8),
	dataf => \inst|ALT_INV_pos_out\(10),
	combout => \inst1|inst5|to_print~1_combout\);

-- Location: LABCELL_X59_Y17_N39
\inst1|inst5|to_print~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|to_print~2_combout\ = ( \inst8|u_vga_generator|y\(6) & ( (\inst8|u_vga_generator|y\(7) & (\inst1|inst5|to_print~0_combout\ & \inst1|inst5|to_print~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(7),
	datab => \inst1|inst5|ALT_INV_to_print~0_combout\,
	datac => \inst1|inst5|ALT_INV_to_print~1_combout\,
	dataf => \inst8|u_vga_generator|ALT_INV_y\(6),
	combout => \inst1|inst5|to_print~2_combout\);

-- Location: FF_X60_Y17_N44
\inst|pos_out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out[8]~DUPLICATE_q\);

-- Location: FF_X60_Y17_N52
\inst|pos_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(4));

-- Location: FF_X60_Y17_N56
\inst|pos_out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out[3]~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y17_N0
\inst1|inst5|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~34_cout\ = CARRY(( \inst|pos_out[3]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out[3]~DUPLICATE_q\,
	cin => GND,
	cout => \inst1|inst5|Add0~34_cout\);

-- Location: MLABCELL_X60_Y17_N3
\inst1|inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~25_sumout\ = SUM(( \inst|pos_out\(4) ) + ( VCC ) + ( \inst1|inst5|Add0~34_cout\ ))
-- \inst1|inst5|Add0~26\ = CARRY(( \inst|pos_out\(4) ) + ( VCC ) + ( \inst1|inst5|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out\(4),
	cin => \inst1|inst5|Add0~34_cout\,
	sumout => \inst1|inst5|Add0~25_sumout\,
	cout => \inst1|inst5|Add0~26\);

-- Location: MLABCELL_X60_Y17_N6
\inst1|inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~21_sumout\ = SUM(( \inst|pos_out[5]~DUPLICATE_q\ ) + ( VCC ) + ( \inst1|inst5|Add0~26\ ))
-- \inst1|inst5|Add0~22\ = CARRY(( \inst|pos_out[5]~DUPLICATE_q\ ) + ( VCC ) + ( \inst1|inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out[5]~DUPLICATE_q\,
	cin => \inst1|inst5|Add0~26\,
	sumout => \inst1|inst5|Add0~21_sumout\,
	cout => \inst1|inst5|Add0~22\);

-- Location: MLABCELL_X60_Y17_N9
\inst1|inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~17_sumout\ = SUM(( \inst|pos_out\(6) ) + ( VCC ) + ( \inst1|inst5|Add0~22\ ))
-- \inst1|inst5|Add0~18\ = CARRY(( \inst|pos_out\(6) ) + ( VCC ) + ( \inst1|inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out\(6),
	cin => \inst1|inst5|Add0~22\,
	sumout => \inst1|inst5|Add0~17_sumout\,
	cout => \inst1|inst5|Add0~18\);

-- Location: MLABCELL_X60_Y17_N12
\inst1|inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~13_sumout\ = SUM(( \inst|pos_out\(7) ) + ( GND ) + ( \inst1|inst5|Add0~18\ ))
-- \inst1|inst5|Add0~14\ = CARRY(( \inst|pos_out\(7) ) + ( GND ) + ( \inst1|inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out\(7),
	cin => \inst1|inst5|Add0~18\,
	sumout => \inst1|inst5|Add0~13_sumout\,
	cout => \inst1|inst5|Add0~14\);

-- Location: MLABCELL_X60_Y17_N15
\inst1|inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~9_sumout\ = SUM(( \inst|pos_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|inst5|Add0~14\ ))
-- \inst1|inst5|Add0~10\ = CARRY(( \inst|pos_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst1|inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pos_out[8]~DUPLICATE_q\,
	cin => \inst1|inst5|Add0~14\,
	sumout => \inst1|inst5|Add0~9_sumout\,
	cout => \inst1|inst5|Add0~10\);

-- Location: MLABCELL_X60_Y17_N18
\inst1|inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~5_sumout\ = SUM(( \inst|pos_out\(9) ) + ( GND ) + ( \inst1|inst5|Add0~10\ ))
-- \inst1|inst5|Add0~6\ = CARRY(( \inst|pos_out\(9) ) + ( GND ) + ( \inst1|inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out\(9),
	cin => \inst1|inst5|Add0~10\,
	sumout => \inst1|inst5|Add0~5_sumout\,
	cout => \inst1|inst5|Add0~6\);

-- Location: MLABCELL_X60_Y17_N21
\inst1|inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~1_sumout\ = SUM(( \inst|pos_out\(10) ) + ( GND ) + ( \inst1|inst5|Add0~6\ ))
-- \inst1|inst5|Add0~2\ = CARRY(( \inst|pos_out\(10) ) + ( GND ) + ( \inst1|inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pos_out\(10),
	cin => \inst1|inst5|Add0~6\,
	sumout => \inst1|inst5|Add0~1_sumout\,
	cout => \inst1|inst5|Add0~2\);

-- Location: MLABCELL_X60_Y17_N24
\inst1|inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~29_sumout\ = SUM(( GND ) + ( GND ) + ( \inst1|inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst5|Add0~2\,
	sumout => \inst1|inst5|Add0~29_sumout\);

-- Location: MLABCELL_X60_Y17_N39
\inst1|inst5|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~7_combout\ = ( !\inst1|inst5|Add0~29_sumout\ & ( (!\inst1|inst5|Add0~1_sumout\) # (\inst8|u_vga_generator|x\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(10),
	datad => \inst1|inst5|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst5|ALT_INV_Add0~29_sumout\,
	combout => \inst1|inst5|LessThan3~7_combout\);

-- Location: LABCELL_X59_Y17_N42
\inst1|inst5|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~1_combout\ = ( \inst1|inst5|Add0~5_sumout\ & ( !\inst8|u_vga_generator|x\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(9),
	dataf => \inst1|inst5|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst5|LessThan3~1_combout\);

-- Location: MLABCELL_X60_Y17_N30
\inst1|inst5|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~0_combout\ = !\inst8|u_vga_generator|x\(10) $ (!\inst1|inst5|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(10),
	datad => \inst1|inst5|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst5|LessThan3~0_combout\);

-- Location: MLABCELL_X60_Y17_N36
\inst1|inst5|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~2_combout\ = ( \inst1|inst5|Add0~5_sumout\ & ( !\inst8|u_vga_generator|x\(9) ) ) # ( !\inst1|inst5|Add0~5_sumout\ & ( \inst8|u_vga_generator|x\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(9),
	dataf => \inst1|inst5|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst5|LessThan3~2_combout\);

-- Location: MLABCELL_X60_Y17_N33
\inst1|inst5|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~4_combout\ = ( \inst1|inst5|LessThan3~3_combout\ & ( (!\inst8|u_vga_generator|x\(4) & ((!\inst8|u_vga_generator|x\(3)) # ((!\inst|pos_out\(3)) # (\inst1|inst5|Add0~25_sumout\)))) # (\inst8|u_vga_generator|x\(4) & 
-- (\inst1|inst5|Add0~25_sumout\ & ((!\inst8|u_vga_generator|x\(3)) # (!\inst|pos_out\(3))))) ) ) # ( !\inst1|inst5|LessThan3~3_combout\ & ( (!\inst8|u_vga_generator|x\(4) & (((!\inst8|u_vga_generator|x\(3) & !\inst|pos_out\(3))) # 
-- (\inst1|inst5|Add0~25_sumout\))) # (\inst8|u_vga_generator|x\(4) & (!\inst8|u_vga_generator|x\(3) & (!\inst|pos_out\(3) & \inst1|inst5|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101100100000001110110011001000111111101100100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(3),
	datab => \inst8|u_vga_generator|ALT_INV_x\(4),
	datac => \inst|ALT_INV_pos_out\(3),
	datad => \inst1|inst5|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst5|ALT_INV_LessThan3~3_combout\,
	combout => \inst1|inst5|LessThan3~4_combout\);

-- Location: MLABCELL_X60_Y17_N48
\inst1|inst5|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~5_combout\ = ( \inst1|inst5|Add0~21_sumout\ & ( \inst1|inst5|LessThan3~4_combout\ & ( (!\inst8|u_vga_generator|x\(6)) # (\inst1|inst5|Add0~17_sumout\) ) ) ) # ( !\inst1|inst5|Add0~21_sumout\ & ( \inst1|inst5|LessThan3~4_combout\ & ( 
-- (!\inst8|u_vga_generator|x\(6) & ((!\inst8|u_vga_generator|x\(5)) # (\inst1|inst5|Add0~17_sumout\))) # (\inst8|u_vga_generator|x\(6) & (!\inst8|u_vga_generator|x\(5) & \inst1|inst5|Add0~17_sumout\)) ) ) ) # ( \inst1|inst5|Add0~21_sumout\ & ( 
-- !\inst1|inst5|LessThan3~4_combout\ & ( (!\inst8|u_vga_generator|x\(6) & ((!\inst8|u_vga_generator|x\(5)) # (\inst1|inst5|Add0~17_sumout\))) # (\inst8|u_vga_generator|x\(6) & (!\inst8|u_vga_generator|x\(5) & \inst1|inst5|Add0~17_sumout\)) ) ) ) # ( 
-- !\inst1|inst5|Add0~21_sumout\ & ( !\inst1|inst5|LessThan3~4_combout\ & ( (!\inst8|u_vga_generator|x\(6) & \inst1|inst5|Add0~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010100010001110111010001000111011101010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(6),
	datab => \inst8|u_vga_generator|ALT_INV_x\(5),
	datad => \inst1|inst5|ALT_INV_Add0~17_sumout\,
	datae => \inst1|inst5|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst5|ALT_INV_LessThan3~4_combout\,
	combout => \inst1|inst5|LessThan3~5_combout\);

-- Location: MLABCELL_X60_Y17_N45
\inst1|inst5|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|LessThan3~6_combout\ = ( !\inst1|inst5|LessThan3~2_combout\ & ( \inst1|inst5|LessThan3~5_combout\ & ( (!\inst8|u_vga_generator|x\(8) & (((!\inst8|u_vga_generator|x\(7)) # (\inst1|inst5|Add0~13_sumout\)) # (\inst1|inst5|Add0~9_sumout\))) # 
-- (\inst8|u_vga_generator|x\(8) & (\inst1|inst5|Add0~9_sumout\ & ((!\inst8|u_vga_generator|x\(7)) # (\inst1|inst5|Add0~13_sumout\)))) ) ) ) # ( !\inst1|inst5|LessThan3~2_combout\ & ( !\inst1|inst5|LessThan3~5_combout\ & ( (!\inst8|u_vga_generator|x\(8) & 
-- (((\inst1|inst5|Add0~13_sumout\ & !\inst8|u_vga_generator|x\(7))) # (\inst1|inst5|Add0~9_sumout\))) # (\inst8|u_vga_generator|x\(8) & (\inst1|inst5|Add0~9_sumout\ & (\inst1|inst5|Add0~13_sumout\ & !\inst8|u_vga_generator|x\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100100010000000000000000010111011001010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(8),
	datab => \inst1|inst5|ALT_INV_Add0~9_sumout\,
	datac => \inst1|inst5|ALT_INV_Add0~13_sumout\,
	datad => \inst8|u_vga_generator|ALT_INV_x\(7),
	datae => \inst1|inst5|ALT_INV_LessThan3~2_combout\,
	dataf => \inst1|inst5|ALT_INV_LessThan3~5_combout\,
	combout => \inst1|inst5|LessThan3~6_combout\);

-- Location: LABCELL_X59_Y17_N30
\inst1|inst5|to_print~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|to_print~3_combout\ = ( \inst1|inst5|LessThan3~0_combout\ & ( \inst1|inst5|LessThan3~6_combout\ & ( (!\inst1|inst5|LessThan2~5_combout\ & (\inst1|inst5|to_print~2_combout\ & !\inst1|inst5|LessThan3~7_combout\)) ) ) ) # ( 
-- !\inst1|inst5|LessThan3~0_combout\ & ( \inst1|inst5|LessThan3~6_combout\ & ( (!\inst1|inst5|LessThan2~5_combout\ & \inst1|inst5|to_print~2_combout\) ) ) ) # ( \inst1|inst5|LessThan3~0_combout\ & ( !\inst1|inst5|LessThan3~6_combout\ & ( 
-- (!\inst1|inst5|LessThan2~5_combout\ & (\inst1|inst5|to_print~2_combout\ & !\inst1|inst5|LessThan3~7_combout\)) ) ) ) # ( !\inst1|inst5|LessThan3~0_combout\ & ( !\inst1|inst5|LessThan3~6_combout\ & ( (!\inst1|inst5|LessThan2~5_combout\ & 
-- (\inst1|inst5|to_print~2_combout\ & ((!\inst1|inst5|LessThan3~7_combout\) # (\inst1|inst5|LessThan3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010000000100010001000100010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_LessThan2~5_combout\,
	datab => \inst1|inst5|ALT_INV_to_print~2_combout\,
	datac => \inst1|inst5|ALT_INV_LessThan3~7_combout\,
	datad => \inst1|inst5|ALT_INV_LessThan3~1_combout\,
	datae => \inst1|inst5|ALT_INV_LessThan3~0_combout\,
	dataf => \inst1|inst5|ALT_INV_LessThan3~6_combout\,
	combout => \inst1|inst5|to_print~3_combout\);

-- Location: FF_X60_Y17_N17
\inst1|inst5|to_print\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|inst5|to_print~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|to_print~q\);

-- Location: LABCELL_X58_Y17_N0
\inst1|inst5|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~1_sumout\ = SUM(( !\inst8|u_vga_generator|x\(0) $ (!\inst|pos_out\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst5|Add5~2\ = CARRY(( !\inst8|u_vga_generator|x\(0) $ (!\inst|pos_out\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst5|Add5~3\ = SHARE((!\inst|pos_out\(0)) # (\inst8|u_vga_generator|x\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(0),
	datad => \inst|ALT_INV_pos_out\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst5|Add5~1_sumout\,
	cout => \inst1|inst5|Add5~2\,
	shareout => \inst1|inst5|Add5~3\);

-- Location: FF_X58_Y17_N2
\inst1|inst5|adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add5~1_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(0));

-- Location: LABCELL_X58_Y17_N3
\inst1|inst5|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~5_sumout\ = SUM(( !\inst8|u_vga_generator|x\(1) $ (\inst|pos_out\(1)) ) + ( \inst1|inst5|Add5~3\ ) + ( \inst1|inst5|Add5~2\ ))
-- \inst1|inst5|Add5~6\ = CARRY(( !\inst8|u_vga_generator|x\(1) $ (\inst|pos_out\(1)) ) + ( \inst1|inst5|Add5~3\ ) + ( \inst1|inst5|Add5~2\ ))
-- \inst1|inst5|Add5~7\ = SHARE((\inst8|u_vga_generator|x\(1) & !\inst|pos_out\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(1),
	datad => \inst|ALT_INV_pos_out\(1),
	cin => \inst1|inst5|Add5~2\,
	sharein => \inst1|inst5|Add5~3\,
	sumout => \inst1|inst5|Add5~5_sumout\,
	cout => \inst1|inst5|Add5~6\,
	shareout => \inst1|inst5|Add5~7\);

-- Location: FF_X58_Y17_N5
\inst1|inst5|adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add5~5_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(1));

-- Location: LABCELL_X58_Y17_N6
\inst1|inst5|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~9_sumout\ = SUM(( !\inst8|u_vga_generator|x\(2) $ (\inst|pos_out\(2)) ) + ( \inst1|inst5|Add5~7\ ) + ( \inst1|inst5|Add5~6\ ))
-- \inst1|inst5|Add5~10\ = CARRY(( !\inst8|u_vga_generator|x\(2) $ (\inst|pos_out\(2)) ) + ( \inst1|inst5|Add5~7\ ) + ( \inst1|inst5|Add5~6\ ))
-- \inst1|inst5|Add5~11\ = SHARE((\inst8|u_vga_generator|x\(2) & !\inst|pos_out\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(2),
	datac => \inst|ALT_INV_pos_out\(2),
	cin => \inst1|inst5|Add5~6\,
	sharein => \inst1|inst5|Add5~7\,
	sumout => \inst1|inst5|Add5~9_sumout\,
	cout => \inst1|inst5|Add5~10\,
	shareout => \inst1|inst5|Add5~11\);

-- Location: FF_X58_Y17_N8
\inst1|inst5|adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add5~9_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(2));

-- Location: LABCELL_X58_Y17_N9
\inst1|inst5|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~13_sumout\ = SUM(( !\inst8|u_vga_generator|x\(3) $ (!\inst|pos_out\(3)) ) + ( \inst1|inst5|Add5~11\ ) + ( \inst1|inst5|Add5~10\ ))
-- \inst1|inst5|Add5~14\ = CARRY(( !\inst8|u_vga_generator|x\(3) $ (!\inst|pos_out\(3)) ) + ( \inst1|inst5|Add5~11\ ) + ( \inst1|inst5|Add5~10\ ))
-- \inst1|inst5|Add5~15\ = SHARE((!\inst|pos_out\(3)) # (\inst8|u_vga_generator|x\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(3),
	datad => \inst|ALT_INV_pos_out\(3),
	cin => \inst1|inst5|Add5~10\,
	sharein => \inst1|inst5|Add5~11\,
	sumout => \inst1|inst5|Add5~13_sumout\,
	cout => \inst1|inst5|Add5~14\,
	shareout => \inst1|inst5|Add5~15\);

-- Location: LABCELL_X59_Y17_N0
\inst1|inst5|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~1_sumout\ = SUM(( !\inst1|inst5|Add5~13_sumout\ $ (\inst8|u_vga_generator|y\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst5|Add3~2\ = CARRY(( !\inst1|inst5|Add5~13_sumout\ $ (\inst8|u_vga_generator|y\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst1|inst5|Add3~3\ = SHARE((\inst1|inst5|Add5~13_sumout\ & !\inst8|u_vga_generator|y\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|ALT_INV_Add5~13_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst1|inst5|Add3~1_sumout\,
	cout => \inst1|inst5|Add3~2\,
	shareout => \inst1|inst5|Add3~3\);

-- Location: FF_X59_Y17_N2
\inst1|inst5|adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~1_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(3));

-- Location: LABCELL_X58_Y17_N12
\inst1|inst5|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~17_sumout\ = SUM(( !\inst8|u_vga_generator|x\(4) $ (\inst|pos_out[4]~DUPLICATE_q\) ) + ( \inst1|inst5|Add5~15\ ) + ( \inst1|inst5|Add5~14\ ))
-- \inst1|inst5|Add5~18\ = CARRY(( !\inst8|u_vga_generator|x\(4) $ (\inst|pos_out[4]~DUPLICATE_q\) ) + ( \inst1|inst5|Add5~15\ ) + ( \inst1|inst5|Add5~14\ ))
-- \inst1|inst5|Add5~19\ = SHARE((\inst8|u_vga_generator|x\(4) & !\inst|pos_out[4]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_x\(4),
	datad => \inst|ALT_INV_pos_out[4]~DUPLICATE_q\,
	cin => \inst1|inst5|Add5~14\,
	sharein => \inst1|inst5|Add5~15\,
	sumout => \inst1|inst5|Add5~17_sumout\,
	cout => \inst1|inst5|Add5~18\,
	shareout => \inst1|inst5|Add5~19\);

-- Location: LABCELL_X59_Y17_N3
\inst1|inst5|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~5_sumout\ = SUM(( !\inst8|u_vga_generator|y\(1) $ (\inst1|inst5|Add5~17_sumout\) ) + ( \inst1|inst5|Add3~3\ ) + ( \inst1|inst5|Add3~2\ ))
-- \inst1|inst5|Add3~6\ = CARRY(( !\inst8|u_vga_generator|y\(1) $ (\inst1|inst5|Add5~17_sumout\) ) + ( \inst1|inst5|Add3~3\ ) + ( \inst1|inst5|Add3~2\ ))
-- \inst1|inst5|Add3~7\ = SHARE((!\inst8|u_vga_generator|y\(1) & \inst1|inst5|Add5~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(1),
	datad => \inst1|inst5|ALT_INV_Add5~17_sumout\,
	cin => \inst1|inst5|Add3~2\,
	sharein => \inst1|inst5|Add3~3\,
	sumout => \inst1|inst5|Add3~5_sumout\,
	cout => \inst1|inst5|Add3~6\,
	shareout => \inst1|inst5|Add3~7\);

-- Location: FF_X59_Y17_N5
\inst1|inst5|adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~5_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(4));

-- Location: FF_X59_Y17_N59
\inst|pos_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst|position\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos_out\(5));

-- Location: LABCELL_X58_Y17_N15
\inst1|inst5|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~21_sumout\ = SUM(( !\inst8|u_vga_generator|x\(5) $ (\inst|pos_out\(5)) ) + ( \inst1|inst5|Add5~19\ ) + ( \inst1|inst5|Add5~18\ ))
-- \inst1|inst5|Add5~22\ = CARRY(( !\inst8|u_vga_generator|x\(5) $ (\inst|pos_out\(5)) ) + ( \inst1|inst5|Add5~19\ ) + ( \inst1|inst5|Add5~18\ ))
-- \inst1|inst5|Add5~23\ = SHARE((\inst8|u_vga_generator|x\(5) & !\inst|pos_out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(5),
	datad => \inst|ALT_INV_pos_out\(5),
	cin => \inst1|inst5|Add5~18\,
	sharein => \inst1|inst5|Add5~19\,
	sumout => \inst1|inst5|Add5~21_sumout\,
	cout => \inst1|inst5|Add5~22\,
	shareout => \inst1|inst5|Add5~23\);

-- Location: LABCELL_X59_Y17_N6
\inst1|inst5|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~9_sumout\ = SUM(( !\inst1|inst5|Add5~21_sumout\ $ (\inst8|u_vga_generator|y\(2)) ) + ( \inst1|inst5|Add3~7\ ) + ( \inst1|inst5|Add3~6\ ))
-- \inst1|inst5|Add3~10\ = CARRY(( !\inst1|inst5|Add5~21_sumout\ $ (\inst8|u_vga_generator|y\(2)) ) + ( \inst1|inst5|Add3~7\ ) + ( \inst1|inst5|Add3~6\ ))
-- \inst1|inst5|Add3~11\ = SHARE((\inst1|inst5|Add5~21_sumout\ & !\inst8|u_vga_generator|y\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|ALT_INV_Add5~21_sumout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(2),
	cin => \inst1|inst5|Add3~6\,
	sharein => \inst1|inst5|Add3~7\,
	sumout => \inst1|inst5|Add3~9_sumout\,
	cout => \inst1|inst5|Add3~10\,
	shareout => \inst1|inst5|Add3~11\);

-- Location: FF_X59_Y17_N8
\inst1|inst5|adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~9_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(5));

-- Location: LABCELL_X58_Y17_N18
\inst1|inst5|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~25_sumout\ = SUM(( !\inst8|u_vga_generator|x\(6) $ (\inst|pos_out\(6)) ) + ( \inst1|inst5|Add5~23\ ) + ( \inst1|inst5|Add5~22\ ))
-- \inst1|inst5|Add5~26\ = CARRY(( !\inst8|u_vga_generator|x\(6) $ (\inst|pos_out\(6)) ) + ( \inst1|inst5|Add5~23\ ) + ( \inst1|inst5|Add5~22\ ))
-- \inst1|inst5|Add5~27\ = SHARE((\inst8|u_vga_generator|x\(6) & !\inst|pos_out\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(6),
	datad => \inst|ALT_INV_pos_out\(6),
	cin => \inst1|inst5|Add5~22\,
	sharein => \inst1|inst5|Add5~23\,
	sumout => \inst1|inst5|Add5~25_sumout\,
	cout => \inst1|inst5|Add5~26\,
	shareout => \inst1|inst5|Add5~27\);

-- Location: LABCELL_X59_Y17_N9
\inst1|inst5|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~13_sumout\ = SUM(( !\inst8|u_vga_generator|y\(3) $ (!\inst1|inst5|Add5~25_sumout\) ) + ( \inst1|inst5|Add3~11\ ) + ( \inst1|inst5|Add3~10\ ))
-- \inst1|inst5|Add3~14\ = CARRY(( !\inst8|u_vga_generator|y\(3) $ (!\inst1|inst5|Add5~25_sumout\) ) + ( \inst1|inst5|Add3~11\ ) + ( \inst1|inst5|Add3~10\ ))
-- \inst1|inst5|Add3~15\ = SHARE((\inst8|u_vga_generator|y\(3) & \inst1|inst5|Add5~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst8|u_vga_generator|ALT_INV_y\(3),
	datad => \inst1|inst5|ALT_INV_Add5~25_sumout\,
	cin => \inst1|inst5|Add3~10\,
	sharein => \inst1|inst5|Add3~11\,
	sumout => \inst1|inst5|Add3~13_sumout\,
	cout => \inst1|inst5|Add3~14\,
	shareout => \inst1|inst5|Add3~15\);

-- Location: FF_X59_Y17_N11
\inst1|inst5|adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~13_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(6));

-- Location: LABCELL_X59_Y17_N51
\inst1|inst5|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add1~0_combout\ = ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(4) ) ) # ( !\inst8|u_vga_generator|y\(3) & ( \inst8|u_vga_generator|y\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst5|Add1~0_combout\);

-- Location: LABCELL_X58_Y17_N21
\inst1|inst5|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~29_sumout\ = SUM(( !\inst8|u_vga_generator|x\(7) $ (\inst|pos_out\(7)) ) + ( \inst1|inst5|Add5~27\ ) + ( \inst1|inst5|Add5~26\ ))
-- \inst1|inst5|Add5~30\ = CARRY(( !\inst8|u_vga_generator|x\(7) $ (\inst|pos_out\(7)) ) + ( \inst1|inst5|Add5~27\ ) + ( \inst1|inst5|Add5~26\ ))
-- \inst1|inst5|Add5~31\ = SHARE((\inst8|u_vga_generator|x\(7) & !\inst|pos_out\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(7),
	datad => \inst|ALT_INV_pos_out\(7),
	cin => \inst1|inst5|Add5~26\,
	sharein => \inst1|inst5|Add5~27\,
	sumout => \inst1|inst5|Add5~29_sumout\,
	cout => \inst1|inst5|Add5~30\,
	shareout => \inst1|inst5|Add5~31\);

-- Location: LABCELL_X59_Y17_N12
\inst1|inst5|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~17_sumout\ = SUM(( !\inst1|inst5|Add1~0_combout\ $ (!\inst8|u_vga_generator|y\(0) $ (\inst1|inst5|Add5~29_sumout\)) ) + ( \inst1|inst5|Add3~15\ ) + ( \inst1|inst5|Add3~14\ ))
-- \inst1|inst5|Add3~18\ = CARRY(( !\inst1|inst5|Add1~0_combout\ $ (!\inst8|u_vga_generator|y\(0) $ (\inst1|inst5|Add5~29_sumout\)) ) + ( \inst1|inst5|Add3~15\ ) + ( \inst1|inst5|Add3~14\ ))
-- \inst1|inst5|Add3~19\ = SHARE((!\inst1|inst5|Add1~0_combout\ & (\inst8|u_vga_generator|y\(0) & \inst1|inst5|Add5~29_sumout\)) # (\inst1|inst5|Add1~0_combout\ & ((\inst1|inst5|Add5~29_sumout\) # (\inst8|u_vga_generator|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Add1~0_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(0),
	datad => \inst1|inst5|ALT_INV_Add5~29_sumout\,
	cin => \inst1|inst5|Add3~14\,
	sharein => \inst1|inst5|Add3~15\,
	sumout => \inst1|inst5|Add3~17_sumout\,
	cout => \inst1|inst5|Add3~18\,
	shareout => \inst1|inst5|Add3~19\);

-- Location: FF_X59_Y17_N14
\inst1|inst5|adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~17_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(7));

-- Location: LABCELL_X58_Y17_N24
\inst1|inst5|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~33_sumout\ = SUM(( !\inst8|u_vga_generator|x\(8) $ (\inst|pos_out\(8)) ) + ( \inst1|inst5|Add5~31\ ) + ( \inst1|inst5|Add5~30\ ))
-- \inst1|inst5|Add5~34\ = CARRY(( !\inst8|u_vga_generator|x\(8) $ (\inst|pos_out\(8)) ) + ( \inst1|inst5|Add5~31\ ) + ( \inst1|inst5|Add5~30\ ))
-- \inst1|inst5|Add5~35\ = SHARE((\inst8|u_vga_generator|x\(8) & !\inst|pos_out\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(8),
	datad => \inst|ALT_INV_pos_out\(8),
	cin => \inst1|inst5|Add5~30\,
	sharein => \inst1|inst5|Add5~31\,
	sumout => \inst1|inst5|Add5~33_sumout\,
	cout => \inst1|inst5|Add5~34\,
	shareout => \inst1|inst5|Add5~35\);

-- Location: LABCELL_X59_Y17_N54
\inst1|inst5|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add1~1_combout\ = ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(5) ) ) # ( !\inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(4) $ (!\inst8|u_vga_generator|y\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(4),
	datac => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst5|Add1~1_combout\);

-- Location: LABCELL_X59_Y17_N15
\inst1|inst5|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~21_sumout\ = SUM(( !\inst8|u_vga_generator|y\(1) $ (!\inst1|inst5|Add5~33_sumout\ $ (!\inst1|inst5|Add1~1_combout\)) ) + ( \inst1|inst5|Add3~19\ ) + ( \inst1|inst5|Add3~18\ ))
-- \inst1|inst5|Add3~22\ = CARRY(( !\inst8|u_vga_generator|y\(1) $ (!\inst1|inst5|Add5~33_sumout\ $ (!\inst1|inst5|Add1~1_combout\)) ) + ( \inst1|inst5|Add3~19\ ) + ( \inst1|inst5|Add3~18\ ))
-- \inst1|inst5|Add3~23\ = SHARE((!\inst8|u_vga_generator|y\(1) & (\inst1|inst5|Add5~33_sumout\ & !\inst1|inst5|Add1~1_combout\)) # (\inst8|u_vga_generator|y\(1) & ((!\inst1|inst5|Add1~1_combout\) # (\inst1|inst5|Add5~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(1),
	datac => \inst1|inst5|ALT_INV_Add5~33_sumout\,
	datad => \inst1|inst5|ALT_INV_Add1~1_combout\,
	cin => \inst1|inst5|Add3~18\,
	sharein => \inst1|inst5|Add3~19\,
	sumout => \inst1|inst5|Add3~21_sumout\,
	cout => \inst1|inst5|Add3~22\,
	shareout => \inst1|inst5|Add3~23\);

-- Location: FF_X59_Y17_N17
\inst1|inst5|adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~21_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(8));

-- Location: MLABCELL_X55_Y13_N57
\inst1|inst5|Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add1~2_combout\ = ( \inst8|u_vga_generator|y\(5) & ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(6) ) ) ) # ( !\inst8|u_vga_generator|y\(5) & ( \inst8|u_vga_generator|y\(3) & ( \inst8|u_vga_generator|y\(6) ) ) ) # ( 
-- \inst8|u_vga_generator|y\(5) & ( !\inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(4) $ (!\inst8|u_vga_generator|y\(6)) ) ) ) # ( !\inst8|u_vga_generator|y\(5) & ( !\inst8|u_vga_generator|y\(3) & ( \inst8|u_vga_generator|y\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011001100110011000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(4),
	datab => \inst8|u_vga_generator|ALT_INV_y\(6),
	datae => \inst8|u_vga_generator|ALT_INV_y\(5),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst5|Add1~2_combout\);

-- Location: LABCELL_X58_Y17_N27
\inst1|inst5|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~37_sumout\ = SUM(( !\inst8|u_vga_generator|x\(9) $ (\inst|pos_out\(9)) ) + ( \inst1|inst5|Add5~35\ ) + ( \inst1|inst5|Add5~34\ ))
-- \inst1|inst5|Add5~38\ = CARRY(( !\inst8|u_vga_generator|x\(9) $ (\inst|pos_out\(9)) ) + ( \inst1|inst5|Add5~35\ ) + ( \inst1|inst5|Add5~34\ ))
-- \inst1|inst5|Add5~39\ = SHARE((\inst8|u_vga_generator|x\(9) & !\inst|pos_out\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_x\(9),
	datad => \inst|ALT_INV_pos_out\(9),
	cin => \inst1|inst5|Add5~34\,
	sharein => \inst1|inst5|Add5~35\,
	sumout => \inst1|inst5|Add5~37_sumout\,
	cout => \inst1|inst5|Add5~38\,
	shareout => \inst1|inst5|Add5~39\);

-- Location: LABCELL_X59_Y17_N18
\inst1|inst5|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~25_sumout\ = SUM(( !\inst1|inst5|Add1~2_combout\ $ (!\inst8|u_vga_generator|y\(2) $ (!\inst1|inst5|Add5~37_sumout\)) ) + ( \inst1|inst5|Add3~23\ ) + ( \inst1|inst5|Add3~22\ ))
-- \inst1|inst5|Add3~26\ = CARRY(( !\inst1|inst5|Add1~2_combout\ $ (!\inst8|u_vga_generator|y\(2) $ (!\inst1|inst5|Add5~37_sumout\)) ) + ( \inst1|inst5|Add3~23\ ) + ( \inst1|inst5|Add3~22\ ))
-- \inst1|inst5|Add3~27\ = SHARE((!\inst1|inst5|Add1~2_combout\ & ((\inst1|inst5|Add5~37_sumout\) # (\inst8|u_vga_generator|y\(2)))) # (\inst1|inst5|Add1~2_combout\ & (\inst8|u_vga_generator|y\(2) & \inst1|inst5|Add5~37_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Add1~2_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(2),
	datad => \inst1|inst5|ALT_INV_Add5~37_sumout\,
	cin => \inst1|inst5|Add3~22\,
	sharein => \inst1|inst5|Add3~23\,
	sumout => \inst1|inst5|Add3~25_sumout\,
	cout => \inst1|inst5|Add3~26\,
	shareout => \inst1|inst5|Add3~27\);

-- Location: FF_X59_Y17_N20
\inst1|inst5|adr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~25_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(9));

-- Location: LABCELL_X63_Y16_N12
\inst1|inst5|Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add1~3_combout\ = ( \inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(7) $ (((!\inst8|u_vga_generator|y\(6)) # (!\inst8|u_vga_generator|y\(5)))) ) ) # ( !\inst8|u_vga_generator|y\(3) & ( !\inst8|u_vga_generator|y\(7) $ 
-- (((!\inst8|u_vga_generator|y\(6)) # ((!\inst8|u_vga_generator|y\(5)) # (!\inst8|u_vga_generator|y\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011000110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(6),
	datab => \inst8|u_vga_generator|ALT_INV_y\(7),
	datac => \inst8|u_vga_generator|ALT_INV_y\(5),
	datad => \inst8|u_vga_generator|ALT_INV_y\(4),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst5|Add1~3_combout\);

-- Location: LABCELL_X58_Y17_N30
\inst1|inst5|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~41_sumout\ = SUM(( !\inst8|u_vga_generator|x\(10) $ (\inst|pos_out\(10)) ) + ( \inst1|inst5|Add5~39\ ) + ( \inst1|inst5|Add5~38\ ))
-- \inst1|inst5|Add5~42\ = CARRY(( !\inst8|u_vga_generator|x\(10) $ (\inst|pos_out\(10)) ) + ( \inst1|inst5|Add5~39\ ) + ( \inst1|inst5|Add5~38\ ))
-- \inst1|inst5|Add5~43\ = SHARE((\inst8|u_vga_generator|x\(10) & !\inst|pos_out\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_x\(10),
	datad => \inst|ALT_INV_pos_out\(10),
	cin => \inst1|inst5|Add5~38\,
	sharein => \inst1|inst5|Add5~39\,
	sumout => \inst1|inst5|Add5~41_sumout\,
	cout => \inst1|inst5|Add5~42\,
	shareout => \inst1|inst5|Add5~43\);

-- Location: LABCELL_X59_Y17_N21
\inst1|inst5|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~29_sumout\ = SUM(( !\inst8|u_vga_generator|y\(3) $ (!\inst1|inst5|Add1~3_combout\ $ (\inst1|inst5|Add5~41_sumout\)) ) + ( \inst1|inst5|Add3~27\ ) + ( \inst1|inst5|Add3~26\ ))
-- \inst1|inst5|Add3~30\ = CARRY(( !\inst8|u_vga_generator|y\(3) $ (!\inst1|inst5|Add1~3_combout\ $ (\inst1|inst5|Add5~41_sumout\)) ) + ( \inst1|inst5|Add3~27\ ) + ( \inst1|inst5|Add3~26\ ))
-- \inst1|inst5|Add3~31\ = SHARE((!\inst8|u_vga_generator|y\(3) & ((!\inst1|inst5|Add1~3_combout\) # (\inst1|inst5|Add5~41_sumout\))) # (\inst8|u_vga_generator|y\(3) & (!\inst1|inst5|Add1~3_combout\ & \inst1|inst5|Add5~41_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111110000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst8|u_vga_generator|ALT_INV_y\(3),
	datac => \inst1|inst5|ALT_INV_Add1~3_combout\,
	datad => \inst1|inst5|ALT_INV_Add5~41_sumout\,
	cin => \inst1|inst5|Add3~26\,
	sharein => \inst1|inst5|Add3~27\,
	sumout => \inst1|inst5|Add3~29_sumout\,
	cout => \inst1|inst5|Add3~30\,
	shareout => \inst1|inst5|Add3~31\);

-- Location: FF_X59_Y17_N23
\inst1|inst5|adr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~29_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(10));

-- Location: LABCELL_X63_Y16_N27
\inst1|inst5|Add1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add1~4_combout\ = ( \inst8|u_vga_generator|y\(3) & ( (\inst8|u_vga_generator|y\(5) & (\inst8|u_vga_generator|y\(7) & \inst8|u_vga_generator|y\(6))) ) ) # ( !\inst8|u_vga_generator|y\(3) & ( (\inst8|u_vga_generator|y\(5) & 
-- (\inst8|u_vga_generator|y\(7) & (\inst8|u_vga_generator|y\(4) & \inst8|u_vga_generator|y\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|u_vga_generator|ALT_INV_y\(5),
	datab => \inst8|u_vga_generator|ALT_INV_y\(7),
	datac => \inst8|u_vga_generator|ALT_INV_y\(4),
	datad => \inst8|u_vga_generator|ALT_INV_y\(6),
	dataf => \inst8|u_vga_generator|ALT_INV_y\(3),
	combout => \inst1|inst5|Add1~4_combout\);

-- Location: LABCELL_X58_Y17_N33
\inst1|inst5|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add5~45_sumout\ = SUM(( VCC ) + ( \inst1|inst5|Add5~43\ ) + ( \inst1|inst5|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst5|Add5~42\,
	sharein => \inst1|inst5|Add5~43\,
	sumout => \inst1|inst5|Add5~45_sumout\);

-- Location: LABCELL_X59_Y17_N24
\inst1|inst5|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add3~33_sumout\ = SUM(( !\inst1|inst5|Add1~0_combout\ $ (!\inst1|inst5|Add1~4_combout\ $ (!\inst8|u_vga_generator|y\(8) $ (!\inst1|inst5|Add5~45_sumout\))) ) + ( \inst1|inst5|Add3~31\ ) + ( \inst1|inst5|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Add1~0_combout\,
	datab => \inst1|inst5|ALT_INV_Add1~4_combout\,
	datac => \inst8|u_vga_generator|ALT_INV_y\(8),
	datad => \inst1|inst5|ALT_INV_Add5~45_sumout\,
	cin => \inst1|inst5|Add3~30\,
	sharein => \inst1|inst5|Add3~31\,
	sumout => \inst1|inst5|Add3~33_sumout\);

-- Location: FF_X59_Y17_N26
\inst1|inst5|adr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst5|Add3~33_sumout\,
	ena => \inst1|inst5|to_print~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|adr\(11));

-- Location: M10K_X39_Y21_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555655555555555555555555555555555555555555555555555555555555",
	mem_init1 => "555655555555555555555555555555555555555555555555555555555555556A5555555555555555555555555AAAAAAA55555555555555555555555555AA5555555555555556AAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555AA55555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555556AA5555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5556AA5555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAA555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555AAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LABCELL_X61_Y17_N42
\inst1|inst11|or_node[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|or_node[3][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\inst1|inst5|to_print~q\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3) & ( 
-- ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(3) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst5|to_print~q\ & ( 
-- !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3) & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(3) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\) ) ) ) # 
-- ( !\inst1|inst5|to_print~q\ & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(3) & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(3) & \inst1|inst8|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w3_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\,
	datac => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst1|inst8|ALT_INV_to_print~q\,
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst1|inst11|or_node[3][2]~combout\);

-- Location: M10K_X62_Y17_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000000000000002AAAA80000000000000000000000000000000000EAAAA80000000000000000000000000000000003EAAAA8000000000000000000000000000000000FEAAAA802AAA080AAA2AA2AA2882AAAAA8A822ABFEAAAA800000000000000000000000000000000FFEAAAA802000000000000000000000000000003FFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8000AAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAFFFEAAAA8000AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8000AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8000AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8000AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8020AA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA8023FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA802FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA8AABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y21_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAEBFEFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y16_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000003FFFFC0000000000000000000000000000000000FFFFFC0000000000000000000000000000000003FFFFFC000000000000000000000000000000000FFFFFFC03FFF0C0FFF3FF3FF3CC3FFFFFCFC33FFFFFFFFC00000000000000000000000000000000FFFFFFFC03000000000000000000000000000003FFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LABCELL_X45_Y16_N51
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( 
-- !\inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( \inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X61_Y17_N12
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(2) & 
-- (((\inst1|inst2|type_brick_mem\(1)))))) # (\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(2))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(2))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000011110000111101000100011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X61_Y17_N27
\inst1|inst11|or_node[2][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|or_node[2][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ ) ) # ( !\inst1|inst5|to_print~q\ & ( 
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ ) ) # ( \inst1|inst5|to_print~q\ & ( !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ & ( 
-- ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(2) & \inst1|inst8|to_print~q\)) # (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( 
-- !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w2_n0_mux_dataout~1_combout\ & ( (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(2) & \inst1|inst8|to_print~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst1|inst8|ALT_INV_to_print~q\,
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\,
	combout => \inst1|inst11|or_node[2][2]~combout\);

-- Location: M10K_X44_Y19_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000000000000000000000000000000000000003C000000000000000000000000000000000000003C000000000000000000000000000000000000003C000000000000000000000000000000000000083C000000000000000000000000000000000000383C000000000000000000000000000000000000F83C000000000000000000000000000000000002F83C000000000000000000000000000000000002F83C000000000000000000000000000000000032F83C00000000000000000",
	mem_init1 => "0000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C000000000000000000000000000000000032F83C00000003F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFF2F83C000000000000000000000000000000000002F83C0000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAF83C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83C000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83C0000000000000000000000000000000008AAA83C000000000000000000000000000000000000003C0000FFDD5555514010000000000000000000003C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y18_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFABEBFFFAEAFFFBFFBFFBEEBFFFFFEFEBBFFFFFFFABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFABEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEABBFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFABEABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBBF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y22_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFF00000000000000000000000000000000000000FF00000000000000000000000000000000000003FF0000000000000000000000000000000000000FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C000000000000000000000000000000003FFFF03C00000000000000000000000000000000FFFFF03C3FFF0C0FFF3FF3FF3CC3FFFFFCFC33FFFFFFF03C0000000000000000000000000000000FFFFFF03C33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C330000000000000000000000000000FFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C033FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFF03C033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LABCELL_X59_Y18_N24
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(1)))) # (\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(1))) ) ) ) # ( !\inst1|inst2|type_brick_mem\(1) & ( 
-- \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|inst2|type_brick_mem\(0)) # (\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( \inst1|inst2|type_brick_mem\(1) & ( 
-- !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(1)))) # (\inst1|inst2|type_brick_mem\(0) & 
-- (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(1))) ) ) ) # ( !\inst1|inst2|type_brick_mem\(1) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|inst2|type_brick_mem\(0) & 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datac => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	dataf => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0_combout\);

-- Location: M10K_X44_Y20_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555",
	mem_init2 => "5555555555555557DAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFD80000000000000000000000000000000000003FD8000000000000000000000000000000000000FFD83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD835555555555555555555555555555555555FFFD836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFD83600000000000000000000000000000000FFFFD8363FFF0C0FFF3FF3FF3CC3FFFFFCFC33FFFFFFD8360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFD8363BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B0000000000000000000000000000FFFFFFD8363B1555555555555555555555555557FFFFFFD8360B1FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFD8360B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8360B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8360B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8360B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363B3F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8360BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD836FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD837FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: MLABCELL_X47_Y19_N0
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(1) & (((\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst1|inst2|type_brick_mem\(0))))))) # (\inst1|inst2|type_brick_mem\(1) & (((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(1))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(1))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001010010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\);

-- Location: M10K_X44_Y22_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAABFFFFFAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAADAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAC6AAAAAAAAAAAAAABFFFFFFFFFF0000000FFFFFFFFFEAAAAAAAAAAAAAAAB2FAAAAAAAAAAAFFFFC0000000000000000000000000FFFFEAAAAAAAAAAABBFAAAAAAFFFFF0000000000000000000000000000000000000FFFFFFEAA8BFAAAAFFF00000000000000000000000000000000000000000000000FFFCBFAABF000000000000000000000000000000000000000000000000000031BFAAF0000000000000000000000000000000000000000000000000000001BFAAC0000000000000000000000000000000000000000000000000000002FFAAF0000000000000000000000000",
	mem_init0 => "000000000000000000000000000006FFAAF000000000000000000000000000000000000000000000000000001AFFABC00000000000000000000000000000000000000000000000000005AFFFAB6A95555554000000000000000000000000000000000000000155ABFFFFA8BFFFFFFFAA954000000000000000000000000000000155556AABFFFFFFADFFFFFFFFFFFEAAA555555540000000000015555555AAAAABFFFFFFFFFFC6FFFFFFFFFFFFFFFFFFFFEAA95555555555AFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X61_Y17_N30
\inst1|inst11|or_node[1][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|or_node[1][2]~combout\ = ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1) & ( ((\inst1|inst8|to_print~q\) # (\inst1|inst5|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|inst5|to_print~q\) 
-- # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1) & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (\inst1|inst8|to_print~q\) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(1) & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(1) & 
-- ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w1_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111111111100111111001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\,
	datac => \inst1|inst5|ALT_INV_to_print~q\,
	datad => \inst1|inst8|ALT_INV_to_print~q\,
	datae => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst1|inst11|or_node[1][2]~combout\);

-- Location: M10K_X44_Y17_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000",
	mem_init2 => "00000000000000028AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA880000000000000000000000000000000000003A88000000000000000000000000000000000000BA882AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBA8820000000000000000000000000000000000BBA8822AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBA882200000000000000000000000000000000BBBA88222AAA080AAA2AA2AA2882AAAAA8A822AABBBA88220AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0000000000000000000000000000AEBBBA88222A0000000000000000000000000002AEBBBA88220A0AAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAAEBBBA88220A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88220A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88220A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88220A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A0AAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222A2A",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88220AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBBBA88222FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBBA88222AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBA8822FFFFFFFFFFFFFFFFFFFFFFFFFFFFBAAABBBA8822AAAAAAAAAAAAAAEAAAAAABFBFFFFFFFFFBBA882FFEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBA883FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA88AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABA8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X39_Y20_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000",
	mem_init2 => "0000000000000003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000000000000000000000000000000000003FCC000000000000000000000000000000000000FFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC30000000000000000000000000000000000FFFCC33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3300000000000000000000000000000000FFFFCC333FFF0C0FFF3FF3FF3CC3FFFFFCFC33FFFFFFCC330FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0000000000000000000000000000FFFFFFCC333F0000000000000000000000000003FFFFFFCC330F0FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFCC330F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC330F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC330F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC330F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F3F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC330FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X39_Y15_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBBAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBFFFFBBAAAAFFFFFFFFFBEABAAAAAAAAAAAAAAAAAAAAABBAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y15_N0
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(0)))) # (\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(0))) ) ) ) # ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0) & ( 
-- \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(0)))) # (\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(0))) ) ) ) # ( 
-- \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0)) # (\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(0)) ) ) ) # ( 
-- !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( (\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(0) & \inst1|inst2|type_brick_mem\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datad => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X43_Y15_N6
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(0) & 
-- (((\inst1|inst2|type_brick_mem\(1)))))) # (\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(0))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(0))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100100010000011110000111100000101011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\,
	datad => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X61_Y17_N39
\inst1|inst11|or_node[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|or_node[0][2]~combout\ = ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0) & ( ((\inst1|inst5|to_print~q\) # (\inst1|inst8|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0) & ( (\inst1|inst5|to_print~q\) 
-- # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\inst1|inst8|to_print~q\) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(0) & 
-- ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w0_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110101111101010101111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datac => \inst1|inst8|ALT_INV_to_print~q\,
	datad => \inst1|inst5|ALT_INV_to_print~q\,
	datae => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst11|or_node[0][2]~combout\);

-- Location: M10K_X29_Y21_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555655555555555555555555555555555555555555555555555555555555",
	mem_init1 => "555655555555555555555555555556AAAAA5555555555555555555555555556A55555555555555555AAAAAAAAAAAAAAAAAAAAAA5555555555555555555AA55555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555556AF5555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555556AF555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA556AE5556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF556AAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF55AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFF56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFF56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFF5ABFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFF6ABFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFAAFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFAFFFFFAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y16_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000000000000000000000002AAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y20_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y19_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000140000000000000000000000000000000000000054000000000000000000000000000000000000015400000000000000000000000000000000000005540000000000000000000000000000000000001554000000000000000000000000000000000000555400000000000000000000000000000000000155540000000000000000000000000000000000055554000000000000000000000000000000000015555400000000000000000",
	mem_init1 => "00000000000000000155554000000000000000000000000000000000015555400000000000000000000000000000000001555540000000000000000000000000000000000155554000000000000000000000000000000000015555400000000000000000000000000000000001555540000000000000000000000000000000000155554000000000000000000000000000000000015555400000000000000000000000000000000001555540000000000000000000000000000000000155554000000000000000000000000000000000015555400000000000000000000000000000000001555540000000000000000000000000000000000155554000000015",
	mem_init0 => "55555555555555555555555555555540000000555555555555555555555555555555554000000155555555555555555555555555555555400000055555555555555555555555555555555540000015555555555555555555555555555555554000005555555555555555555555555555555555400001555555555555555555555555555555555540000555555555555555555555555555555555554000155555555555555555555555555555555555400000000000000000000000005000554555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: MLABCELL_X47_Y19_N54
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( 
-- !\inst1|inst2|type_brick_mem\(1) & ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( \inst1|inst2|type_brick_mem\(1) & ( !\inst1|inst2|type_brick_mem\(0) & ( 
-- \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( !\inst1|inst2|type_brick_mem\(1) & ( !\inst1|inst2|type_brick_mem\(0) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datab => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\);

-- Location: M10K_X39_Y18_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FFFFF55555555555555555555555555555555557FFFFF40000000000000000000000000000001557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFF4FD5",
	mem_init0 => "5555555555555555555555555555557FFFFF4F555555555555555555555555555555557FFFFF4D555555555555555555555555555555557FFFFF45555555555555555555555555555555557FFFFF55555555555555555555555555555555557FFFFF55555555555555555555555555555555557FFFFD55555555555555555555555555555555557FFFF555555555555555555555555555555555557FFFD555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFF5FFF55755555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: MLABCELL_X47_Y19_N30
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(1) & (((\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(7) & 
-- ((\inst1|inst2|type_brick_mem\(0))))))) # (\inst1|inst2|type_brick_mem\(1) & (((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(7))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(7))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001010010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X63_Y19_N12
\inst1|inst10|or_node[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|or_node[3][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst8|to_print~q\ & ( ((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\) # (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(7))) # 
-- (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( \inst1|inst8|to_print~q\ & ( (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\) # 
-- (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \inst1|inst5|to_print~q\ & ( !\inst1|inst8|to_print~q\ & ( (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\) # 
-- (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( !\inst1|inst8|to_print~q\ & ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w7_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111101011111010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datab => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\,
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst8|ALT_INV_to_print~q\,
	combout => \inst1|inst10|or_node[3][2]~combout\);

-- Location: M10K_X39_Y17_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFF000000000000000000000000000000000003FFFF00000000000000000000000000000000000FFFFF00000000000000000000000000000000003FFFFF0000000000000000000000000000000000FFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03000000000000000000000000000000FFFFFFFC03000000000000000000000000000003FFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC030FF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y13_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAEBBFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y12_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000000000000000000000000000000000000003C00000000000000000000000000000000000000FC00000000000000000000000000000000000003FC0000000000000000000000000000000000000FFC0000000000000000000000000000000000003FFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000",
	mem_init1 => "000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC000000000000000000000000000000000000FFFC0000000000",
	mem_init0 => "00000000000000000000000000FFFC00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000005577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LABCELL_X48_Y17_N57
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( 
-- !\inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( \inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( !\inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datab => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X47_Y19_N24
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(1) & (((\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\inst1|inst2|type_brick_mem\(0))))))) # (\inst1|inst2|type_brick_mem\(1) & (((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(6))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(6))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001010010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X61_Y19_N15
\inst1|inst10|or_node[2][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|or_node[2][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6) & ( ((\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst1|inst8|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( \inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6) & ( (\inst1|inst8|to_print~q\) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst5|to_print~q\ & ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6) & ( (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(6)) 
-- # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( !\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(6) & ( 
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w6_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011111111101011111010111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\,
	datac => \inst1|inst8|ALT_INV_to_print~q\,
	datad => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst1|inst10|or_node[2][2]~combout\);

-- Location: M10K_X29_Y18_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAADAAAAAAAAAAAAAAAABFFFFFFFFC00000FFFFFFFFEAAAAAAAAAAAAAAAAAACBAAAAAAAAAAAAAAFFF0000000000000000000000FFFAAAAAAAAAAAAAAAB6FAAAAAAAAABFFFF00000000000000000000000000003FFFFFFFEAAAAAA8B0AAAAABFFFC00000000000000000000000000000000000000003FFFFEACB0AAABFC0000000000000000000000000000000000000000000000000FFCB3AAFC000000000000000000000000000000000000000000000000000001B3ABC0000000000000000000000000000000000000000000000000000002F0ABC0000000000000000000000000000000000000000000000000000002C0AAC0000000000000000000000000",
	mem_init0 => "000000000000000000000000000006C0AAC000000000000000000000000000000000000000000000000000005BC0AB054000000000000000000000000000000000000000000000000055AF00A86AAAAAA955400000000000000000000000000000000000001556AFF000ADFFFFFFFFFAA5540000000000000000000000000000155556AAFFFC0000B2C0000000FFFFEAAAAA95555400000000005595556AABFFFFFFFC000000C7C00000000000FFFFFFFFFFEA5555555556BFFFFFFFFFFFFC00000000002F0000000000000000000000FFFFFFFFFFFFF00000000000000000000000700000FFC00000000000000000000000000000000000000000000000000F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y24_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => "55555555555555555000000000000000000000000000000000000005500000000000000000000000000000000000003550000000000000000000000000000000000000B550000000000000000000000000000000000002B550000000000000000000000000000000000002B550000000000000000000000000000000000002B5500055555555555555555555555555555555C2B5500055555555555555555555555555555557C2B550005000000000000000000000000000000FC2B550005000000000000000000000000000003FC2B550005000000000000000000000000000003FC2B550005015555555555555555555555555563FC2955000501555555555",
	mem_init1 => "5555555555555555563FC2B550005015555555555555555555555555563FC29550005015555555555555555555555555563FC29550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B550005015555555555555555555555555563FC2B55000502A",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAA3FC2B550005000000000000000000000000000003FC2B5500053FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B550005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B550007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B55000000000000000000000330FF3F0FFFFFFC2B550000000000000000000000000000000000002B550000000000000000000000000000000000002B5502AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB550FFFFFFFFFFFFFFFFFFFFFFAFFFAABAAAAAAAB5515555555555555555757777DF7FFFFFFFFFFFF555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M10K_X62_Y20_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBFEBEAAAAAAABF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFBFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEBEAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAAAAAAAAAAAAAAAAAAAAAAABBAFFBFAFFFFFFEBEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAFFEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: MLABCELL_X47_Y19_N48
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5) & ( (!\inst1|inst2|type_brick_mem\(0)) # 
-- (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5) & ( (!\inst1|inst2|type_brick_mem\(0) & 
-- (\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(5))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(5)))) ) ) ) # ( \inst1|inst2|type_brick_mem\(1) & ( 
-- !\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5) & ( (\inst1|inst2|type_brick_mem\(0) & \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\inst1|inst2|type_brick_mem\(1) & ( 
-- !\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(5) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(5))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	dataf => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\);

-- Location: M10K_X39_Y13_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAA00000000000000000000000000000000000000AA00000000000000000000000000000000000002AA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAA0A8000000000000000000000000000000002BEAA0A800000000000000000000000000000000ABEAA0A82AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABABEAA0282000000000000000000000000000000FABEAA02822AAAAAAAAAAAAAAAAAAAAAAAAAAAAAFABEAA0A8220000000000000000000000000000AFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA028222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA0A8222AAAAAAAAAAAAAAAAAAAAAAAAAABAFABEAA028223F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFAFABEAA0A822AAAAAAAAAAAAAAAAAAAAAAAAAAAAAFABEAA0A822AAAAAAAAAAAAAAAAAAAAAAAAAAAAAFABEAA0A82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEAA0283FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABEAA0A8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAA02AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAA02FFFFFFFFFFFBEEAAAAAAAAAAAAAAAAAAAABEAA03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAA2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M10K_X62_Y18_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => "55555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABD5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D5AD555555555555555555555555555555555557D5AD555555555555555555555555555555555557D5AD400000000000000000000000000000000357D5AD4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA757D5AD4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD757D5A94B000000000000000000000000000000D75755A94B155555555555555555555555555555D7D7D5AD4B1AAAAAAAAAAAAAAAAAAAAAAAAAAAADD757D5AD4B19555555555555555555555555555DD75755AD4B19555555555",
	mem_init1 => "55555555555555555DDD75755AD4B1955555555555555555555555555DDD7D755AD4B1955555555555555555555555555DDD7D755AD4B1955555555555555555555555555DDD7D755AD4B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5A94B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5AD4B1955555555555555555555555555DDD7D7D5AD4B19FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D5A94B195",
	mem_init0 => "55555555555555555555555555DD7D7D5AD4B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFDD7D7D5AD4B155555555555555555555555555555D7D7D5AD4B555555555555555D557DF77FFFFFFFD7D7D5A94955555555555555555555555555555557D7D5AD4FFFFFFFFFFFFFFFFFFDDF55D5F5555557D7D5A97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D5A9555555555555555555555DD57FFFFFFFFFD7D5A9555555555555555555555555555555555557D5AFFFFFFFFFFFFFFFFFFFFFF5FFF55755555557D5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555555755F57FFFFFFFD5555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LABCELL_X48_Y17_N15
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst2|type_brick_mem\(1) & 
-- (((\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(5)))))) # (\inst1|inst2|type_brick_mem\(0) & ((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(5))) # (\inst1|inst2|type_brick_mem\(1) & 
-- (((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(5))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X63_Y17_N3
\inst1|inst10|or_node[1][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|or_node[1][2]~combout\ = ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( \inst1|inst8|to_print~q\ ) ) # ( !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( 
-- \inst1|inst8|to_print~q\ & ( ((\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(5) & \inst1|inst5|to_print~q\)) # (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( 
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( !\inst1|inst8|to_print~q\ ) ) # ( !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( !\inst1|inst8|to_print~q\ & ( 
-- (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(5) & \inst1|inst5|to_print~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100110111001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \inst1|inst5|ALT_INV_to_print~q\,
	datae => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\,
	dataf => \inst1|inst8|ALT_INV_to_print~q\,
	combout => \inst1|inst10|or_node[1][2]~combout\);

-- Location: M10K_X44_Y15_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEFBBAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBBAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFBBAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAFFFFBBAAAAFFFFFFFFFFFBEEAAAAAAAAAAAAAAAAAAAABBAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X29_Y14_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000002400000000000000000000000000000000000000240000000000000000000000000000000000000324000000000000000000000000000000000000032400000000000000000000000000000000000033240000000000000000000000000000000000003324000000000000000000000000000000000000332400000000000000000000000000000000000C332400000000000000000000000000000000000C332400000000000000000000000000000000000C332400000000000000000000000000000000000C33340000000000000000",
	mem_init1 => "0000000000000000040C332400000000000000000000000000000000040C333400000000000000000000000000000000040C333400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000000000000000000000000000000040C332400000005555555555555555555555555540C332400000000",
	mem_init0 => "000000000000000000000000000C332400000000000000000000000000000000000C332400000000000000000000000000000000000C332400000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC332400000000000000000000000000000000000033240000FFFFFFFFFFFFFFFFFFCCF00C0F0000003324000155555555555555D5555557F7FFFFFFFFF324000AA88000000000000000000000000000000324003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24000000000000000000000000000000000000002403FFFFFFFFFFFFFFFFEFEEEEBAEAAAAAAAAAAAA400000001555555555555555555555555FF7555540000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LABCELL_X61_Y17_N9
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst1|inst2|type_brick_mem\(0)) 
-- # ((!\inst1|inst2|type_brick_mem\(1) & ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4)))) # (\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4)))) ) ) ) # ( 
-- !\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1))))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((!\inst1|inst2|type_brick_mem\(1) & ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4)))) # (\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4))))) ) ) ) # ( 
-- \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst1|inst2|type_brick_mem\(0) & (((\inst1|inst2|type_brick_mem\(1))))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((!\inst1|inst2|type_brick_mem\(1) & ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4)))) # (\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4))))) ) ) ) # ( 
-- !\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(4) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(4) & ( (\inst1|inst2|type_brick_mem\(0) & ((!\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(4)))) # (\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datac => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datae => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\);

-- Location: M10K_X62_Y19_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF3FFF3CFFFFFFCFFFFFFFFFFFCFCFFFFFFFC00000000000000000000000",
	mem_init2 => "0000000000000003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000000000000000000000000000000000003FCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF0000000000000000000000000000000000FFFCCF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF300000000000000000000000000000000FFFFCCF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0000000000000000000000000000FFFFFFCCF33F0000000000000000000000000003FFFFFFCCF33F0FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333F3F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: MLABCELL_X60_Y18_N30
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst2|type_brick_mem\(1) & 
-- (((\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(4)))))) # (\inst1|inst2|type_brick_mem\(0) & ((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(4))) # (\inst1|inst2|type_brick_mem\(1) & 
-- (((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(4))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X60_Y18_N36
\inst1|inst10|or_node[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|or_node[0][2]~combout\ = ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4) & ( \inst1|inst8|to_print~q\ & ( ((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\) # (\inst1|inst5|to_print~q\)) # 
-- (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4) & ( \inst1|inst8|to_print~q\ & ( (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\) 
-- # (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst1|inst8|to_print~q\ & ( 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\) # (\inst1|inst5|to_print~q\) ) ) ) # ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst1|inst8|to_print~q\ & ( 
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w4_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011111111111100110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \inst1|inst5|ALT_INV_to_print~q\,
	datad => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\,
	datae => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \inst1|inst8|ALT_INV_to_print~q\,
	combout => \inst1|inst10|or_node[0][2]~combout\);

-- Location: M10K_X39_Y14_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000A2A0008008008228000002028803FFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X62_Y14_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000002800000000000000000000000000000000000000A800000000000000000000000000000000000002A80000000000000000000000000000000000000AA80000000000000000000000000000000000002AA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000",
	mem_init1 => "000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA8000000000000000000000000000000000000AAA80000000000",
	mem_init0 => "00000000000000000000000000AAA800000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8000000022AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y23_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555D555555555555555555555555555555555555557D55555555555555555555555555555555555555FD55555555555555555555555555555555555557FD5555555555555555555555555555555555555FFD5555540000000000000000000000000000003FFD555554555555555555555555555555555555FFFD555554555555555555555555555555555557FFFD55555455555555555555555555555555555FFFFD55555455555555555555555555555555557FFFFD55555455555555555",
	mem_init1 => "555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555455555555555555555555555555557FFFFD55555457F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555545FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555547FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555554FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X62_Y13_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y15_N18
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11) & ( 
-- (!\inst1|inst2|type_brick_mem\(1)) # ((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11))))) ) ) ) # 
-- ( !\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11) & ( (!\inst1|inst2|type_brick_mem\(1) & (((!\inst1|inst2|type_brick_mem\(0))))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11)))))) ) ) ) # ( 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11) & ( (!\inst1|inst2|type_brick_mem\(1) & (((\inst1|inst2|type_brick_mem\(0))))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11)))))) ) ) ) # ( 
-- !\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(11) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(11) & ( (\inst1|inst2|type_brick_mem\(1) & ((!\inst1|inst2|type_brick_mem\(0) & 
-- (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(11))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datab => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datad => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X43_Y15_N12
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(1) & ((((\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(11) & 
-- \inst1|inst2|type_brick_mem\(0)))))) # (\inst1|inst2|type_brick_mem\(1) & (((!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(11))) # (\inst1|inst2|type_brick_mem\(0) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(11))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100001111001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datab => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\,
	datad => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\);

-- Location: M10K_X62_Y21_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555655555555555555555555555555555555555555555555555555555555",
	mem_init1 => "555A55555555555555555555556AAAAAAAAAAAAAA9555555555555555555556A5555555555555556AAAAAAAAAAAAAAAAAAAAAAAA955555555555555555AF55555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555556BF55555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5556BF55555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF55AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABF55AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFF55AAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFF556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFF55AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFF56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFF56BFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFF5AFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFF6AFFFFFFFFFFFFFFFFFFFFBEAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LABCELL_X61_Y17_N0
\inst1|inst9|or_node[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|or_node[3][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\inst1|inst5|to_print~q\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11) & ( 
-- ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(11) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst5|to_print~q\ & ( 
-- !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11) & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(11) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\) ) ) ) 
-- # ( !\inst1|inst5|to_print~q\ & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(11) & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(11) & \inst1|inst8|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w11_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101010101011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\,
	datab => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst1|inst8|ALT_INV_to_print~q\,
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|inst9|or_node[3][2]~combout\);

-- Location: M10K_X29_Y15_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => "555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555400000000000000000000000000000000001555540000000000000000000000000000000000D555540000000000000000000000000000000003D55554000000000000000000000000000000000FD55554015550405551551551441555554541157FD5555400000000000000000000000000000000FFD5555401000000000000000000000000000003FFD555540105555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540005555555555",
	mem_init1 => "555555555555555555FFFD555540005555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540005555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540005555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540105555555555555555555555555555FFFD555540005555555555555555555555555555FFFD555540105555555555555555555555555555FFFD5555401055",
	mem_init0 => "55555555555555555555555555FFFD55554000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55554013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555403FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555540FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555543FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD555545577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y18_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA000000000000000000000000000000000000AAAA000000000000000000000000000000000002AAAA00000000000000000000000000000000000EAAAA00000000000000000000000000000000003EAAAA0000000000000000000000000000000000FEAAAA002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFEAAAA002000000000000000000000000000000FFEAAAA002000000000000000000000000000003FFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020AA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAFFFEAAAA0020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA0023FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA0AABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAA2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M10K_X44_Y14_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAABAAAEAAAAAAEFABAAAAABAAAAAABBAA7FFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA97FFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA57FFFE800000000000000000000000000000000157FFFE800000000000000000000000000000000557FFFE815555555555555555555555555555555557FFFE810000000000000000000000000000005557FFFE812AAAAAAAAAAAAAAAAAAAAAAAAAAAA95557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFF55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812FFFFFFFFFFFFFFFFFFFFFFFFFFFD55557FFFE812D5",
	mem_init0 => "5555555555555555555555555555557FFFE812555555555555555555555555555555557FFFE811555555555555555555555555555555557FFFE815555555555555555555555555555555557FFFE815555555555555555555555555555555557FFFE855555555555555555555555555555555557FFFE955555555555555555555555555555555557FFFE555555555555555555555555555555555557FFFD555555555555555555555555555555555557FFF5555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LABCELL_X63_Y19_N54
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( 
-- !\inst1|inst2|type_brick_mem\(0) & ( \inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( \inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( 
-- \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( !\inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst2|type_brick_mem\(1) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datab => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X43_Y15_N42
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(10) & 
-- (((\inst1|inst2|type_brick_mem\(1)))))) # (\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(10))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(10))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011110000111100100010011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X61_Y17_N18
\inst1|inst9|or_node[2][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|or_node[2][2]~combout\ = ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10) ) ) # ( 
-- !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ & ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10) & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(10) & \inst1|inst8|to_print~q\)) # 
-- (\inst1|inst5|to_print~q\) ) ) ) # ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10) ) ) # ( 
-- !\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w10_n0_mux_dataout~1_combout\ & ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(10) & \inst1|inst8|to_print~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100001111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \inst1|inst5|ALT_INV_to_print~q\,
	datad => \inst1|inst8|ALT_INV_to_print~q\,
	datae => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\,
	dataf => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst1|inst9|or_node[2][2]~combout\);

-- Location: M10K_X62_Y15_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFF00000000000000000000000000000000000000FF00000000000000000000000000000000000003FF0155554555155555510545555545555554455FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C000000000000000000000000000000003FFFF03C00000000000000000000000000000000FFFFF03C3FFF5D5FFF7FF7FF7DD7FFFFFDFD77FFFFFFF03C1000000000000000000000000000000FFFFFF03C33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C330000000000000000000000000000FFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C133FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFF03C133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C333F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y21_N0
\inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAABE00000000000000000000000000000000000000FE00000000000000000000000000000000000003FE05555555555555555555555555555555555557FE05555555555555555555555555555555555557FE05000000000000000000000000000000000057FE052AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA957FE052AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD57FE052BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FE052BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFD57FE052B955555555555555555555555555557FD57FE052B900000000000000000000000000007FD57FE052B92AAAAAAAAAAAAAAAAAAAAAAAAAA97FD57FE052B92FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B92FFFFFFFFFFFFFFFFFFFFFFFFFFD7FD57FE052B915",
	mem_init0 => "555555555555555555555555557FD57FE052B955555555555555555555555555557FD57FE052BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FE052BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FE052BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FE052FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD57FE05155555555555555555555555555555555557FE05555555555555555555555555555555555557FE05555555555555555555555555555555555557FE05555555555555555555555555555555555557FE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_violet.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst6|altsyncram:altsyncram_component|altsyncram_3k34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst6|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y12_N0
\inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000000000000000000000000000000000000003C000000000000000000000000000000000000003C000000000000000000000000000000000000003C000000000000000000000000000000000000003C000000000000000000000000000000000000303C000000000000000000000000000000000000F03C000000000000000000000000000000000000F03C000000000000000000000000000000000000F03C000000000000000000000000000000000030F03C00000000000000000",
	mem_init1 => "0000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C000000000000000000000000000000000030F03C00000003F",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFF0F03C000000000000000000000000000000000000F03C000000000000000000000000000000000000F03C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03C000000000000000000000000000000000000003C000000000000000000000000000000000000003C0000FFCC0000000000000000000000000000003C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_orange.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst4|altsyncram:altsyncram_component|altsyncram_cj34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: MLABCELL_X60_Y18_N18
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0_combout\ = ( \inst1|inst2|type_brick_mem\(0) & ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(9)))) # (\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(9))) ) ) ) # ( !\inst1|inst2|type_brick_mem\(0) & ( 
-- \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|inst2|type_brick_mem\(1)) # (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( \inst1|inst2|type_brick_mem\(0) & ( 
-- !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|inst2|type_brick_mem\(1) & ((\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(9)))) # (\inst1|inst2|type_brick_mem\(1) & 
-- (\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(9))) ) ) ) # ( !\inst1|inst2|type_brick_mem\(0) & ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(9) & ( (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(9) & 
-- \inst1|inst2|type_brick_mem\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datad => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	dataf => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0_combout\);

-- Location: M10K_X29_Y16_N0
\inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000060000000000000000000000000000000000000036000000000000000000000000000000000000003600000000000000000000000000000000000002360000000000000000000000000000000000000A360000000000000000000000000000000000001A36000000000000000000000000000000000000DA36000000000000000000000000000000000002DA36000000000000000000000000000000000002DA36000000000000000000000000000000000012DA3600000000000000000",
	mem_init1 => "0000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000000000000000000000000000000012DA36000000015",
	mem_init0 => "555555555555555555555555552DA36000000000000000000000000000000000002DA360000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAADA36000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA360000015555555555555555555555555555555A3600000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA36000000000000000000080000002A2AAAAAAAAA360000FFCC000000000000000000000000000000360003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60005555555555555555555555555555555555556002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA000000000000000000000000000000000AA2000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_jaune.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst3|altsyncram:altsyncram_component|altsyncram_3g34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: MLABCELL_X60_Y18_N0
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(9) & 
-- (((\inst1|inst2|type_brick_mem\(1)))))) # (\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(9))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(9))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011110000111100100010011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\);

-- Location: M10K_X62_Y22_N0
\inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAB2AAAAAAAAAAAAAABFFFFFFFC000000000000003FFFEAAAAAAAAAAAAAAABDBAAAAAAAAAAABFFFC0000000000000000000000003FFFAAAAAAAAAAAAAF70AAAAAABFFFFFFC000000000000000000000000000000FFFFFFFFFFEAACC0AAAAFFFF0000000000000000000000000000000000000000000000FFFCC0AAFFF00000000000000000000000000000000000000000000000000001C0ABF0000000000000000000000000000000000000000000000000000001C0AF00000000000000000000000000000000000000000000000000000006C0AF0000000000000000000000000000000000000000000000000000000700AB00000000000000000000000000",
	mem_init0 => "00000000000000000000000000001B00ABC000000000000000000000000000000000000000000000000000056B00AF15555555000000000000000000000000000000000000000001555AF000ACBFEAAAAAA55500000000000000000000000000000000555555AABC0000ADC0000000FFEA55555555554000000000000555555555AAAABFFC000000F2000000000003FFAAAAAAAA9555555555555AAAAAAAFFFFFC0000000000DB00000000000000000000C3FEAAAAAAAAAAF00000000000000000000000700000000000000000000000003FFFFFFFC0000000000000000000000000800000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/plateforme.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_platform:inst4|platform_rom:inst|altsyncram:altsyncram_component|altsyncram_2a34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst4|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: MLABCELL_X60_Y18_N15
\inst1|inst9|or_node[1][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|or_node[1][2]~combout\ = ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9) & ( \inst1|inst5|to_print~q\ ) ) # ( !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9) & ( \inst1|inst5|to_print~q\ & ( 
-- ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(9) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\) ) ) ) # ( \inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9) & ( 
-- !\inst1|inst5|to_print~q\ & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(9) & \inst1|inst8|to_print~q\)) # (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\) ) ) ) # ( 
-- !\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(9) & ( !\inst1|inst5|to_print~q\ & ( ((\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(9) & \inst1|inst8|to_print~q\)) # 
-- (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w9_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst1|inst8|ALT_INV_to_print~q\,
	datad => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\,
	datae => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \inst1|inst5|ALT_INV_to_print~q\,
	combout => \inst1|inst9|or_node[1][2]~combout\);

-- Location: M10K_X57_Y15_N0
\inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555400000000000000000000000",
	mem_init2 => "0000000000000001455555555555555555555555555555555555555544000000000000000000000000000000000000354400000000000000000000000000000000000075441555555555555555555555555555555555577544100000000000000000000000000000000007754411555555555555555555555555555555557775441100000000000000000000000000000000F775441115550405551551551441555554541155F77544110555555555555555555555555555555DF77544111555555555555555555555555555557DF77544111500000000000000000000000000007DF77544111500000000000000000000000000017DF7754411050555555555",
	mem_init1 => "5555555555555555557DF77544110505555555555555555555555555557DF77544111505555555555555555555555555557DF77544110505555555555555555555555555557DF77544111505555555555555555555555555557DF77544111505555555555555555555555555557DF77544111505555555555555555555555555557DF77544111505555555555555555555555555557DF77544110505555555555555555555555555557DF77544111505555555555555555555555555557DF77544111505555555555555555555555555557DF77544110505555555555555555555555555557DF77544111505555555555555555555555555557DF77544111515",
	mem_init0 => "555555555555555555555555557DF77544110555555555555555555555555555557DF775441117FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF77544111FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF775441115555555555555555555555555555555F7754411FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF775441155555555555555D5555557F7FFFFFFFFF775441FFDD555555555555555555555555555555775443FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75445555555555555555555555555555555555557547FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545555555555555555555555555555555FF7555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_cyan.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst2|altsyncram:altsyncram_component|altsyncram_rc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M10K_X57_Y17_N0
\inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAA82000000000000000000000000000000000000000200000000000000000000000000000000000001020AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA102080000000000000000000000000000000000110208AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA110208820000880A0880080802080220200020A1110208800000000000000000000000000000000511020882AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA511020882AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE511020882800000000000000000000000000001E511020882800000000000000000000000000001E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA81E51102088282AAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E51102088282AAAAAAAAAAAAAAAAAAAAAAAAAA01E511020882820000000000000000000000000001E511020882800",
	mem_init0 => "000000000000000000000000001E511020882800000000000000000000000000001E511020882955555555555555555555555555555E511020882FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE511020882AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA51102088FFFFFFFFFFDF5755555555555555555551102088000008020028AAEAAAAAABFBFFFFFFD55110208554400000000000000000000000000000011020955555555555555555555555555555555555102000000000000000000000000000000000000010215555555555555555555555555555555555555020000000000000000000000000000000551000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_rouge.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst5|altsyncram:altsyncram_component|altsyncram_ig34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M10K_X39_Y16_N0
\inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555555555555555555555555555400000000000000000000000",
	mem_init2 => "00000000000000014FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABD4EBFFFFEFFFBFFFFFFBAFEFFFFFEFFFFFFEEFF7D4E9555555555555555555555555555555555557D4E90000000000000000000000000000000000D7D4E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D4E93AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7D7D4E93955555555555555555555555555555557D7D4E939FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D4E939D55555555555555555555555555555D7D7D4E939DAAAAAAAAAAAAAAAAAAAAAAAAAAAADD7D7D4E939D8000000000000000000000000001DD7D7D4E939D8FFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D8FFFFFFFFFFFFFFFFFFFFFFFFFFDDD7D7D4E939D95",
	mem_init0 => "55555555555555555555555555DD7D7D4E939DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD7D7D4E939D55555555555555555555555555555D7D7D4E939FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D4E93955555555555555555555555555555557D7D4E93555555555555555555555555555555557D7D4E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D4E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D4E9555555555555555555555555555555555557D4E5555555555555555555555555555555555557D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./image/bricks_bleu.mif",
	init_file_layout => "port_a",
	logical_ram_name => "afficheur:inst1|memory_brick:inst1|brick_rom:inst1|altsyncram:altsyncram_component|altsyncram_pc34:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst1|inst1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y15_N36
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8) & ( \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & 
-- (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(8))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(8)))) ) ) ) # ( !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst6|altsyncram_component|auto_generated|q_a\(8))) # (\inst1|inst2|type_brick_mem\(0) & ((\inst1|inst1|inst7|altsyncram_component|auto_generated|q_a\(8)))) ) ) ) # ( 
-- \inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8) & ( !\inst1|inst2|type_brick_mem\(1) & ( (!\inst1|inst2|type_brick_mem\(0)) # (\inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( 
-- !\inst1|inst1|inst4|altsyncram_component|auto_generated|q_a\(8) & ( !\inst1|inst2|type_brick_mem\(1) & ( (\inst1|inst2|type_brick_mem\(0) & \inst1|inst1|inst5|altsyncram_component|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst6|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst1|inst1|inst7|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datad => \inst1|inst1|inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \inst1|inst1|inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X43_Y15_N24
\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\ = ( !\inst1|inst2|type_brick_mem\(2) & ( (!\inst1|inst2|type_brick_mem\(0) & (\inst1|inst1|inst2|altsyncram_component|auto_generated|q_a\(8) & 
-- (((\inst1|inst2|type_brick_mem\(1)))))) # (\inst1|inst2|type_brick_mem\(0) & (((!\inst1|inst2|type_brick_mem\(1) & (\inst1|inst1|inst1|altsyncram_component|auto_generated|q_a\(8))) # (\inst1|inst2|type_brick_mem\(1) & 
-- ((\inst1|inst1|inst3|altsyncram_component|auto_generated|q_a\(8))))))) ) ) # ( \inst1|inst2|type_brick_mem\(2) & ( (((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011110000111100100010011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_type_brick_mem\(0),
	datab => \inst1|inst1|inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst3|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \inst1|inst2|ALT_INV_type_brick_mem\(2),
	dataf => \inst1|inst2|ALT_INV_type_brick_mem\(1),
	datag => \inst1|inst1|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X63_Y16_N21
\inst1|inst9|or_node[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|or_node[0][2]~combout\ = ( \inst1|inst5|to_print~q\ & ( \inst1|inst8|to_print~q\ & ( ((\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\) # (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(8))) # 
-- (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( \inst1|inst8|to_print~q\ & ( (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\) # 
-- (\inst1|inst7|inst|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( \inst1|inst5|to_print~q\ & ( !\inst1|inst8|to_print~q\ & ( (\inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\) # 
-- (\inst1|inst4|inst|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\inst1|inst5|to_print~q\ & ( !\inst1|inst8|to_print~q\ & ( \inst1|inst1|inst|LPM_MUX_component|auto_generated|l3_w8_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100111111111100001111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|inst7|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|inst1|inst|LPM_MUX_component|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\,
	datae => \inst1|inst5|ALT_INV_to_print~q\,
	dataf => \inst1|inst8|ALT_INV_to_print~q\,
	combout => \inst1|inst9|or_node[0][2]~combout\);
END structure;


