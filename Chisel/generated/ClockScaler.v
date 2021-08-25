module ClockScaler(
  input   clock,
  input   reset,
  input   io_clkEn,
  output  io_outClk
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] counterReg; // @[TickGenerator.scala 10:30]
  reg  outClk; // @[TickGenerator.scala 12:30]
  wire [31:0] _T = {{16'd0}, counterReg[31:16]}; // @[TickGenerator.scala 15:20]
  wire [31:0] _T_5 = counterReg + 32'h1; // @[TickGenerator.scala 19:35]
  assign io_outClk = outClk; // @[TickGenerator.scala 23:13]
  always @(posedge clock) begin
    if (reset) begin // @[TickGenerator.scala 10:30]
      counterReg <= 32'h0; // @[TickGenerator.scala 10:30]
    end else if (io_clkEn) begin // @[TickGenerator.scala 14:17]
      if (_T[0]) begin // @[TickGenerator.scala 15:38]
        counterReg <= 32'h0; // @[TickGenerator.scala 16:21]
      end else begin
        counterReg <= _T_5; // @[TickGenerator.scala 19:21]
      end
    end
    if (reset) begin // @[TickGenerator.scala 12:30]
      outClk <= 1'h0; // @[TickGenerator.scala 12:30]
    end else if (io_clkEn) begin // @[TickGenerator.scala 14:17]
      if (_T[0]) begin // @[TickGenerator.scala 15:38]
        outClk <= ~outClk; // @[TickGenerator.scala 17:21]
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
  counterReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  outClk = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
