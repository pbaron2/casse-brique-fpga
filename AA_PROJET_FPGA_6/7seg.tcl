# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: test_depl_plateforme.tcl
# Generated on: Mon Oct 29 17:47:36 2018

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "casse_brique_fpga"]} {
		puts "Project test_depl_plateforme is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists test_depl_plateforme]} {
		project_open -revision test_depl_plateforme test_depl_plateforme
	} else {
		project_new -revision test_depl_plateforme test_depl_plateforme
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CGXFC5C6F27C7
	set_global_assignment -name TOP_LEVEL_ENTITY main
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "15:37:06  SEPTEMBER 28, 2018"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.0.0 Standard Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name EDA_SIMULATION_TOOL "<None>"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT NONE -section_id eda_simulation
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name VHDL_FILE ../TL2/output_files/score.vhd
	set_global_assignment -name VHDL_FILE ../TL2/counter.vhd
	set_global_assignment -name VERILOG_FILE ../TL2/additionneur.v
	set_global_assignment -name VHDL_FILE start_gestion.vhd
	set_global_assignment -name VERILOG_FILE pll_affich_25/pll_affich_25_0002.v
	set_global_assignment -name BDF_FILE ../TL2/Compteur_score.bdf
	set_global_assignment -name VHDL_FILE edge_detector.vhd
	set_global_assignment -name VERILOG_FILE hdmi/vpg_xxx.v
	set_global_assignment -name VERILOG_FILE hdmi/hdmi_generator.v
	set_global_assignment -name QIP_FILE Nios_balle/synthesis/Niosballe.qip
	set_global_assignment -name VHDL_FILE ram_test.vhd
	set_global_assignment -name VHDL_FILE ram_bricks.vhd
	set_global_assignment -name VHDL_FILE print_plateforme.vhd
	set_global_assignment -name VHDL_FILE print_bricks.vhd
	set_global_assignment -name VHDL_FILE print_ball.vhd
	set_global_assignment -name VHDL_FILE platform_rom.vhd
	set_global_assignment -name VHDL_FILE mux_rom_brick.vhd
	set_global_assignment -name VHDL_FILE mux_platform.vhd
	set_global_assignment -name VHDL_FILE mux_ball.vhd
	set_global_assignment -name VHDL_FILE mux_adr_etatbricks.vhd
	set_global_assignment -name VHDL_FILE move_plateforme.vhd
	set_global_assignment -name BDF_FILE memory_platform.bdf
	set_global_assignment -name BDF_FILE memory_brick.bdf
	set_global_assignment -name BDF_FILE memory_ball.bdf
	set_global_assignment -name BDF_FILE main.bdf
	set_global_assignment -name BDF_FILE etat_briques.bdf
	set_global_assignment -name VHDL_FILE decrementeurvie.vhd
	set_global_assignment -name VHDL_FILE cste.vhd
	set_global_assignment -name VHDL_FILE brick_rom.vhd
	set_global_assignment -name VHDL_FILE ball_rom.vhd
	set_global_assignment -name BDF_FILE afficheur.bdf
	set_global_assignment -name VHDL_FILE decod7s.vhd
	set_global_assignment -name BSF_FILE decod7s.bsf
	set_global_assignment -name VHDL_FILE controleur.vhd
	set_global_assignment -name BDF_FILE afficheur_score.bdf
	set_global_assignment -name QIP_FILE constante.qip
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_N20 -to CLK
	set_location_assignment PIN_Y16 -to LEFT
	set_location_assignment PIN_Y15 -to RIGHT
	set_location_assignment PIN_V23 -to HDMI_D[0]
	set_location_assignment PIN_AA26 -to HDMI_D[1]
	set_location_assignment PIN_W25 -to HDMI_D[2]
	set_location_assignment PIN_W26 -to HDMI_D[3]
	set_location_assignment PIN_V24 -to HDMI_D[4]
	set_location_assignment PIN_V25 -to HDMI_D[5]
	set_location_assignment PIN_U24 -to HDMI_D[6]
	set_location_assignment PIN_T23 -to HDMI_D[7]
	set_location_assignment PIN_T24 -to HDMI_D[8]
	set_location_assignment PIN_T26 -to HDMI_D[9]
	set_location_assignment PIN_R23 -to HDMI_D[10]
	set_location_assignment PIN_R25 -to HDMI_D[11]
	set_location_assignment PIN_P22 -to HDMI_D[12]
	set_location_assignment PIN_P23 -to HDMI_D[13]
	set_location_assignment PIN_N25 -to HDMI_D[14]
	set_location_assignment PIN_P26 -to HDMI_D[15]
	set_location_assignment PIN_P21 -to HDMI_D[16]
	set_location_assignment PIN_R24 -to HDMI_D[17]
	set_location_assignment PIN_R26 -to HDMI_D[18]
	set_location_assignment PIN_AB26 -to HDMI_D[19]
	set_location_assignment PIN_AA24 -to HDMI_D[20]
	set_location_assignment PIN_AB25 -to HDMI_D[21]
	set_location_assignment PIN_AC25 -to HDMI_D[22]
	set_location_assignment PIN_AD25 -to HDMI_D[23]
	set_location_assignment PIN_Y26 -to HDMI_DE
	set_location_assignment PIN_U26 -to HDMI_HS
	set_location_assignment PIN_U25 -to HDMI_VS
	set_location_assignment PIN_Y25 -to HDMI_PCLK
	set_location_assignment PIN_AB24 -to RST
	set_location_assignment PIN_B25 -to SRAM_A[0]
	set_location_assignment PIN_B26 -to SRAM_A[1]
	set_location_assignment PIN_H19 -to SRAM_A[2]
	set_location_assignment PIN_H20 -to SRAM_A[3]
	set_location_assignment PIN_D25 -to SRAM_A[4]
	set_location_assignment PIN_C25 -to SRAM_A[5]
	set_location_assignment PIN_J20 -to SRAM_A[6]
	set_location_assignment PIN_J21 -to SRAM_A[7]
	set_location_assignment PIN_D22 -to SRAM_A[8]
	set_location_assignment PIN_E23 -to SRAM_A[9]
	set_location_assignment PIN_G20 -to SRAM_A[10]
	set_location_assignment PIN_F21 -to SRAM_A[11]
	set_location_assignment PIN_E21 -to SRAM_A[12]
	set_location_assignment PIN_F22 -to SRAM_A[13]
	set_location_assignment PIN_J25 -to SRAM_A[14]
	set_location_assignment PIN_J26 -to SRAM_A[15]
	set_location_assignment PIN_N24 -to SRAM_A[16]
	set_location_assignment PIN_M24 -to SRAM_A[17]
	set_location_assignment PIN_N23 -to SRAM_CE_n
	set_location_assignment PIN_E24 -to SRAM_D[0]
	set_location_assignment PIN_E25 -to SRAM_D[1]
	set_location_assignment PIN_K24 -to SRAM_D[2]
	set_location_assignment PIN_K23 -to SRAM_D[3]
	set_location_assignment PIN_F24 -to SRAM_D[4]
	set_location_assignment PIN_G24 -to SRAM_D[5]
	set_location_assignment PIN_L23 -to SRAM_D[6]
	set_location_assignment PIN_L24 -to SRAM_D[7]
	set_location_assignment PIN_H23 -to SRAM_D[8]
	set_location_assignment PIN_H24 -to SRAM_D[9]
	set_location_assignment PIN_H22 -to SRAM_D[10]
	set_location_assignment PIN_J23 -to SRAM_D[11]
	set_location_assignment PIN_F23 -to SRAM_D[12]
	set_location_assignment PIN_G22 -to SRAM_D[13]
	set_location_assignment PIN_L22 -to SRAM_D[14]
	set_location_assignment PIN_K21 -to SRAM_D[15]
	set_location_assignment PIN_H25 -to SRAM_LB_N
	set_location_assignment PIN_M22 -to SRAM_OE_N
	set_location_assignment PIN_M25 -to SRAM_UB_N
	set_location_assignment PIN_G25 -to SRAM_WE_N
	set_location_assignment PIN_P11 -to START
	set_location_assignment PIN_V18 -to DECOD1[1]
	set_location_assignment PIN_V19 -to DECOD1[0]
	set_location_assignment PIN_V17 -to DECOD1[2]
	set_location_assignment PIN_W18 -to DECOD1[3]
	set_location_assignment PIN_Y20 -to DECOD1[4]
	set_location_assignment PIN_Y19 -to DECOD1[5]
	set_location_assignment PIN_Y18 -to DECOD1[6]
	set_location_assignment PIN_AD26 -to DECOD2[1]
	set_location_assignment PIN_AA18 -to DECOD2[0]
	set_location_assignment PIN_AB19 -to DECOD2[2]
	set_location_assignment PIN_AE26 -to DECOD2[3]
	set_location_assignment PIN_AE25 -to DECOD2[4]
	set_location_assignment PIN_AC19 -to DECOD2[5]
	set_location_assignment PIN_AF24 -to DECOD2[6]
	set_location_assignment PIN_AD7 -to DECOD3[0]
	set_location_assignment PIN_AD6 -to DECOD3[1]
	set_location_assignment PIN_U20 -to DECOD3[2]
	set_location_assignment PIN_V22 -to DECOD3[3]
	set_location_assignment PIN_V20 -to DECOD3[4]
	set_location_assignment PIN_W21 -to DECOD3[5]
	set_location_assignment PIN_W20 -to DECOD3[6]
	set_location_assignment PIN_Y24 -to DECOD4[0]
	set_location_assignment PIN_Y23 -to DECOD4[1]
	set_location_assignment PIN_AA23 -to DECOD4[2]
	set_location_assignment PIN_AA22 -to DECOD4[3]
	set_location_assignment PIN_AC24 -to DECOD4[4]
	set_location_assignment PIN_AC23 -to DECOD4[5]
	set_location_assignment PIN_AC22 -to DECOD4[6]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
