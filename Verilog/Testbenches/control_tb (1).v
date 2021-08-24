`timescale 1ns/10ps

module control_tb;
    
    reg clk,z,rst;
	 reg [5:0] opcode;
	 reg [15:0] noc;
	 
	 wire [24:0] ctrlsig;
	 wire end_proc;
	 
			  
	 control controlUnit(
		.io_clock (clk),
		.io_z (z),
		.io_instruction_opcode (opcode),
		.io_rst (rst),
		.io_NoC (noc),
		.io_ctrlsig (ctrlsig),
		.io_end_process (end_proc) );

    initial begin
		  clk = 0;
	     z = 0;
		  noc = 16'd1;
		  opcode = 6'd1;  //change this opcode as required
		  rst = 0;
		  #2 rst = 1;
		  #2 rst = 0;
		  //#31 opcode = 6'd25;  // change the delay given for this endop opcode according to the previous opcode

    end

	 
	 always
        #5 clk = !clk;
		  
	 always @(posedge ctrlsig[19])
		begin
		#20 opcode = opcode + 6'd1;
		end
	 
	 
	 always @(posedge clk)
		begin
		$display ("%25b",ctrlsig);
		end
	  

endmodule