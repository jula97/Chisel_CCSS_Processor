import chisel3._
import chisel3.util._

class Registers(typeL: Int) extends Module{
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

  if (typeL == 1){
    when(writeEnable === 1.U){
      registerOut := in
    }
  }

  else if (typeL == 2){
    when(writeEnable === 1.U) {
      registerOut := in
    } .elsewhen(inc === 1.U){
        registerOut := registerOut + 1.U
    }
  }

  else if (typeL == 3){
    when(writeEnable === 1.U) {
      registerOut := in
    } .elsewhen(inc === 1.U){
      registerOut := registerOut + 1.U
    } .elsewhen(resetIn === 1.U){
      registerOut := 0.U
    }
  }

  io.regOut := registerOut

}
