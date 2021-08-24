`timescale 1ns/100ps

module WTA_mux_tb();
    reg         clock;
    reg         reset;
    reg  [3:0]  io_sel;
    reg         io_en;
    wire [15:0] io_muxOut;
    reg  [15:0] io_wta_N;
    reg  [15:0] io_wta_M;
    reg  [15:0] io_wta_P;
    reg  [15:0] io_wta_R1;
    reg  [15:0] io_wta_ROW;
    reg  [15:0] io_wta_COL;
    reg  [15:0] io_wta_CURR;
    reg  [15:0] io_wta_SUM;
    reg  [15:0] io_wta_STA;
    reg  [15:0] io_wta_STB;
    reg  [15:0] io_wta_STC;
    reg  [15:0] io_wta_A;
    reg  [15:0] io_wta_B;
    reg  [15:0] io_wta_R;
    reg  [15:0] io_wta_CoreID;

    localparam period = 20;  
    
    WTA_mux DU (.*);

    initial begin
        io_sel = 4'd0;
        io_en = 1'd1;
        io_wta_N = 16'd31;
        io_wta_M = 16'd22;
        io_wta_P = 16'd43;
        io_wta_R1 = 16'd24;
        io_wta_ROW = 16'd25;
        io_wta_COL = 16'd16;
        io_wta_CURR = 16'd27;
        io_wta_SUM = 16'd38;
        io_wta_STA = 16'd439;
        io_wta_STB = 16'd10;
        io_wta_STC = 16'd11;
        io_wta_A  = 16'd12;
        io_wta_B = 16'd13;
        io_wta_R  = 16'd14;
        io_wta_CoreID = 16'd15;
        #period; 
        io_sel = 4'd1;
        io_en = 1'd1;
        #period;
        io_sel = 4'd2;
        io_en = 1'd1;
        #period;  
        io_sel = 4'd5;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd4;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd7;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd3;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd8;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd9;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd10;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd13;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd0;
        io_en = 1'd1;
        #period; 

        io_sel = 4'd15;
        io_en = 1'd1;
        #period;
         io_sel = 4'd14;
        io_en = 1'd1;
        #period; 

        io_sel = 4'd11;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd12;
        io_en = 1'd1;
        #period; 
        io_sel = 4'd13;
        io_en = 1'd1;
        #period; 


    end

endmodule