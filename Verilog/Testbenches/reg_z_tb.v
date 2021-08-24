`timescale 1ns/10ps

module reg_z_tb;

    localparam  CLOCK_PERIOD = 20;

    reg datain, clk;

    wire dataout;

    initial begin
        clk = 1'b0;
        forever begin 
            #(CLOCK_PERIOD/2);
            clk = ~clk;
        end
    end 

    reg_z Reg_z(
        .clk(clk),
        .datain(datain),
        .dataout(dataout)
        );  


    initial 
        begin
            repeat(10) @(posedge clk) begin
                datain <= $random;
            end
        $stop;
    end

endmodule