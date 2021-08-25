module Processor (
    input clk, clk_en, reset,
	 output end_process
);

wire clk_out;
wire [23:0]ImemOut;
wire [15:0]ImemAddr;
wire [15:0]DmemOut;
wire [15:0]DmemAddr;
wire [15:0]DmemIn;
wire DmemWrtEn;
//wire end_process;

ClockScaler SCALER(
    .clock(clk),
    .reset(reset),
    .io_clkEn(clk_en),
    .io_outClk(clk_out)
);

IRAM IRAM1 (
	.address(ImemAddr),
	.clock(clk_out),
	.data(0),
	.wren(0),
	.q(ImemOut));


DRAM DRAM1(
	.address(DmemAddr),
	.clock(clk_out),
	.data(DmemIn),
	.wren(DmemWrtEn),
	.q(DmemOut));

Top TopProc(
  .clock(clk_out),
  .reset(reset),
  .io_ImemOut(ImemOut),      //input  [23:0] io_ImemOut,
  .io_ImemAddr(ImemAddr),     //output [15:0] io_ImemAddr,
  .io_DmemOut(DmemOut),      //input  [15:0] io_DmemOut,
  .io_DmemAddr(DmemAddr),     //output [15:0] io_DmemAddr,
  .io_DmemIn(DmemIn),       //output [15:0] io_DmemIn,
  .io_DmemWrtEn(DmemWrtEn),    //output        io_DmemWrtEn,
  .io_end_process(end_process)   //output        io_end_process
);
    
endmodule