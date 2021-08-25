import chisel3._
import chisel3.util._

class Registers1 extends Module{
  val io = IO(new Bundle{
    val regIn = Input(UInt(16.W))
    val regWriteEnable = Input(UInt(1.W))
    val regOut = Output(UInt(16.W))
  })

  val registerOut = RegInit(0.U(16.W))

  when(io.regWriteEnable === 1.U){
    registerOut := io.regIn
  }

  io.regOut := registerOut

}

class Registers2 extends Module{
  val io = IO(new Bundle{
    val regIn = Input(UInt(16.W))
    val regInc = Input(UInt(1.W))
    val regWriteEnable = Input(UInt(1.W))
    val regOut = Output(UInt(16.W))
  })

  val registerOut = RegInit(0.U(16.W))

  when(io.regWriteEnable === 1.U){
    registerOut := io.regIn
  }.elsewhen(io.regInc === 1.U){
    registerOut := registerOut + 1.U
  }
  io.regOut := registerOut

}

class Registers3 extends Module{
  val io = IO(new Bundle{
    val regIn = Input(UInt(16.W))
    val regReset = Input(UInt(1.W))
    val regInc = Input(UInt(1.W))
    val regWriteEnable = Input(UInt(1.W))
    val regOut = Output(UInt(16.W))
  })

  val in = io.regIn
  val resetIn = io.regReset
  val inc = io.regInc
  val writeEnable = io.regWriteEnable

  val registerOut = RegInit(0.U(16.W))

  when(writeEnable === 1.U) {
      registerOut := in
    }.elsewhen(inc === 1.U){
      registerOut := registerOut + 1.U
    }.elsewhen(resetIn === 1.U){
      registerOut := 0.U
    }
  

  io.regOut := registerOut
}

class Registers4 extends Module{
  val io = IO(new Bundle{
    val regIn = Input(UInt(16.W))
    val regReset = Input(UInt(1.W))
    val regWriteEnable = Input(UInt(1.W))
    val regOut = Output(UInt(16.W))
  })
  
  val in = io.regIn
  val resetIn = io.regReset
  val writeEnable = io.regWriteEnable

  val registerOut = RegInit(0.U(16.W))

  when(writeEnable === 1.U) {
    registerOut := in
  }.elsewhen(resetIn === 1.U){
    registerOut := 0.U
  }

  io.regOut := registerOut
}




class RegisterALU extends Module{
  val io = IO(new Bundle{
    val regIn = Input(UInt(16.W))
    val alu_out = Input(UInt(16.W))
    val regReset = Input(UInt(1.W))
    val alu_write_en = Input(UInt(1.W))
    val regWriteEnable = Input(UInt(1.W))
    val regOut = Output(UInt(16.W))
  })

  val registerOut = RegInit(0.U(16.W))



  when(io.regWriteEnable === 1.U) {
    registerOut := io.regIn
  }.elsewhen(io.alu_write_en === 1.U){
    registerOut := io.alu_out
  }.elsewhen(io.regReset === 1.U){
    registerOut := 0.U
  }

  io.regOut := registerOut
}



object RegMain extends App {
  println("Generating the Demux hardware")
  (new chisel3.stage.ChiselStage).emitVerilog(new Registers3(), Array("--target-dir", "generated"))
//   (new chisel3.stage.ChiselStage).emitVerilog(new Memory(), Array("--target-dir", "generated"))
}