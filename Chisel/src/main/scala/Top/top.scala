import chisel3._
import chisel3.util._



class Top extends Module{
  val io = IO(new Bundle{
    val ImemOut  = Input(UInt(24.W))
    val ImemAddr = Output(UInt(16.W))
    val DmemOut  = Input(UInt(16.W))
    val DmemAddr  = Output(UInt(16.W))
    val DmemIn    = Output(UInt(16.W))
    val DmemWrtEn    = Output(UInt(1.W))
    val end_process = Output(UInt(1.W))
  })
  
  val ctrlsig     = WireInit(0.U(25.W))
  val ins         = WireInit(0.U(6.W))
  
  //internal register wires
  val CoreIDout   = WireInit(0.U(16.W))
  val IRout       = WireInit(0.U(16.W))
  val ARout       = WireInit(0.U(16.W))
  val PCout       = WireInit(0.U(16.W))
  val DRout       = WireInit(0.U(16.W))
  val ACout       = WireInit(0.U(16.W))

  //register wires
  val Nout        = WireInit(0.U(16.W))
  val Mout        = WireInit(0.U(16.W))
  val Pout        = WireInit(0.U(16.W))
  val R1out       = WireInit(0.U(16.W))
  val ROWout      = WireInit(0.U(16.W))
  val COLout      = WireInit(0.U(16.W))
  val CURRout     = WireInit(0.U(16.W))
  val SUMout      = WireInit(0.U(16.W))
  val STAout      = WireInit(0.U(16.W))
  val STBout      = WireInit(0.U(16.W))
  val STCout      = WireInit(0.U(16.W))
  val Aout        = WireInit(0.U(16.W))
  val Bout        = WireInit(0.U(16.W))
  val Rout        = WireInit(0.U(16.W))
  
  //buffer outputs
  val ACbufout    = WireInit(0.U(16.W))
  val Membufout   = WireInit(0.U(24.W))
  val DMembufout  = WireInit(0.U(16.W))
  val DRbufout    = WireInit(0.U(16.W))

  //OPR Demux Wires
  val WTR         = WireInit(0.U(8.W))    //OPR = 011
  val INC         = WireInit(0.U(8.W))    //OPR = 100
  val RESET       = WireInit(0.U(8.W))    //OPR = 001
  val WTA         = WireInit(0.U(8.W))    //OPR = 010

  //INC Decoder
  val row_INC     = WireInit(0.U(1.W))    //DR  = 1
  val col_INC     = WireInit(0.U(1.W))    //DR  = 2
  val curr_INC    = WireInit(0.U(1.W))    //DR  = 4
  val sta_INC     = WireInit(0.U(1.W))    //DR  = 8
  val stb_INC     = WireInit(0.U(1.W))    //DR  = 16
  val stc_INC     = WireInit(0.U(1.W))    //DR  = 32
  val r1_INC      = WireInit(0.U(1.W))    //DR  = 64 
  
  //RESET Decoder
  val row_RST     = WireInit(0.U(1.W))    //DR  = 1 
  val col_RST     = WireInit(0.U(1.W))    //DR  = 2   
  val curr_RST    = WireInit(0.U(1.W))    //DR  = 3
  val sum_RST     = WireInit(0.U(1.W))    //DR  = 8 
  
  //WTR Decoder
  val wrt_n       = WireInit(0.U(1.W))    //DR  = 1
  val wrt_m       = WireInit(0.U(1.W))    //DR  = 2
  val wrt_p       = WireInit(0.U(1.W))    //DR  = 3
  val wrt_r1      = WireInit(0.U(1.W))    //DR  = 4
  val wrt_row     = WireInit(0.U(1.W))    //DR  = 5
  val wrt_col     = WireInit(0.U(1.W))    //DR  = 6
  val wrt_curr    = WireInit(0.U(1.W))    //DR  = 7
  val wrt_sum     = WireInit(0.U(1.W))    //DR  = 8
  val wrt_sta     = WireInit(0.U(1.W))    //DR  = 9
  val wrt_stb     = WireInit(0.U(1.W))    //DR  = 10
  val wrt_stc     = WireInit(0.U(1.W))    //DR  = 11
  val wrt_a       = WireInit(0.U(1.W))    //DR  = 12
  val wrt_b       = WireInit(0.U(1.W))    //DR  = 13
  val wrt_r       = WireInit(0.U(1.W))    //DR  = 14
  val wrt_CoreID  = WireInit(0.U(1.W))    //DR  = 15
  
  //misc wires
  val bus         = WireInit(0.U(24.W))
  val memout      = WireInit(0.U(24.W))
  val Dmemout     = WireInit(0.U(16.W))
  val mux_out     = WireInit(0.U(16.W)) 
  val ALU_out     = WireInit(0.U(16.W))
  val z_in        = WireInit(0.U(1.W))
  val z_out       = WireInit(0.U(1.W))




  memout        := io.ImemOut
  io.ImemAddr   := PCout

  io.DmemAddr   := ARout
  io.DmemIn     := DRout
  Dmemout       := io.DmemOut
  io.DmemWrtEn  := ctrlsig(15)




  val CU          = Module(new Controller)
    CU.io.z                     := z_out
    CU.io.instruction_opcode    := IRout(5,0)
    ctrlsig                     := CU.io.ctrlsig 
    io.end_process              := CU.io.end_process

  //ALU
  val ALU         = Module(new ALU)
    ALU.io.a                := ACout
    ALU.io.b                := bus(15,0)
    ALU.io.fn               := ctrlsig(14,12)
    ALU_out                 := ALU.io.y 
    z_in                    := ALU.io.z
    

  //Combinational Blocks
  val INC_Decoder =  Module(new Decoders(7,7,2))
    INC_Decoder.io.bin      := INC(6,0)
    INC_Decoder.io.en       := ctrlsig(0)
    row_INC                 := INC_Decoder.io.decOut(0)
    col_INC                 := INC_Decoder.io.decOut(1)
    curr_INC                := INC_Decoder.io.decOut(2)
    sta_INC                 := INC_Decoder.io.decOut(3)
    stb_INC                 := INC_Decoder.io.decOut(4)
    stc_INC                 := INC_Decoder.io.decOut(5)
    r1_INC                  := INC_Decoder.io.decOut(6)
  
  val RST_Decoder =  Module(new Decoders(4,4,3))
    RST_Decoder.io.bin      := RESET(3,0)
    RST_Decoder.io.en       := ctrlsig(1)
    row_RST                 := RST_Decoder.io.decOut(0)
    col_RST                 := RST_Decoder.io.decOut(1)
    curr_RST                := RST_Decoder.io.decOut(2)
    sum_RST                 := RST_Decoder.io.decOut(3)

  val WTR_Decoder =  Module(new Decoders(4,15,1))
    WTR_Decoder.io.bin      := WTR(3,0)
    WTR_Decoder.io.en       := ctrlsig(2)
    wrt_n                   := WTR_Decoder.io.decOut(0)
    wrt_m                   := WTR_Decoder.io.decOut(1)
    wrt_p                   := WTR_Decoder.io.decOut(2)
    wrt_r1                  := WTR_Decoder.io.decOut(3)
    wrt_row                 := WTR_Decoder.io.decOut(4)
    wrt_col                 := WTR_Decoder.io.decOut(5)
    wrt_curr                := WTR_Decoder.io.decOut(6)
    wrt_sum                 := WTR_Decoder.io.decOut(7)
    wrt_sta                 := WTR_Decoder.io.decOut(8)
    wrt_stb                 := WTR_Decoder.io.decOut(9)
    wrt_stc                 := WTR_Decoder.io.decOut(10)
    wrt_a                   := WTR_Decoder.io.decOut(11)
    wrt_b                   := WTR_Decoder.io.decOut(12)
    wrt_r                   := WTR_Decoder.io.decOut(13)
    wrt_CoreID              := WTR_Decoder.io.decOut(14)
    
  val OPR_Demux   =  Module(new OPR_demux)
    OPR_Demux.io.operand        := DRout(7,0)
    OPR_Demux.io.OPR_sel        := ctrlsig(7,5)
    WTR                         := OPR_Demux.io.WTR_operand
    INC                         := OPR_Demux.io.INC_operand
    RESET                       := OPR_Demux.io.RESET_operand
    WTA                         := OPR_Demux.io.WTA_operand
  
  val WTA_Mux     =  Module(new WTA_mux)
  WTA_Mux.io.sel               := WTA(3,0)
  WTA_Mux.io.en                := ctrlsig(9)
  WTA_Mux.io.wta_N             := Nout
  WTA_Mux.io.wta_M             := Mout
  WTA_Mux.io.wta_P             := Pout
  WTA_Mux.io.wta_R1            := R1out
  WTA_Mux.io.wta_ROW           := ROWout
  WTA_Mux.io.wta_COL           := COLout
  WTA_Mux.io.wta_CURR          := CURRout
  WTA_Mux.io.wta_SUM           := SUMout
  WTA_Mux.io.wta_STA           := STAout
  WTA_Mux.io.wta_STB           := STBout
  WTA_Mux.io.wta_STC           := STCout
  WTA_Mux.io.wta_A             := Aout
  WTA_Mux.io.wta_B             := Bout
  WTA_Mux.io.wta_R             := Rout
  WTA_Mux.io.wta_CoreID        := CoreIDout
  mux_out                   := WTA_Mux.io.muxOut   

  //BUS
  val BUS = Module(new Bus)
  
  BUS.io.mux_out      := mux_out 
  BUS.io.DRbufout     := DRbufout
  BUS.io.ACbufout     := ACbufout
  BUS.io.Membufout    := Membufout
  BUS.io.DMembufout   := DMembufout
  bus                 := BUS.io.BusOut

  //internal registers
  // val reg_CoreID = Module(new Registers(1))

  val reg_IR     = Module(new Registers1)
    reg_IR.io.regIn          := bus(23,16)
    reg_IR.io.regWriteEnable := ctrlsig(18)
    IRout                    := reg_IR.io.regOut

  val reg_AR     = Module(new Registers1)
    reg_AR.io.regIn          := bus(15,0)
    reg_AR.io.regWriteEnable := ctrlsig(17)
    ARout                    := reg_AR.io.regOut

  val reg_PC     = Module(new Registers3)
    reg_PC.io.regIn          := bus(15,0)
    reg_PC.io.regWriteEnable := ctrlsig(4)
    reg_PC.io.regInc         := ctrlsig(19)
    reg_PC.io.regReset       := ctrlsig(23)
    PCout                    := reg_PC.io.regOut
    
  val reg_DR     = Module(new Registers1)
    reg_DR.io.regIn          := bus(15,0)
    reg_DR.io.regWriteEnable := ctrlsig(3)
    DRout                    := reg_DR.io.regOut

  val reg_AC     = Module(new RegisterALU())
    reg_AC.io.regIn          := bus(15,0)               
    reg_AC.io.alu_out        := ALU_out              
    reg_AC.io.regReset       := ctrlsig(22)
    reg_AC.io.alu_write_en   := ctrlsig(11)
    reg_AC.io.regWriteEnable := ctrlsig(10)
    ACout := reg_AC.io.regOut

  // val flag_z = Module(new)
  z_out := RegNext(z_in)


  //configurable registers
  val reg_N  = Module(new Registers1)
    reg_N.io.regIn          := bus
    reg_N.io.regWriteEnable := wrt_n
    Nout                    := reg_N.io.regOut

  val reg_M  = Module(new Registers1)
    reg_M.io.regIn          := bus
    reg_M.io.regWriteEnable := wrt_m
    Mout                    := reg_M.io.regOut

  val reg_P  = Module(new Registers1)
    reg_P.io.regIn          := bus
    reg_P.io.regWriteEnable := wrt_p
    Pout                    := reg_P.io.regOut

  val reg_R1   = Module(new Registers2)
    reg_R1.io.regIn          := bus
    reg_R1.io.regWriteEnable := wrt_r1
    reg_R1.io.regInc         := r1_INC
    R1out                    := reg_R1.io.regOut
    
  val reg_ROW  = Module(new Registers3)
    reg_ROW.io.regIn          := bus
    reg_ROW.io.regWriteEnable := wrt_row
    reg_ROW.io.regInc         := row_INC
    reg_ROW.io.regReset       := row_RST
    ROWout                    := reg_ROW.io.regOut
    
  val reg_COL  = Module(new Registers3)
    reg_COL.io.regIn          := bus
    reg_COL.io.regWriteEnable := wrt_col
    reg_COL.io.regInc         := col_INC
    reg_COL.io.regReset       := col_RST
    COLout := reg_COL.io.regOut
    
  val reg_CURR = Module(new Registers3)
    reg_CURR.io.regIn           := bus
    reg_CURR.io.regWriteEnable  := wrt_curr
    reg_CURR.io.regInc          := curr_INC
    reg_CURR.io.regReset        := curr_RST
    CURRout                     := reg_CURR.io.regOut
    
  val reg_SUM  = Module(new Registers4)
    reg_SUM.io.regIn          := bus
    reg_SUM.io.regWriteEnable := wrt_sum
    reg_SUM.io.regReset       := sum_RST
    SUMout                    := reg_SUM.io.regOut
    
  val reg_STA  = Module(new Registers2)
    reg_STA.io.regIn            := bus
    reg_STA.io.regWriteEnable   := wrt_sta
    reg_STA.io.regInc           := sta_INC
    STAout                      := reg_STA.io.regOut
    
  val reg_STB  = Module(new Registers2)
    reg_STB.io.regIn            := bus
    reg_STB.io.regWriteEnable   := wrt_stb
    reg_STB.io.regInc           := stb_INC
    STBout                      := reg_STB.io.regOut

  val reg_STC  = Module(new Registers2)
    reg_STC.io.regIn          := bus
    reg_STC.io.regWriteEnable := wrt_stc
    reg_STC.io.regInc         := stc_INC
    STCout                    := reg_STC.io.regOut

  val reg_A    = Module(new Registers1)
    reg_A.io.regIn          := bus
    reg_A.io.regWriteEnable := wrt_a
    Aout                    := reg_A.io.regOut
    
  val reg_B    = Module(new Registers1)
    reg_B.io.regIn          := bus
    reg_B.io.regWriteEnable := wrt_b
    Bout                    := reg_B.io.regOut
    
  val reg_R    = Module(new Registers1) 
    reg_R.io.regIn          := bus
    reg_R.io.regWriteEnable := wrt_r
    Rout                    := reg_R.io.regOut



  //read buffers
  DMembufout := Mux(ctrlsig(16),Dmemout,0.U)
  Membufout  := Mux(ctrlsig(8),memout,0.U)
  ACbufout   := Mux(ctrlsig(20),ACout,0.U)
  DRbufout   := Mux(ctrlsig(21),DRout,0.U)
  
  





}


object TopMain extends App {
  println("Generating the Demux hardware")
  (new chisel3.stage.ChiselStage).emitVerilog(new Top(), Array("--target-dir", "generated"))
//   (new chisel3.stage.ChiselStage).emitVerilog(new Memory(), Array("--target-dir", "generated"))
}


