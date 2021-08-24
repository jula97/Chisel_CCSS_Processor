
import chisel3._
import chisel3.util._



object DemuxMain extends App {
  println("Generating the Demux hardware")
  (new chisel3.stage.ChiselStage).emitVerilog(new OPR_demux(), Array("--target-dir", "generated"))
//   (new chisel3.stage.ChiselStage).emitVerilog(new Memory(), Array("--target-dir", "generated"))
}


