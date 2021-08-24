import chisel3._
import chisel3.util._

class Decoders(inL: Int, outL: Int, typeL: Int ) extends Module {
  val io = IO(new Bundle {
    val bin = Input(UInt(inL.W))
    val en = Input(UInt(1.W))
    val decOut = Output(UInt(outL.W))
  })

  val sel = io.bin
  val enable = io.en
  val dec = WireDefault(0.U(outL.W))

  /*
  WTR DECODER
  Module(new Decoders(4,15,1))
	wtr_N    = decoder_out[0];
	wtr_M	 = decoder_out[1];
  wtr_P    = decoder_out[2];
  wtr_R1   = decoder_out[3];
	wtr_ROW  = decoder_out[4];
	wtr_COL  = decoder_out[5];
	wtr_CURR = decoder_out[6];
	wtr_SUM  = decoder_out[7];
	wtr_STA	 = decoder_out[8];
  wtr_STB  = decoder_out[9];
	wtr_STC  = decoder_out[10];
	wtr_A    = decoder_out[11];
	wtr_B    = decoder_out[12];
	wtr_R    = decoder_out[13];
  wtr_CoreID = decoder_out[14];
  */
  if (typeL == 1) {
    when(enable === 1.U) {
      switch(sel) {
        is(1.U) {
          dec := "b000000000000001".U
        }
        is(2.U) {
          dec := "b000000000000010".U
        }
        is(3.U) {
          dec := "b000000000000100".U
        }
        is(4.U) {
          dec := "b000000000001000".U
        }
        is(5.U) {
          dec := "b000000000010000".U
        }
        is(6.U) {
          dec := "b000000000100000".U
        }
        is(7.U) {
          dec := "b000000001000000".U
        }
        is(8.U) {
          dec := "b000000010000000".U
        }
        is(9.U) {
          dec := "b000000100000000".U
        }
        is(10.U) {
          dec := "b000001000000000".U
        }
        is(11.U) {
          dec := "b000010000000000".U
        }
        is(12.U) {
          dec := "b000100000000000".U
        }
        is(13.U) {
          dec := "b001000000000000".U
        }
        is(14.U) {
          dec := "b010000000000000".U
        }
        is(15.U) {
          dec := "b100000000000000".U
        }
      }
    }
    io.decOut := dec
  }

  /*
  INC DECODER
  Module(new Decoders(7,7,2))
  inc_ROW  = decoder_out[0];
	inc_COL  = decoder_out[1];
	inc_CURR = decoder_out[2];
	inc_STA  = decoder_out[3];
	inc_STB  = decoder_out[4];
	inc_STC  = decoder_out[5];
	inc_R1	 = decoder_out[6];
  */
  if (typeL == 2) {
    when(enable === 1.U) {
      dec := sel
    }
    io.decOut := dec
  }

  /*
  RST DECODER
  Module(new Decoders(4,4,3))
  rst_ROW  = decoder_out[0];
	rst_COL  = decoder_out[1];
	rst_CURR = decoder_out[2];
	rst_SUM  = decoder_out[3];
  */
  if (typeL == 3) {
    when(enable === 1.U) {
      dec := sel
    }
    io.decOut := dec
  }
}
