`timescale 1ns/100ps

module alu_tb;
    reg [15:0] in1,in2;
    reg [2:0] alu_op;
	reg clk = 0;

    wire [15:0] alu_out;
    wire z;

    localparam period = 20;  
    
    alu UUT (
        .clk(clk),
        .in1(in1),
        .in2(in2),
        .alu_op(alu_op),
        .alu_out(alu_out),
        .z(z)
    );

    initial begin
        in1 = 16'd6;
        in2 = 16'd2;
        alu_op = 3'd0;
        #period; 
        alu_op = 3'd1;
        #period; 
        alu_op = 3'd2;
        #period; 
        alu_op = 3'd3;
        #period; 
        alu_op = 3'd4;
        #period; 
        alu_op = 3'd5;
        #period; 
        alu_op = 3'd6;
        #period; 
        alu_op = 3'd7;
        #period;
        in1 = 16'd2;
        in2 = 16'd4;
        alu_op = 3'd4;
        #period;
    end

    always
    #1 clk = !clk;

endmodule