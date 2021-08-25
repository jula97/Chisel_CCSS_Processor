import chisel3._
import chisel3.util._

class WTA_mux extends  Module{
    val io = IO(new Bundle {
      val sel       = Input(UInt(4.W))
      val en        = Input(Bool())
      val muxOut    = Output(UInt(16.W))
      val wta_N     = Input(UInt(16.W))
      val wta_M     = Input(UInt(16.W))
      val wta_P     = Input(UInt(16.W))
      val wta_R1    = Input(UInt(16.W))
      val wta_ROW   = Input(UInt(16.W))
      val wta_COL   = Input(UInt(16.W))
      val wta_CURR  = Input(UInt(16.W))
      val wta_SUM   = Input(UInt(16.W))
      val wta_STA   = Input(UInt(16.W))
      val wta_STB   = Input(UInt(16.W))
      val wta_STC   = Input(UInt(16.W))
      val wta_A     = Input(UInt(16.W))
      val wta_B     = Input(UInt(16.W))
      val wta_R     = Input(UInt(16.W))
      val wta_CoreID = Input(UInt(16.W))
    })

  val sel = io.sel
  val en  = io.en


 val muxOut = WireInit(0.U(16.W))
 when(io.en){
  muxOut := MuxLookup(sel, 0.U,
    Array(
      1.U -> io.wta_N,
      2.U -> io.wta_M,
      3.U -> io.wta_P,
      4.U -> io.wta_R1,
      5.U -> io.wta_ROW,
      6.U -> io.wta_COL,
      7.U -> io.wta_CURR,
      8.U -> io.wta_SUM,
      9.U -> io.wta_STA,
      10.U -> io.wta_STB,
      11.U -> io.wta_STC,
      12.U -> io.wta_A,
      13.U -> io.wta_B,
      14.U -> io.wta_R,
      15.U -> io.wta_CoreID
    ))
 }

  io.muxOut := muxOut

}

