import chisel3._
import chisel3.util._
import sun.text.resources.cldr.ta.FormatData_ta

class TickGenerator extends Module{
  val io = IO(new Bundle{
    val inClk = Input(UInt(1.W))
    val clkEn = Input(UInt(1.W))
    val maxScale = Input(SInt(10.W))
    val outTick = Output(UInt(1.W))
  })

  val N = io.maxScale
  val tick = WireDefault(0.U(1.W))
  val MAX = (N - 2.S)
  val counterReg = RegInit(MAX)

  when(io.clkEn === 1.U){
    counterReg := counterReg - 1.S
    tick := 0.U

    when(counterReg(9)) {
      counterReg := MAX
      tick := 1.U
    }
  }
  io.outTick := tick
}

object TickCounter extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new TickGenerator())
}