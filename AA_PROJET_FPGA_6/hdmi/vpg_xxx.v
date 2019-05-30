


module vpg_xxx(
	vpg_pclk,
	reset_n,
	
//	clock_25,
	vpg_de,
	vpg_hs,
	vpg_vs,
	h_count,
	v_count,
	start_calcul
);



input			    vpg_pclk;
input	  		    reset_n;



//output             clock_25;
output			    vpg_de;
output			    vpg_hs;
output			    vpg_vs;
output	[10:0] 	h_count;
output	[10:0] 	v_count;
output 				start_calcul;



//=======================================================
//  Signal declarations
//=======================================================
//=============== PLL reconfigure
reg  [11:0] h_total, h_sync, h_start, h_end; 
reg  [11:0] v_total, v_sync, v_start, v_end;

reg clock_25;

//assign h_total = 12'd799;
//assign h_sync = 12'd95;
//assign h_start = 12'd141;
//assign h_end = 12'd781;
//
//assign v_total = 12'd524;
//assign v_sync = 12'd1;
//assign v_start = 12'd34;
//assign v_end = 12'd514;




//=======================================================
//  Sub-module
//=======================================================

hdmi_generator u_vga_generator (                                    
  .clk(vpg_pclk),                
  .reset_n(reset_n),
  
  .h_total(h_total),           
  .h_sync(h_sync),           
  .h_start(h_start),             
  .h_end(h_end),                                                    
  .v_total(v_total),           
  .v_sync(v_sync),            
  .v_start(v_start),           
  .v_end(v_end), 

  .x(h_count),
  .y(v_count),
  
  .vga_hs(vpg_hs),
  .vga_vs(vpg_vs),           
  .vga_de(vpg_de),
  .start_calcul(start_calcul)

);
  


//=======================================================
//  Structural coding
//=======================================================
//============= assign timing constant  
//h_total : total - 1
//h_sync : sync - 1
//h_start : sync + back porch - 1 - 2(delay)
//h_end : h_start + avtive
//v_total : total - 1
//v_sync : sync - 1
//v_start : sync + back porch - 1
//v_end : v_start + avtive
//v_active_14 : v_start + 1/4 avtive
//v_active_24 : v_start + 2/4 avtive
//v_active_34 : v_start + 3/4 avtive


//always@(negedge vpg_pclk)
//begin
//clock_25 <= ~clock_25;
//end

always @ (negedge reset_n)
begin

		//{h_total, h_sync, h_start, h_end} <= {12'd2199, 12'd43, 12'd189, 12'd2109}; 
		//{v_total, v_sync, v_start, v_end} <= {12'd1124, 12'd4, 12'd40, 12'd1120}; 
      //{h_planche_start, v_planche_start, h_planche_end, v_planche_end} <= {12'd1053, 12'd1083, 12'd1245, 12'd1119};
		
		{h_total, h_sync, h_start, h_end} <= {12'd799, 12'd95, 12'd141, 12'd781}; 
		{v_total, v_sync, v_start, v_end} <= {12'd524, 12'd1, 12'd34, 12'd514}; 

end
endmodule