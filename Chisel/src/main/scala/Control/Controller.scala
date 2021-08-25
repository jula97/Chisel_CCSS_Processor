import chisel3._
import chisel3.util._

class Controller extends Module{
  val io = IO(new Bundle {
    val z = Input(UInt(1.W))
    // val rst = Input(UInt(1.W))
    val instruction_opcode = Input(UInt(6.W))
    // val NoC = Input(UInt(16.W))
    val ctrlsig = Output(UInt(25.W))
    val end_process = Output(UInt(1.W))
  })

  // val fetch1 :: fetch2 :: fetch3 :: fetch4 :: add1 :: add2 :: xor1 :: xor2 :: mul1 :: mul2 :: div1 :: div2 :: mod1 :: mod2 :: sub1 :: sub2 :: moveac1 :: moveToac1 :: inc1 :: reset1 :: jump1 :: jumpZY1 :: jumpZN1 :: clac1 :: nop1 :: ldac1 :: ldac2 :: ldac3 :: ldac4 :: ldac5 :: stac1 :: stac3 :: stReg1 :: stReg2 :: stReg3 :: endOP :: Nil = Enum(37)
  // val fetch1 :: fetch2 :: fetch3 :: fetch4 ::  jump1 ::  clac1 :: ldac1 :: ldac2 :: ldac3 :: ldac4 :: ldac5 :: stac1 :: stac2 :: stac3 :: ldacreg1 :: ldacreg2 :: ldacreg3 :: ldacreg4 :: ldacreg5 :: endOP :: Nil = Enum(20)
  val fetch1     = 0.U 
  val fetch2     = 1.U 
  val fetch3     = 2.U
  val fetch4     = 3.U

  val add1       = 5.U
  val add2       = 6.U

  val xor1       = 8.U
  val xor2       = 9.U

  val mul1       = 11.U
  val mul2       = 12.U

  val ldac1      = 14.U
  val ldac2      = 15.U
  val ldac3      = 16.U
  val ldac4      = 17.U
  val ldac5      = 18.U

  val moveac1    = 20.U

  val movetoac1  = 22.U

  val div1       = 24.U
  val div2       = 25.U

  val mod1       = 27.U
  val mod2       = 28.U

  val inc1       = 32.U

  val reset1     = 34.U

  val stac1      = 36.U
  val stac2      = 37.U
  val stac3      = 38.U

  val jump1      = 40.U

  val jumpzy1    = 42.U

  val jumpzn1    = 44.U
  val clac1      = 45.U
  val nop1       = 46.U
  val ldacreg1   = 47.U
  val ldacreg2   = 48.U
  val ldacreg3   = 49.U
  val ldacreg4   = 50.U
  val ldacreg5   = 51.U

  val stacreg1   = 53.U
  val stacreg2   = 54.U
  val stacreg3   = 55.U

  val endOP      = 57.U






  val state = RegInit(0.U(6.W))
  val ctrlsig = WireInit(0.U(25.W))
  // val end_op = WireInit(0.U(1.W))
  

  io.ctrlsig := ctrlsig
  io.end_process := 0.U
  val opcode = io.instruction_opcode
  val z = io.z

  switch(state){
    is(fetch1) {
      state := fetch2
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(fetch2){
      state := fetch3
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(fetch3){
      state := fetch4
      ctrlsig := "b00_0001_1000_000_0001_000_01000".U
    }
    is(fetch4){
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
      when (opcode === 1.U) {state := clac1}
        .elsewhen(opcode === 2.U) {state := ldac1}
        .elsewhen(opcode === 3.U) {state := stac1}
        .elsewhen(opcode === 4.U) {state := jump1}
        .elsewhen(opcode === 5.U) {state := moveac1}
        .elsewhen(opcode === 6.U) {state := movetoac1}
        .elsewhen(opcode === 7.U) {state := add1}
        .elsewhen(opcode === 8.U) {state := xor1}
        .elsewhen(opcode === 9.U) {state := mul1}
        .elsewhen(opcode === 10.U) {state := div1}   
        .elsewhen(opcode === 11.U) {state := mod1}  
        .elsewhen(opcode === 12.U) {state := fetch1} 
        .elsewhen(opcode === 13.U) {state := inc1}   
        .elsewhen(opcode === 14.U) {state := reset1}
        .elsewhen(opcode === 15.U) {state := nop1}   
        .elsewhen(opcode === 16.U & z === 1.U ) {state := jumpzy1}
        .elsewhen(opcode === 16.U & z === 0.U ) {state := jumpzn1}   
        .elsewhen(opcode === 17.U) {state := ldacreg1}   
        .elsewhen(opcode === 18.U) {state := stacreg1}          
        .otherwise {state := endOP}
    }	

    is(add1){
      state := add2
      ctrlsig := "b00_0000_0000_001_0010_010_00000".U
    }
    is(add2){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_1010_010_00000".U
    }

    is(xor1){
      state := xor2
      ctrlsig := "b00_0000_0000_010_0010_010_00000".U
    }
    is(xor2){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_1010_010_00000".U
    }

    is(mul1){
      state := mul2
      ctrlsig := "b00_0000_0000_011_0010_010_00000".U
    }
    is(mul2){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_1010_010_00000".U
    }

    is(ldac1){
      state := ldac2
      ctrlsig := "b00_0100_0100_000_0000_000_00000".U
    }
    is(ldac2){
      state := ldac3
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(ldac3){
      state := ldac4
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(ldac4){
      state := ldac5
      ctrlsig := "b00_0000_0010_000_0000_000_01000".U
    }
    is(ldac5){
      state := fetch1
      ctrlsig := "b00_0100_0000_000_0100_000_00000".U
    }
        
    is(moveac1){
      state := fetch1
      ctrlsig := "b00_0010_0000_000_0000_011_00100".U
    }

    is(movetoac1){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_0110_010_00000".U
    }

    is(div1){
      state := div2
      ctrlsig := "b00_0000_0000_100_0010_010_00000".U
    }
    is(div2){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_1010_010_00000".U
    }
    is(mod1){
      state := mod2
      ctrlsig := "b00_0000_0000_101_0010_010_00000".U
    }
    is(mod2){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_1010_010_00000".U
    }
    is(inc1){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_0000_100_00001".U
    }
    is(reset1){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_0000_001_00010".U
    }
    is(stac1){
      state := stac2
      ctrlsig := "b00_0100_0100_000_0000_000_00000".U
    }
    is(stac2){
      state := stac3
      ctrlsig := "b00_0010_0001_000_0000_000_01000".U
    }
    is(stac3){
      state := fetch1
      ctrlsig := "b00_0000_0001_000_0000_000_00000".U
    }
    is(nop1){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(clac1){
      state := fetch1
      ctrlsig := "b00_1000_0000_000_0000_000_00000".U
    }
    is(jump1){
      state := fetch1
      ctrlsig := "b00_0100_0000_000_0000_000_10000".U
    }
    is(jumpzy1){
      state := fetch1
      ctrlsig := "b00_0100_0000_000_0000_000_10000".U
    }
    is(jumpzn1){
      state := fetch1
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(ldacreg1){
      state := ldacreg2
      ctrlsig := "b00_0000_0100_000_0010_010_00000".U
    }
    is(ldacreg2){
      state := ldacreg3
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(ldacreg3){
      state := ldacreg4
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }
    is(ldacreg4){
      state := ldacreg5
      ctrlsig := "b00_0000_0010_000_0000_000_01000".U
    }
    is(ldacreg5){
      state := fetch1
      ctrlsig := "b00_0100_0000_000_0100_000_00000".U
    }
    is(stacreg1){
      state := stacreg2
      ctrlsig := "b00_0000_0100_000_0010_010_00000".U
    }
    is(stacreg2){
      state := stacreg3
      ctrlsig := "b00_0010_0001_000_0000_000_01000".U
    }
    is(stacreg3){
      state := fetch1
      ctrlsig := "b00_0000_0001_000_0000_000_00000".U
    }
    is(endOP){
      state := endOP
      io.end_process := 1.U
      ctrlsig := "b00_0000_0000_000_0000_000_00000".U
    }    
  }

}

object ControlMain extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Controller(), Array("--target-dir", "generated"))
}