import chisel3._
import chisel3.util._

class OPR_demux extends  Module{
    val io = IO(new Bundle{
        val operand = Input(UInt(8.W))
        val OPR_sel = Input(UInt(3.W))
        

        val WTR_operand     = Output(UInt(8.W))
        val INC_operand     = Output(UInt(8.W))
        val RESET_operand   = Output(UInt(8.W))
        val WTA_operand     = Output(UInt(8.W))
    })


    val WTR_operand     = WireInit(0.U(8.W))
    val INC_operand     = WireInit(0.U(8.W))
    val RESET_operand   = WireInit(0.U(8.W))
    val WTA_operand     = WireInit(0.U(8.W))


    switch(io.OPR_sel){
        is(0.U){
            WTR_operand     := 0.U
            INC_operand     := 0.U
            RESET_operand   := 0.U
            WTA_operand     := 0.U
        }
        is(1.U){
            WTR_operand     := 0.U
            INC_operand     := 0.U
            RESET_operand   := io.operand
            WTA_operand     := 0.U
        }
        is(2.U){
            WTR_operand     := 0.U
            INC_operand     := 0.U
            RESET_operand   := 0.U
            WTA_operand     := io.operand
        }
        is(3.U){
            WTR_operand     := io.operand
            INC_operand     := 0.U
            RESET_operand   := 0.U
            WTA_operand     := 0.U
        }
        is(4.U){
            WTR_operand     := 0.U
            INC_operand     := io.operand
            RESET_operand   := 0.U
            WTA_operand     := 0.U
        }
    }

    io.WTA_operand := WTA_operand
    io.INC_operand := INC_operand
    io.RESET_operand := RESET_operand
    io.WTR_operand := WTR_operand
    
}

