module Controller(
  input         clock,
  input         reset,
  input         io_z,
  input         io_rst,
  input  [5:0]  io_instruction_opcode,
  input  [15:0] io_NoC,
  output [24:0] io_ctrlSig,
  output        io_end_process
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] state; // @[Controller.scala 17:22]
  reg [24:0] ctrlSig; // @[Controller.scala 18:24]
  reg [5:0] opcode; // @[Controller.scala 20:23]
  wire  _T = 4'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_3 = 4'h3 == state; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_0 = opcode == 6'h4 ? 4'h4 : 4'he; // @[Controller.scala 44:35 Controller.scala 44:42 Controller.scala 45:27]
  wire [3:0] _GEN_1 = opcode == 6'h3 ? 4'hb : _GEN_0; // @[Controller.scala 43:35 Controller.scala 43:42]
  wire [3:0] _GEN_2 = opcode == 6'h2 ? 4'h6 : _GEN_1; // @[Controller.scala 42:35 Controller.scala 42:42]
  wire [3:0] _GEN_3 = opcode == 6'h1 ? 4'h5 : _GEN_2; // @[Controller.scala 41:29 Controller.scala 41:36]
  wire  _T_8 = 4'h5 == state; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h6 == state; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'h7 == state; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'h8 == state; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'h9 == state; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'ha == state; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'hb == state; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hc == state; // @[Conditional.scala 37:30]
  wire  _T_16 = 4'hd == state; // @[Conditional.scala 37:30]
  wire  _T_17 = 4'h4 == state; // @[Conditional.scala 37:30]
  wire  _T_18 = 4'he == state; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_4 = _T_18 ? 4'he : state; // @[Conditional.scala 39:67 Controller.scala 92:13 Controller.scala 17:22]
  wire [24:0] _GEN_5 = _T_18 ? 25'h38 : ctrlSig; // @[Conditional.scala 39:67 Controller.scala 93:15 Controller.scala 18:24]
  wire [3:0] _GEN_6 = _T_17 ? 4'h0 : _GEN_4; // @[Conditional.scala 39:67 Controller.scala 87:13]
  wire [24:0] _GEN_7 = _T_17 ? 25'h0 : _GEN_5; // @[Conditional.scala 39:67 Controller.scala 88:15]
  wire [3:0] _GEN_8 = _T_16 ? 4'h0 : _GEN_6; // @[Conditional.scala 39:67 Controller.scala 82:13]
  wire [24:0] _GEN_9 = _T_16 ? 25'h3f80 : _GEN_7; // @[Conditional.scala 39:67 Controller.scala 83:15]
  wire [3:0] _GEN_10 = _T_15 ? 4'hd : _GEN_8; // @[Conditional.scala 39:67 Controller.scala 78:13]
  wire [24:0] _GEN_11 = _T_15 ? 25'h0 : _GEN_9; // @[Conditional.scala 39:67 Controller.scala 79:15]
  wire [3:0] _GEN_12 = _T_14 ? 4'hc : _GEN_10; // @[Conditional.scala 39:67 Controller.scala 74:13]
  wire [24:0] _GEN_13 = _T_14 ? 25'h1800 : _GEN_11; // @[Conditional.scala 39:67 Controller.scala 75:15]
  wire [3:0] _GEN_14 = _T_13 ? 4'h0 : _GEN_12; // @[Conditional.scala 39:67 Controller.scala 69:13]
  wire [24:0] _GEN_15 = _T_13 ? 25'h4000 : _GEN_13; // @[Conditional.scala 39:67 Controller.scala 70:15]
  wire [3:0] _GEN_16 = _T_12 ? 4'ha : _GEN_14; // @[Conditional.scala 39:67 Controller.scala 65:13]
  wire [24:0] _GEN_17 = _T_12 ? 25'h20008 : _GEN_15; // @[Conditional.scala 39:67 Controller.scala 66:15]
  wire [3:0] _GEN_18 = _T_11 ? 4'h9 : _GEN_16; // @[Conditional.scala 39:67 Controller.scala 61:13]
  wire [24:0] _GEN_19 = _T_11 ? 25'h30080 : _GEN_17; // @[Conditional.scala 39:67 Controller.scala 62:15]
  wire [3:0] _GEN_20 = _T_10 ? 4'h8 : _GEN_18; // @[Conditional.scala 39:67 Controller.scala 57:13]
  wire [24:0] _GEN_21 = _T_10 ? 25'h300 : _GEN_19; // @[Conditional.scala 39:67 Controller.scala 58:15]
  wire [3:0] _GEN_22 = _T_9 ? 4'h7 : _GEN_20; // @[Conditional.scala 39:67 Controller.scala 53:13]
  wire [24:0] _GEN_23 = _T_9 ? 25'h800 : _GEN_21; // @[Conditional.scala 39:67 Controller.scala 54:15]
  wire [3:0] _GEN_24 = _T_8 ? 4'h0 : _GEN_22; // @[Conditional.scala 39:67 Controller.scala 48:13]
  wire [24:0] _GEN_25 = _T_8 ? 25'h8 : _GEN_23; // @[Conditional.scala 39:67 Controller.scala 49:15]
  wire [24:0] _GEN_26 = _T_3 ? 25'h4 : _GEN_25; // @[Conditional.scala 39:67 Controller.scala 40:15]
  wire [3:0] _GEN_27 = _T_3 ? _GEN_3 : _GEN_24; // @[Conditional.scala 39:67]
  assign io_ctrlSig = ctrlSig; // @[Controller.scala 22:14]
  assign io_end_process = 1'h0; // @[Controller.scala 23:18]
  always @(posedge clock) begin
    if (reset) begin // @[Controller.scala 17:22]
      state <= 4'h0; // @[Controller.scala 17:22]
    end else if (_T) begin // @[Conditional.scala 40:58]
      state <= 4'h1; // @[Controller.scala 28:13]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      state <= 4'h2; // @[Controller.scala 32:13]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      state <= 4'h3; // @[Controller.scala 36:13]
    end else begin
      state <= _GEN_27;
    end
    if (reset) begin // @[Controller.scala 18:24]
      ctrlSig <= 25'h0; // @[Controller.scala 18:24]
    end else if (_T) begin // @[Conditional.scala 40:58]
      ctrlSig <= 25'h1000; // @[Controller.scala 29:15]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      ctrlSig <= 25'h200; // @[Controller.scala 33:15]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      ctrlSig <= 25'h800000; // @[Controller.scala 37:15]
    end else begin
      ctrlSig <= _GEN_26;
    end
    if (reset) begin // @[Controller.scala 20:23]
      opcode <= 6'h0; // @[Controller.scala 20:23]
    end else begin
      opcode <= io_instruction_opcode; // @[Controller.scala 24:10]
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
  state = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  ctrlSig = _RAND_1[24:0];
  _RAND_2 = {1{`RANDOM}};
  opcode = _RAND_2[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
