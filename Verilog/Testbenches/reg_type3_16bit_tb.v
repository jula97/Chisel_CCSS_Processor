`timescale 1ns/10ps

module reg_type3_16bit_tb();

    parameter CLOCK_PERIOD = 20;

    reg clk, write_en, inc, reset;
    reg [15:0]datain;

    wire [15:0]dataout;

    initial begin
        clk = 1'b0;
        forever begin 
            #(CLOCK_PERIOD/2);
            clk = ~clk;
        end
    end 

    reg_type3_16bit reg_type3(
        .clk(clk),
        .inc(inc),
        .reset(reset),
        .write_en(write_en),
        .datain(datain),
        .dataout(dataout)
    );

    initial 
        begin
            @(posedge clk);
            inc <= 1;
            write_en <= 0;
            reset <= 0;
            datain <= 3;

            @(posedge clk);
            inc <= 0;
            write_en <= 0;
            reset <= 1;

            @(posedge clk);
            inc <= 0;
            write_en <= 1;
            reset <= 0;
            datain <= 5;

            repeat (10) @(posedge clk) begin
                write_en <= $random;
                datain <= $random;
                inc <= $random;
                reset <= $random;
            end

            $stop;
        end

endmodule