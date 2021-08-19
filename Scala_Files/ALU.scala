import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(16.W))
    val b = Input(UInt(16.W))
    val fn = Input(UInt(3.W))
    val y = Output(UInt(16.W))
    val z = Output(UInt(1.W))
  })

  io.y := 0.U

  switch(io.fn) {
    is(1.U) { io.y := io.a + io.b }
    is(2.U) { io.y := io.a ^ io.b }
    is(3.U) { io.y := io.a * io.b }
    is(4.U) { io.y := io.a / io.b }
    is(5.U) { io.y := io.a % io.b }
    is(6.U) { io.y := io.a * 2.U }
    is(7.U) { io.y := io.a - io.b }
  }

  when (io.y === 0.U){
    io.z := 1.U
  } .otherwise{
    io.z := 0.U
  }
}

