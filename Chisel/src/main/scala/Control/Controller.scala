import chisel3._
import chisel3.util._

class Controller extends Module{
  val io = IO(new Bundle {
    val z = Input(UInt(1.W))
    val rst = Input(UInt(1.W))
    val instruction_opcode = Input(UInt(6.W))
    val NoC = Input(UInt(16.W))
    val ctrlSig = Output(UInt(25.W))
    val end_process = Output(UInt(1.W))
  })

//  val fetch1 :: fetch2 :: fetch3 :: fetch4 :: add1 :: add2 :: xor1 :: xor2 :: mul1 :: mul2 :: div1 :: div2 :: mod1 :: mod2 :: sub1 :: sub2 :: moveAC1 :: moveToAC1 :: inc1 :: reset1 :: jump1 :: jumpZY1 :: jumpZN1 :: clAC1 :: nop1 :: ldAC1 :: ldAC2 :: ldAC3 :: ldAC4 :: ldAC5 :: stAC1 :: stAC2 :: stAC3 :: stReg1 :: stReg2 :: stReg3 :: endOP :: Nil = Enum(39)
  val fetch1 :: fetch2 :: fetch3 :: fetch4 ::  jump1 ::  clAC1 :: ldAC1 :: ldAC2 :: ldAC3 :: ldAC4 :: ldAC5 :: stAC1 :: stAC2 :: stAC3 :: endOP :: Nil = Enum(15)

  val state = RegInit(fetch1)
  val ctrlSig = RegInit(0.U(25.W))
  val end_op = RegInit(0.U(1.W))
  val opcode = RegInit(0.U(6.W))

  io.ctrlSig := ctrlSig
  io.end_process := end_op
  opcode := io.instruction_opcode

  switch(state){
    is(fetch1) {
      state := fetch2
      ctrlSig := "b0000000000001000000000000".U
    }
    is(fetch2){
      state := fetch3
      ctrlSig := "b0000000000000001000000000".U
    }
    is(fetch3){
      state := fetch4
      ctrlSig := "b0100000000000000000000000".U
    }
    is(fetch4){
      ctrlSig := "b0000000000000000000000100".U
      when (opcode === 1.U) {state := clAC1}
        .elsewhen(opcode === 2.U) {state := ldAC1}
        .elsewhen(opcode === 3.U) {state := stAC1}
        .elsewhen(opcode === 4.U) {state := jump1}
        .otherwise {state := endOP}
    }
    is(clAC1){
      state := fetch1
      ctrlSig := "b0000000000000000000001000".U
    }

    is(ldAC1){
      state := ldAC2
      ctrlSig := "b0000000000000100000000000".U
    }
    is(ldAC2){
      state := ldAC3
      ctrlSig := "b0000000000000001100000000".U
    }
    is(ldAC3){
      state := ldAC4
      ctrlSig := "b000000110000000010000000".U
    }
    is(ldAC4){
      state := ldAC5
      ctrlSig := "b0000000100000000000001000".U
    }
    is(ldAC5){
      state := fetch1
      ctrlSig := "b0000000000100000000000000".U
    }

    is(stAC1){
      state := stAC2
      ctrlSig := "b0000000000001100000000000".U
    }
    is(stAC2){
      state := stAC3
      ctrlSig := "b0000000000000000000000000".U
    }
    is(stAC3){
      state := fetch1
      ctrlSig := "b0000000000011111110000000".U
    }

    is(jump1){
      state := fetch1
      ctrlSig := "b0000000000000000000000000".U
    }

    is(endOP){
      state := endOP
      ctrlSig := "b0000000000000000000111000".U
    }
  }

}

object ControlMain extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Controller(), Array("--target-dir", "generated"))
}