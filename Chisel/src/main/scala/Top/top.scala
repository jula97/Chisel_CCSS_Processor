import chisel3._
import chisel3.util._



class Top extends Modulue{
  val io = IO(new Bundle{

  })




  val ctrlSig     = WireInit(0.U(25.W))
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
  val Dmemout     = WireInit(0.U(15.W))
  val mux_out     = WireInit(0.U(15.W)) 
  val ALU_out     = WireInit(0.U(15.W))
  val z_in        = WireInit(0.U(1.W))
  val z_out       = WireInit(0.U(1.W))




  val CU = Module(new Controller)  

  //ALU
  val ALU = Module(new ALU)

  //Combinational Blocks
  val INC_Decoder =  Module(new Decoders(7,7,2))
  val RST_Decoder =  Module(new Decoders(4,4,3))
  val WTR_Decoder =  Module(new Decoders(4,15,1))
  val OPR_Demux   =  Module(new OPR_demux)
  val WTA_Mux     =  Module(new WTA_mux)

  //BUS

  //internal registers
  val reg_CoreID = Module(new Registers(1))
  val reg_IR = Module(new Registers(1))
  val reg_AR = Module(new Registers(1))
  val reg_PC = Module(new Registers(3))
  val reg_DR = Module(new Registers(1))
  // val reg_AC = Module(new)
  // val flag_z = Module(new) 

  //configurable registers
  val reg_N  = Module(new Registers(1))
    reg_N.regIn := bus
  val reg_M  = Module(new Registers(1))
  val reg_P  = Module(new Registers(1))
  val reg_R1 = Module(new Registers(2))
  val reg_ROW  = Module(new Registers(3))
  val reg_COL  = Module(new Registers(3))
  val reg_CURR = Module(new Registers(3))
  val reg_SUM  = Module(new Registers(2))
  val reg_STA  = Module(new Registers(2))
  val reg_STB  = Module(new Registers(2))
  val reg_STC  = Module(new Registers(2))   
  val reg_A    = Module(new Registers(1))
  val reg_B    = Module(new Registers(1))
  val reg_R    = Module(new Registers(1)) 
  
  





}


object DemuxMain extends App {
  println("Generating the Demux hardware")
  (new chisel3.stage.ChiselStage).emitVerilog(new OPR_demux(), Array("--target-dir", "generated"))
//   (new chisel3.stage.ChiselStage).emitVerilog(new Memory(), Array("--target-dir", "generated"))
}


