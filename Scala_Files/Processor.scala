import chisel3._
import sun.text.resources.cldr.ta.FormatData_ta

class processor extends Module {
  val io = IO(new Bundle {
    val bin = Input(UInt(12.W))
//    val bin1 = Input(UInt(4.W))
//    val bin2 = Input(UInt(3.W))
    //val en = Input(UInt(1.W))
    //val decOut = Output(UInt(15.W))
    val seven = Output(UInt(7.W))
    val z = Output(UInt(1.W))
  })

  val ALU = Module(new ALU)
  val Bin27 = Module(new bin27)

  ALU.io.a := io.bin(3,0)
  ALU.io.b := io.bin(7,4)
  ALU.io.fn := io.bin(10,8)
  io.z := ALU.io.z

  Bin27.io.bin := ALU.io.y
  io.seven := Bin27.io.seven
}

object HelloMain extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new processor())
}
