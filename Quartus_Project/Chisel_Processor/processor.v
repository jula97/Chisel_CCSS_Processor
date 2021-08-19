module ALU(
  input  [15:0] io_a,
  input  [15:0] io_b,
  input  [2:0]  io_fn,
  output [15:0] io_y,
  output        io_z
);
  wire  _T = 3'h1 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_2 = io_a + io_b; // @[ALU.scala 16:28]
  wire  _T_3 = 3'h2 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_4 = io_a ^ io_b; // @[ALU.scala 17:28]
  wire  _T_5 = 3'h3 == io_fn; // @[Conditional.scala 37:30]
  wire [31:0] _T_6 = io_a * io_b; // @[ALU.scala 18:28]
  wire  _T_7 = 3'h4 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_8 = io_a / io_b; // @[ALU.scala 19:28]
  wire  _T_9 = 3'h5 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _GEN_7 = io_a % io_b; // @[ALU.scala 20:28]
  wire [15:0] _T_10 = _GEN_7[15:0]; // @[ALU.scala 20:28]
  wire  _T_11 = 3'h6 == io_fn; // @[Conditional.scala 37:30]
  wire [17:0] _T_12 = io_a * 16'h2; // @[ALU.scala 21:28]
  wire  _T_13 = 3'h7 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_15 = io_a - io_b; // @[ALU.scala 22:28]
  wire [15:0] _GEN_0 = _T_13 ? _T_15 : 16'h0; // @[Conditional.scala 39:67 ALU.scala 22:20 ALU.scala 13:8]
  wire [17:0] _GEN_1 = _T_11 ? _T_12 : {{2'd0}, _GEN_0}; // @[Conditional.scala 39:67 ALU.scala 21:20]
  wire [17:0] _GEN_2 = _T_9 ? {{2'd0}, _T_10} : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 20:20]
  wire [17:0] _GEN_3 = _T_7 ? {{2'd0}, _T_8} : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 19:20]
  wire [31:0] _GEN_4 = _T_5 ? _T_6 : {{14'd0}, _GEN_3}; // @[Conditional.scala 39:67 ALU.scala 18:20]
  wire [31:0] _GEN_5 = _T_3 ? {{16'd0}, _T_4} : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 17:20]
  wire [31:0] _GEN_6 = _T ? {{16'd0}, _T_2} : _GEN_5; // @[Conditional.scala 40:58 ALU.scala 16:20]
  assign io_y = _GEN_6[15:0];
  assign io_z = io_y == 16'h0; // @[ALU.scala 25:14]
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
module processor(
  input         clock,
  input         reset,
  input  [11:0] io_bin,
  output [6:0]  io_seven,
  output        io_z
);
  wire [15:0] ALU_io_a; // @[Processor.scala 15:19]
  wire [15:0] ALU_io_b; // @[Processor.scala 15:19]
  wire [2:0] ALU_io_fn; // @[Processor.scala 15:19]
  wire [15:0] ALU_io_y; // @[Processor.scala 15:19]
  wire  ALU_io_z; // @[Processor.scala 15:19]
  wire [3:0] Bin27_io_bin; // @[Processor.scala 16:21]
  wire [6:0] Bin27_io_seven; // @[Processor.scala 16:21]
  ALU ALU ( // @[Processor.scala 15:19]
    .io_a(ALU_io_a),
    .io_b(ALU_io_b),
    .io_fn(ALU_io_fn),
    .io_y(ALU_io_y),
    .io_z(ALU_io_z)
  );
  bin27 Bin27 ( // @[Processor.scala 16:21]
    .io_bin(Bin27_io_bin),
    .io_seven(Bin27_io_seven)
  );
  assign io_seven = Bin27_io_seven; // @[Processor.scala 24:12]
  assign io_z = ALU_io_z; // @[Processor.scala 21:8]
  assign ALU_io_a = {{12'd0}, io_bin[3:0]}; // @[Processor.scala 18:21]
  assign ALU_io_b = {{12'd0}, io_bin[7:4]}; // @[Processor.scala 19:21]
  assign ALU_io_fn = io_bin[10:8]; // @[Processor.scala 20:22]
  assign Bin27_io_bin = ALU_io_y[3:0]; // @[Processor.scala 23:16]
endmodule
