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
  assign io_ctrlSig = 25'h0; // @[Controller.scala 22:14]
  assign io_end_process = 1'h0; // @[Controller.scala 23:18]
endmodule
