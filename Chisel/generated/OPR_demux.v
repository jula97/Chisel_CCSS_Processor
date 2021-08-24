module OPR_demux(
  input        clock,
  input        reset,
  input  [7:0] io_operand,
  input  [2:0] io_OPR_sel,
  output [7:0] io_WTR_operand,
  output [7:0] io_INC_operand,
  output [7:0] io_RESET_operand,
  output [7:0] io_WTA_operand
);
  wire  _T = 3'h0 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_2 = 3'h2 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h3 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_4 = 3'h4 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_1 = _T_4 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 50:29]
  wire [7:0] _GEN_2 = _T_3 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 43:29]
  wire [7:0] _GEN_3 = _T_3 ? 8'h0 : _GEN_1; // @[Conditional.scala 39:67 OPR_Demux.scala 44:29]
  wire [7:0] _GEN_5 = _T_2 ? 8'h0 : _GEN_2; // @[Conditional.scala 39:67 OPR_Demux.scala 37:29]
  wire [7:0] _GEN_6 = _T_2 ? 8'h0 : _GEN_3; // @[Conditional.scala 39:67 OPR_Demux.scala 38:29]
  wire [7:0] _GEN_8 = _T_2 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 40:29]
  wire [7:0] _GEN_9 = _T_1 ? 8'h0 : _GEN_5; // @[Conditional.scala 39:67 OPR_Demux.scala 31:29]
  wire [7:0] _GEN_10 = _T_1 ? 8'h0 : _GEN_6; // @[Conditional.scala 39:67 OPR_Demux.scala 32:29]
  wire [7:0] _GEN_11 = _T_1 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 33:29]
  wire [7:0] _GEN_12 = _T_1 ? 8'h0 : _GEN_8; // @[Conditional.scala 39:67 OPR_Demux.scala 34:29]
  assign io_WTR_operand = _T ? 8'h0 : _GEN_9; // @[Conditional.scala 40:58 OPR_Demux.scala 25:29]
  assign io_INC_operand = _T ? 8'h0 : _GEN_10; // @[Conditional.scala 40:58 OPR_Demux.scala 26:29]
  assign io_RESET_operand = _T ? 8'h0 : _GEN_11; // @[Conditional.scala 40:58 OPR_Demux.scala 27:29]
  assign io_WTA_operand = _T ? 8'h0 : _GEN_12; // @[Conditional.scala 40:58 OPR_Demux.scala 28:29]
endmodule
