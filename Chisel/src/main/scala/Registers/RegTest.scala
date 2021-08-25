// import chisel3._
// // import sun.text.resources.cldr.ta.FormatData_ta

// class RegTest extends Module{
//   val io = IO(new Bundle{
//     val bin = Input(UInt(12.W))
//     val seven = Output(UInt(7.W))
//   })

//   val sumReg = Module(new Registers(3))
//   val Bin27 = Module(new bin27)

//   sumReg.io.regIn := io.bin(3,0)
//   sumReg.io.regReset := io.bin(4)
//   sumReg.io.regInc := io.bin(5)
//   sumReg.io.regWriteEnable := io.bin(6)

//   Bin27.io.bin := sumReg.io.regOut(3,0)
//   io.seven := Bin27.io.seven
// }

// object TestMain extends App {
//   (new chisel3.stage.ChiselStage).emitVerilog(new RegTest())
// }
