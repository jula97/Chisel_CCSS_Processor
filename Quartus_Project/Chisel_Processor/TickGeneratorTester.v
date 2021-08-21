module TickGeneratorTester(
	input inclk,
	input ena,
	input clkEn,
	output clkLED,
	output tickLED
);

wire clk_in;
assign clkLED = clk_in;

TickGenerator UUT1(
  .clock(clk_in),
  .reset(),
  .io_inClk(),
  .io_clkEn(clkEn),
  .io_maxScale(5),
  .io_outTick(tickLED)
);

scaledclock  UUT2(
	.inclk(inclk),
	.ena(ena),
   .clk(clk_in)
);
	

endmodule
