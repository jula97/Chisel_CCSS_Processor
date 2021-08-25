import chisel3._
import chisel3.util._


class Bus extends Module{
    val io = IO(new Bundle{
        val mux_out    = Input(UInt(15.W))
        val DRbufout   = Input(UInt(16.W))
        val ACbufout   = Input(UInt(16.W))
        val Membufout  = Input(UInt(24.W))
        val DMembufout = Input(UInt(16.W))
        val BusOut     = Output(UInt(24.W))
    })

    io.BusOut := (io.mux_out | io.DRbufout | io.ACbufout | io.Membufout | io.DMembufout)
}
