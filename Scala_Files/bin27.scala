import chisel3._
import chisel3.util._

class bin27 extends Module {
  val io = IO(new Bundle{
    val bin = Input(UInt(4.W))
    val seven = Output(UInt(7.W))
  })

  val sel = io.bin
  val dec = WireDefault(0.U(7.W))

  switch (sel) {
    is (0.U) { dec := "hC0".U}
    is (1.U) { dec := "hF9".U}
    is (2.U) { dec := "hA4".U}
    is (3.U) { dec := "hB0".U}
    is (4.U) { dec := "h99".U}
    is (5.U) { dec := "h92".U}
    is (6.U) { dec := "h82".U}
    is (7.U) { dec := "hF8".U}
    is (8.U) { dec := "h80".U}
    is (9.U) { dec := "h90".U}
    is (10.U) { dec := "h88".U}
    is (11.U) { dec := "h83".U}
    is (12.U) { dec := "hC6".U}
    is (13.U) { dec := "hA1".U}
    is (14.U) { dec := "h86".U}
    is (15.U) { dec := "h8E".U}
  }

  io.seven := dec
}

