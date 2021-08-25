import chisel3._
import chisel3.util._

class ClockScaler extends Module{
  val io = IO(new Bundle{
    val clkEn   = Input(Bool())
    val outClk  = Output(UInt(1.W))
  })

  val counterReg    = RegInit(0.U(32.W))
  val maxbit        = 1.U
  val outClk        = RegInit(0.U(1.W))
  
  when(io.clkEn){
    when(counterReg(maxbit) === 1.U ){
      counterReg    := 0.U
      outClk        := ~outClk
    }.otherwise{
        counterReg  := counterReg + 1.U
    }
  }

  io.outClk := outClk  
}

object ClockScalerMain extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new ClockScaler(),Array("--target-dir", "generated"))
}