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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/18/2018 17:00:14"
                                                            
-- Vhdl Test Bench template for design  :  main
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_tst IS
END main_vhd_tst;
ARCHITECTURE main_arch OF main_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL HDMI_D : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL HDMI_DE : STD_LOGIC;
SIGNAL HDMI_HS : STD_LOGIC;
SIGNAL HDMI_PCLK : STD_LOGIC;
SIGNAL HDMI_VS : STD_LOGIC;
SIGNAL LEFT : STD_LOGIC;
SIGNAL RIGHT : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
COMPONENT main
	PORT (
	CLK : IN STD_LOGIC;
	HDMI_D : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	HDMI_DE : OUT STD_LOGIC;
	HDMI_HS : OUT STD_LOGIC;
	HDMI_PCLK : OUT STD_LOGIC;
	HDMI_VS : OUT STD_LOGIC;
	LEFT : IN STD_LOGIC;
	RIGHT : IN STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	HDMI_D => HDMI_D,
	HDMI_DE => HDMI_DE,
	HDMI_HS => HDMI_HS,
	HDMI_PCLK => HDMI_PCLK,
	HDMI_VS => HDMI_VS,
	LEFT => LEFT,
	RIGHT => RIGHT,
	RST => RST
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END main_arch;
