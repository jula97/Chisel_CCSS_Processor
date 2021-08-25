`timescale 1ns/10ps

module processor_tb (
);

    reg clk;
    reg clk_en;
    reg reset;
    wire end_process;
    


    Processor Proc (.*);


initial begin
    clk    = 0;
    clk_en = 0;
    reset  = 0;
    
    #50 reset  = 1;
        clk_en = 1;
    #500 reset  = 0;
end

always
    #5 clk = ~clk; 

endmodule