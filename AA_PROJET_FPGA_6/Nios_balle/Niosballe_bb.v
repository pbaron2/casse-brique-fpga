
module Niosballe (
	adr_brique_export,
	brique_morte_export,
	clk_clk,
	en_export,
	en_nios_export,
	fincalcul_export,
	perdu_export,
	pos_raquette_export,
	reset_reset_n,
	sram_de2_ADDR,
	sram_de2_DQ,
	sram_de2_WE_N,
	sram_de2_OE_N,
	sram_de2_UB_N,
	sram_de2_LB_N,
	sram_de2_CE_N,
	x_position_export,
	y_position_export);	

	output	[8:0]	adr_brique_export;
	input		brique_morte_export;
	input		clk_clk;
	input		en_export;
	output		en_nios_export;
	output		fincalcul_export;
	output		perdu_export;
	input	[10:0]	pos_raquette_export;
	input		reset_reset_n;
	output	[17:0]	sram_de2_ADDR;
	inout	[15:0]	sram_de2_DQ;
	output		sram_de2_WE_N;
	output		sram_de2_OE_N;
	output		sram_de2_UB_N;
	output		sram_de2_LB_N;
	output		sram_de2_CE_N;
	output	[10:0]	x_position_export;
	output	[10:0]	y_position_export;
endmodule
