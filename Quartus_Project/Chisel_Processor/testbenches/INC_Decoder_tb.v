`timescale 1ns/10ps

module INC_Decoder_tb;

    reg inc_en;
    reg [7:0]inc_sel;

    wire inc_row, inc_col, inc_curr, inc_sta, inc_stb, inc_stc, inc_r1;

    INC_Decoder inc_decoder(
            .INC_sel(inc_sel),
            .INC_en(inc_en),
            .inc_ROW(inc_row),
            .inc_COL(inc_col),
            .inc_CURR(inc_curr),
            .inc_STA(inc_sta),
            .inc_STB(inc_stb),
            .inc_STC(inc_stc),
            .inc_R1(inc_r1)
            );  

    initial 
    
        begin
            inc_en = 0;

            inc_sel = 7'b0000001; //inc_row = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;

            #2 inc_sel = 7'b0000010; //inc_col = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;
 
            #2 inc_sel = 7'b0000100; //inc_curr = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;

            #2 inc_sel = 7'b0001000; //inc_sta = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;

            #2 inc_sel = 7'b0010000; //inc_stb = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;
 
            #2 inc_sel = 7'b0100000; //inc_stc = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;
 
            #2 inc_sel = 7'b1000000; //inc_r1 = 1 when inc_en = 1
                #5 inc_en = 1;
                #5 inc_en = 0;

        end


endmodule