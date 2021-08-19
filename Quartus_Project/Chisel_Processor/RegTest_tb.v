`timescale 1ns/10ps

module RegTest_tb;


reg clock;
reg reset;
reg [11:0] io_bin;
wire [6:0] io_seven;


RegTest UUT(
  .clock(clock),
  .reset(reset),
  .io_bin(io_bin),
  .io_seven(io_seven)
);


initial begin

clock = 0;
reset = 0;
io_bin[3:0] = 0;
io_bin[4] = 0;
io_bin[5] = 0;
io_bin[6] = 0;

#10
io_bin[3:0] = 4'd0;
io_bin[4] = 1;
io_bin[5] = 0;
io_bin[6] = 0;

#30
io_bin[3:0] = 4'd5;
io_bin[4] = 0;
io_bin[5] = 1;
io_bin[6] = 0;

#30
io_bin[3:0] = 4'd15;
io_bin[4] = 0;
io_bin[5] = 0;
io_bin[6] = 1;


end


always
		#5 clock = !clock;

endmodule