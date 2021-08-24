`timescale 1ns/10ps

module WTR_Decoder_tb;
    
    reg wtr_en;
	 reg [7:0] reg_select;
	 
	 wire N, M, P, row, col, curr, sum, R, STA, STB, STC, A, B, R1, coreID;
	 
		  
    WTR_Decoder write_dec(
	        .WTR_sel(reg_select), 
			  .WTR_en (wtr_en),
			  
			  .wtr_N (N) ,
           .wtr_M (M),
			  .wtr_P (P),
			  .wtr_ROW (row),
			  .wtr_COL (col),
			  .wtr_CURR (curr),
           .wtr_SUM (sum),
			  .wtr_R (R),
			  .wtr_STA (STA),
			  .wtr_STB (STB),
			  .wtr_STC (STC),
			  .wtr_A (A),
			  .wtr_B (B),
           .wtr_R1 (R1),
			  .wtr_CoreID (coreID));

    initial begin
        wtr_en = 0;
		  reg_select = 8'd14 ; //R
        #5 wtr_en = 1;
        #5 wtr_en = 0;
		  
		  reg_select = 8'd8 ; //sum
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd5 ; //row
        #5 wtr_en = 1;
        #5 wtr_en = 0;
		  
		  reg_select = 8'd2 ; //M
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd9 ; //STA
        #5 wtr_en = 1;
        #5 wtr_en = 0; 
		  
		  reg_select = 8'd3 ; //P
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd10 ; //STB
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd4 ; //R1
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd11 ; //STC
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd6 ; //col
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd12 ; //A
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd7 ; //curr
        #5 wtr_en = 1;
        #5 wtr_en = 0;

		  reg_select = 8'd13 ; //B
        #5 wtr_en = 1;
        #5 wtr_en = 0;
  
		  reg_select = 8'd15 ; //CoreID
        #5 wtr_en = 1;
        #5 wtr_en = 0;
 
		  reg_select = 8'd1 ; //N
        #5 wtr_en = 1;
        #5 wtr_en = 0;

    end


endmodule