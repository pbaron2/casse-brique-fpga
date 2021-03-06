// direction de la vitesse de la balle

module hdmi_generator(                                    
  input              clk,                
  input              reset_n,
                                               
  input       [11:0] h_total,           
  input       [11:0] h_sync,           
  input       [11:0] h_start,             
  input       [11:0] h_end,                                                    
  input       [11:0] v_total,           
  input       [11:0] v_sync,            
  input       [11:0] v_start,           
  input       [11:0] v_end, 

  output	reg [10:0] 	x,
  output	reg [10:0] 	y,
  output  reg        vga_hs,             
  output  reg        vga_vs,           
  output  reg        vga_de,
  output  reg			start_calcul                                             
);

//=======================================================
//  Signal declarations
//=======================================================
reg			  [11:0]	h_count;
reg			  [7:0]	pixel_x;
reg			  [11:0]	v_count;
reg               h_act = 1'b0;
reg               h_act_d = 1'b0;
reg               v_act = 1'b0; 
reg               v_act_d = 1'b0; 
reg               pre_vga_de = 1'b0; //reset
wire              h_max, hs_end, hr_start, hr_end;
wire              v_max, vs_end, vr_start, vr_end;

wire h_mod_count_start,v_mod_count_start,h_mod_count_end,v_mod_count_end;

//=======================================================
//  Structural coding //assign Á¬ÐøÐÅºÅ¸³Öµ
//=======================================================
assign h_max = h_count == h_total;  // ÅÐ¶ÏÊÇ·ñµ½Ë®Æ½±ß½çµã £¨×ÜÌå±ß½ç£¬¶ø²»ÊÇ½øÈëÏûÒþÇø£©
assign hs_end = h_count >= h_sync; //count ³¬¹ýtotalÒ»Ë²¼ä¼¤»îÐÐÍ¬²½ÐÅºÅh_sync£¬·µ»ØÆÁÄ»×ó²àÆðµã
assign hr_start = h_count == h_start;  // ÅÐ¶ÏË®Æ½·½ÏòÊÇ·ñµ½½øÈëÏÔÊ¾Çø
assign hr_end = h_count == h_end; // ÅÐ¶ÏÊúÖ±·½ÏòÊÇ·ñµ½½øÈëÏûÒþÇø
assign v_max = v_count == v_total; // ÅÐ¶ÏÊÇ·ñµ½´¹Ö±±ß½çµã £¨×ÜÌå±ß½ç£¬¶ø²»ÊÇ½øÈëÏûÒþÇø£©
assign vs_end = v_count >= v_sync; //count ³¬¹ýtotalÒ»Ë²¼ä¼¤»îÐÐÍ¬²½ÐÅºÅv_sync£¬·µ»ØÆÁÄ»ÉÏ·½Æðµã
assign vr_start = v_count == v_start; 
assign vr_end = v_count == v_end;

assign h_mod_count_start = h_count >= h_start; 
assign v_mod_count_start = v_count >= v_start;
assign h_mod_count_end = h_count > h_end; 
assign v_mod_count_end = v_count > v_end;


//horizontal control signals
always @ (posedge clk or negedge reset_n)
	if (!reset_n) // ÖØÆô
	begin
   h_act_d  <=  1'b0;
	h_count	<= 12'b0;
	pixel_x	<= 8'b0; 
	vga_hs	<= 1'b1;
	h_act		<= 1'b0;
	
	v_act_d	<=	1'b0;
	v_count	<=	12'b0;
	vga_vs	<=	1'b1;
	v_act		<=	1'b0;
	end
	
	else
	begin
		
		h_act_d   <=  h_act; // h_actÃ¿¸öÑ­»·×Ô¶¯ÅÐ¶Ï¸üÐÂ

		if (h_max)
		  h_count	<= 12'b0;
		else
		  h_count	<= h_count + 12'b1; //¼ÆÊýÆ÷×ÔÔö

      if (h_act_d) // ·ÇÖØÆôÊ±£¬²¢ÇÒ½øÈëÏÔÊ¾Çø¼ä
		  pixel_x	<=	pixel_x + 8'b1;
		else
		  pixel_x	<=  8'b0;

		if (hs_end && !h_max)
		  vga_hs	<=	1'b1;
		else
		  vga_hs	<= 1'b0;

		if(h_mod_count_start && !h_mod_count_end)
		x <=	 x + 11'b1;
		else
		x <=	 11'b0;
		
		if (hr_start)
		  h_act	  <=	1'b1;
		else if (hr_end)
		  h_act	  <=	1'b0;
		  
		


//vertical control signals	
		if (h_max)
		begin		  
//  		v_act_d	  <=	v_act;
		  
		  if (v_max)
		    v_count	<=	12'b0;
		  else
		    v_count	<=	v_count + 12'b1;

		  if (vs_end && !v_max)
		    vga_vs	<=	1'b1;
		  else
		    vga_vs	<=	1'b0;

  		if(v_mod_count_start && !v_mod_count_end)
		y <=	 y + 11'b1;
		else
		y <=	 11'b0;
		
		if (vr_start)
	  	  v_act <=	1'b1;
		  else if (vr_end)
		    v_act <=	1'b0;
		end
	end

// display enable
always @(posedge clk or negedge reset_n)
begin
	if (!reset_n)  // ÖØÆô
	begin
    	vga_de <= 1'b0;
    	pre_vga_de <= 1'b0;
		start_calcul <= 1'b0;
 	end
	
	else
	begin
    	vga_de <= pre_vga_de;
    	pre_vga_de <= v_act && h_act;
		start_calcul <= (h_count == 0) && (v_count == 0);
	end
	
	
end



endmodule