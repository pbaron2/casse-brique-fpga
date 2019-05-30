module HDMI_kenel(
	clk, // 50MHz
	reset_n,
	restart,

	to_left,
	to_right,
	
	hdmi_pclk,
	hdmi_de,
	hdmi_hs,
	hdmi_vs,
	hdmi_data
);


input	  		    clk;
input	  		    reset_n;
input			    restart;

input 			    to_left;
input 			    to_right;

output			    hdmi_pclk; //generation µÄÊäÈë
output			    hdmi_de; // 1£ºÏÔÊ¾ 0£ºÏûÒþ --generation µÄÊä³ö
output			    hdmi_hs; //--generation µÄÊä³ö
output			    hdmi_vs; //--generation µÄÊä³ö
output	[23:0] 	 hdmi_data;





//=======================================================
//  Signal declarations
//=======================================================
reg hdmi_pclk = 0;
reg [11:0] h_total = 12'd799;
reg [11:0] h_sync = 12'd95;
reg [11:0] h_start = 12'd141;
reg [11:0] h_end = 12'd781;
reg [11:0] v_total = 12'd524;
reg [11:0] v_sync = 12'd1;
reg [11:0] v_start = 12'd34;
reg [11:0] v_end = 12'd514;
reg [11:0] h_planche_start;  //°åÊúÖ±·½Ïò¿ªÊ¼
reg [11:0] h_planche_end;  //ÊúÖ±·½Ïò½áÊø
reg [11:0] v_planche_start;//Ë®Æ½·½Ïò¿ªÊ¼
reg [11:0] v_planche_end;//Ë®Æ½·½Ïò½áÊø

//=============== pattern generator according to vga timing
hdmi_generator u_hdmi_generator (                                    
  .clk(hdmi_pclk),                
  .reset_n(reset_n),
  .restart(restart),                                               
  .h_total(h_total),           
  .h_sync(h_sync),           
  .h_start(h_start),             
  .h_end(h_end),                                                    
  .v_total(v_total),           
  .v_sync(v_sync),            
  .v_start(v_start),           
  .v_end(v_end), 
  .h_planche_left(h_planche_start), 
  .h_planche_right(h_planche_end), 
  .v_planche_up(v_planche_start), 
  .v_planche_down(v_planche_end),
  .to_left(to_left),
  .to_right(to_right), 
  .vga_hs(hdmi_hs),
  .vga_vs(hdmi_vs),           
  .vga_de(hdmi_de),
  .vga_r(hdmi_data[23:16]),
  .vga_g(hdmi_data[15:8]),
  .vga_b(hdmi_data[7:0]) );


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
always@(negedge clk)
begin
hdmi_pclk <= ~hdmi_pclk;
end

always @ (negedge reset_n)
begin

		//{h_total, h_sync, h_start, h_end} <= {12'd2199, 12'd43, 12'd189, 12'd2109}; 
		//{v_total, v_sync, v_start, v_end} <= {12'd1124, 12'd4, 12'd40, 12'd1120}; 
      //{h_planche_start, v_planche_start, h_planche_end, v_planche_end} <= {12'd1053, 12'd1083, 12'd1245, 12'd1119};
		
		{h_total, h_sync, h_start, h_end} <= {12'd799, 12'd95, 12'd141, 12'd781}; 
		{v_total, v_sync, v_start, v_end} <= {12'd524, 12'd1, 12'd34, 12'd514}; 
      {h_planche_start, v_planche_start, h_planche_end, v_planche_end} <= {12'd429, 12'd497, 12'd493, 12'd513};
end

endmodule