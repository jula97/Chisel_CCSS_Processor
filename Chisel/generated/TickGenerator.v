module TickGenerator(
  input        clock,
  input        reset,
  input        io_inClk,
  input        io_clkEn,
  input  [9:0] io_maxScale,
  output       io_outTick
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] MAX = $signed(io_maxScale) - 10'sh2; // @[TickGenerator.scala 14:16]
  reg [9:0] counterReg; // @[TickGenerator.scala 15:27]
  wire [9:0] _T_5 = $signed(counterReg) - 10'sh1; // @[TickGenerator.scala 18:30]
  assign io_outTick = io_clkEn & counterReg[9]; // @[TickGenerator.scala 17:25]
  always @(posedge clock) begin
    if (reset) begin // @[TickGenerator.scala 15:27]
      counterReg <= MAX; // @[TickGenerator.scala 15:27]
    end else if (io_clkEn) begin // @[TickGenerator.scala 17:25]
      if (counterReg[9]) begin // @[TickGenerator.scala 21:25]
        counterReg <= MAX; // @[TickGenerator.scala 22:18]
      end else begin
        counterReg <= _T_5; // @[TickGenerator.scala 18:16]
      end
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
  counterReg = _RAND_0[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
