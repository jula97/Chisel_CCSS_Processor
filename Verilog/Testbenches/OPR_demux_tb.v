`timescale 1ns/100ps

module OPR_demux_tb;
    reg [7:0]io_operand;
    reg [2:0]io_OPR_sel;
            
    wire [7:0]io_WTR_operand;
    wire [7:0]io_INC_operand;
    wire [7:0]io_RESET_operand;
    wire [7:0]io_WTA_operand;

    localparam period = 20;  
    
    OPR_demux UUT (
        .io_operand(io_operand),
		.io_OPR_sel(io_OPR_sel),
		.io_WTR_operand(io_WTR_operand),
        .io_INC_operand(io_INC_operand),
        .io_RESET_operand(io_RESET_operand),
        .io_WTA_operand(io_WTA_operand)
    );

    initial begin
        io_operand = 8'd6;
        io_OPR_sel = 3'd0;
        #period; 
        io_OPR_sel = 3'd1;
        #period; 
        io_OPR_sel = 3'd2;
        #period; 
        io_OPR_sel = 3'd3;
        #period; 
        io_OPR_sel = 3'd4;
        #period; 
        io_OPR_sel = 3'd4;
        #period; 
        io_OPR_sel = 3'd5;
        #period; 
    end

endmodule