`timescale 1ns/10ps

module RST_Decoder_tb;
    
    reg rst_en;
	 reg [3:0] reg_select;
	 
	 wire row, col, curr, sum;
	 
	 RST_Decoder reset_dec(
			  .RST_sel (reg_select), 
			  .RST_en (rst_en),
			  
			  .rst_ROW (row) ,
			  .rst_COL (col) ,
			  .rst_CURR (curr),
			  .rst_SUM (sum));

    initial begin
        rst_en = 0;
		  reg_select = 4'b0001; //row should be one when rst_en = 1
        #5 rst_en = 1;
        #5 rst_en = 0;
		  
		  #2 reg_select = 4'b0010; //col should be one when rst_en = 1
        #2 rst_en = 1;
        #6 rst_en = 0;
		  
		  #2 reg_select = 4'b0100; //curr should be one when rst_en = 1
        #3 rst_en = 1;
        #5 rst_en = 0;
		  
		  #2 reg_select = 4'b1000; //sum should be one when rst_en = 1
        #6 rst_en = 1;
        #2 rst_en = 0;


    end


endmodule