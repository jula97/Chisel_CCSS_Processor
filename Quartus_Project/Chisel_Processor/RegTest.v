module Registers(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regReset,
  input         io_regInc,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 18:28]
  wire [15:0] _T_3 = registerOut + 16'h1; // @[Registers.scala 38:34]
  assign io_regOut = registerOut; // @[Registers.scala 44:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 18:28]
      registerOut <= 16'h0; // @[Registers.scala 18:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 35:31]
      registerOut <= io_regIn; // @[Registers.scala 36:19]
    end else if (io_regInc) begin // @[Registers.scala 37:29]
      registerOut <= _T_3; // @[Registers.scala 38:19]
    end else if (io_regReset) begin // @[Registers.scala 39:33]
      registerOut <= 16'h0; // @[Registers.scala 40:19]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module bin27(
  input  [3:0] io_bin,
  output [6:0] io_seven
);
  wire  _T = 4'h0 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_3 = 4'h3 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_4 = 4'h4 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_5 = 4'h5 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_6 = 4'h6 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_7 = 4'h7 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_8 = 4'h8 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_bin; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_bin; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_bin; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_bin; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_bin; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_bin; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_0 = _T_15 ? 8'h8e : 8'h0; // @[Conditional.scala 39:67 bin27.scala 29:21]
  wire [7:0] _GEN_1 = _T_14 ? 8'h86 : _GEN_0; // @[Conditional.scala 39:67 bin27.scala 28:21]
  wire [7:0] _GEN_2 = _T_13 ? 8'ha1 : _GEN_1; // @[Conditional.scala 39:67 bin27.scala 27:21]
  wire [7:0] _GEN_3 = _T_12 ? 8'hc6 : _GEN_2; // @[Conditional.scala 39:67 bin27.scala 26:21]
  wire [7:0] _GEN_4 = _T_11 ? 8'h83 : _GEN_3; // @[Conditional.scala 39:67 bin27.scala 25:21]
  wire [7:0] _GEN_5 = _T_10 ? 8'h88 : _GEN_4; // @[Conditional.scala 39:67 bin27.scala 24:21]
  wire [7:0] _GEN_6 = _T_9 ? 8'h90 : _GEN_5; // @[Conditional.scala 39:67 bin27.scala 23:20]
  wire [7:0] _GEN_7 = _T_8 ? 8'h80 : _GEN_6; // @[Conditional.scala 39:67 bin27.scala 22:20]
  wire [7:0] _GEN_8 = _T_7 ? 8'hf8 : _GEN_7; // @[Conditional.scala 39:67 bin27.scala 21:20]
  wire [7:0] _GEN_9 = _T_6 ? 8'h82 : _GEN_8; // @[Conditional.scala 39:67 bin27.scala 20:20]
  wire [7:0] _GEN_10 = _T_5 ? 8'h92 : _GEN_9; // @[Conditional.scala 39:67 bin27.scala 19:20]
  wire [7:0] _GEN_11 = _T_4 ? 8'h99 : _GEN_10; // @[Conditional.scala 39:67 bin27.scala 18:20]
  wire [7:0] _GEN_12 = _T_3 ? 8'hb0 : _GEN_11; // @[Conditional.scala 39:67 bin27.scala 17:20]
  wire [7:0] _GEN_13 = _T_2 ? 8'ha4 : _GEN_12; // @[Conditional.scala 39:67 bin27.scala 16:20]
  wire [7:0] _GEN_14 = _T_1 ? 8'hf9 : _GEN_13; // @[Conditional.scala 39:67 bin27.scala 15:20]
  wire [7:0] _GEN_15 = _T ? 8'hc0 : _GEN_14; // @[Conditional.scala 40:58 bin27.scala 14:20]
  assign io_seven = _GEN_15[6:0]; // @[bin27.scala 32:12]
endmodule
module RegTest(
  input         clock,
  input         reset,
  input  [11:0] io_bin,
  output [6:0]  io_seven
);
  wire  sumReg_clock; // @[RegTest.scala 10:22]
  wire  sumReg_reset; // @[RegTest.scala 10:22]
  wire [15:0] sumReg_io_regIn; // @[RegTest.scala 10:22]
  wire  sumReg_io_regReset; // @[RegTest.scala 10:22]
  wire  sumReg_io_regInc; // @[RegTest.scala 10:22]
  wire  sumReg_io_regWriteEnable; // @[RegTest.scala 10:22]
  wire [15:0] sumReg_io_regOut; // @[RegTest.scala 10:22]
  wire [3:0] Bin27_io_bin; // @[RegTest.scala 11:21]
  wire [6:0] Bin27_io_seven; // @[RegTest.scala 11:21]
  Registers sumReg ( // @[RegTest.scala 10:22]
    .clock(sumReg_clock),
    .reset(sumReg_reset),
    .io_regIn(sumReg_io_regIn),
    .io_regReset(sumReg_io_regReset),
    .io_regInc(sumReg_io_regInc),
    .io_regWriteEnable(sumReg_io_regWriteEnable),
    .io_regOut(sumReg_io_regOut)
  );
  bin27 Bin27 ( // @[RegTest.scala 11:21]
    .io_bin(Bin27_io_bin),
    .io_seven(Bin27_io_seven)
  );
  assign io_seven = Bin27_io_seven; // @[RegTest.scala 19:12]
  assign sumReg_clock = clock;
  assign sumReg_reset = reset;
  assign sumReg_io_regIn = {{12'd0}, io_bin[3:0]}; // @[RegTest.scala 13:28]
  assign sumReg_io_regReset = io_bin[4]; // @[RegTest.scala 14:31]
  assign sumReg_io_regInc = io_bin[5]; // @[RegTest.scala 15:29]
  assign sumReg_io_regWriteEnable = io_bin[6]; // @[RegTest.scala 16:37]
  assign Bin27_io_bin = sumReg_io_regOut[3:0]; // @[RegTest.scala 18:35]
endmodule
