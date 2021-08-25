module RegisterALU(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input  [15:0] io_alu_out,
  input         io_regReset,
  input         io_alu_write_en,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 60:28]
  assign io_regOut = registerOut; // @[Registers.scala 72:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 60:28]
      registerOut <= 16'h0; // @[Registers.scala 60:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 64:35]
      registerOut <= io_regIn; // @[Registers.scala 65:17]
    end else if (io_alu_write_en) begin // @[Registers.scala 66:39]
      registerOut <= io_alu_out; // @[Registers.scala 67:17]
    end else if (io_regReset) begin // @[Registers.scala 68:35]
      registerOut <= 16'h0; // @[Registers.scala 69:17]
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
