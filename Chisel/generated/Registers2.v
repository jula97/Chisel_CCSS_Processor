module Registers2(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regInc,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 29:28]
  wire [15:0] _T_3 = registerOut + 16'h1; // @[Registers.scala 34:32]
  assign io_regOut = registerOut; // @[Registers.scala 36:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 29:28]
      registerOut <= 16'h0; // @[Registers.scala 29:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 31:34]
      registerOut <= io_regIn; // @[Registers.scala 32:17]
    end else if (io_regInc) begin // @[Registers.scala 33:32]
      registerOut <= _T_3; // @[Registers.scala 34:17]
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
