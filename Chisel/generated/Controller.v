module Controller(
  input         clock,
  input         reset,
  input         io_z,
  input         io_rst,
  input  [5:0]  io_instruction_opcode,
  input  [15:0] io_NoC,
  output [24:0] io_ctrlSig,
  output        io_end_process
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] state; // @[Controller.scala 78:22]
  wire  _T = 6'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_1 = 6'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_2 = 6'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_3 = 6'h3 == state; // @[Conditional.scala 37:30]
  wire  _T_19 = io_instruction_opcode == 6'h10; // @[Controller.scala 118:26]
  wire [5:0] _GEN_0 = io_instruction_opcode == 6'h12 ? 6'h35 : 6'h39; // @[Controller.scala 121:36 Controller.scala 121:43 Controller.scala 122:27]
  wire [5:0] _GEN_1 = io_instruction_opcode == 6'h11 ? 6'h2f : _GEN_0; // @[Controller.scala 120:36 Controller.scala 120:43]
  wire [5:0] _GEN_2 = _T_19 & ~io_z ? 6'h2c : _GEN_1; // @[Controller.scala 119:49 Controller.scala 119:56]
  wire [5:0] _GEN_3 = io_instruction_opcode == 6'h10 & io_z ? 6'h2a : _GEN_2; // @[Controller.scala 118:49 Controller.scala 118:56]
  wire [5:0] _GEN_4 = io_instruction_opcode == 6'hf ? 6'h2e : _GEN_3; // @[Controller.scala 117:36 Controller.scala 117:43]
  wire [5:0] _GEN_5 = io_instruction_opcode == 6'he ? 6'h22 : _GEN_4; // @[Controller.scala 116:36 Controller.scala 116:43]
  wire [5:0] _GEN_6 = io_instruction_opcode == 6'hd ? 6'h20 : _GEN_5; // @[Controller.scala 115:36 Controller.scala 115:43]
  wire [5:0] _GEN_7 = io_instruction_opcode == 6'hc ? 6'h0 : _GEN_6; // @[Controller.scala 114:36 Controller.scala 114:43]
  wire [5:0] _GEN_8 = io_instruction_opcode == 6'hb ? 6'h1b : _GEN_7; // @[Controller.scala 113:36 Controller.scala 113:43]
  wire [5:0] _GEN_9 = io_instruction_opcode == 6'ha ? 6'h18 : _GEN_8; // @[Controller.scala 112:36 Controller.scala 112:43]
  wire [5:0] _GEN_10 = io_instruction_opcode == 6'h9 ? 6'hb : _GEN_9; // @[Controller.scala 111:35 Controller.scala 111:42]
  wire [5:0] _GEN_11 = io_instruction_opcode == 6'h8 ? 6'h8 : _GEN_10; // @[Controller.scala 110:35 Controller.scala 110:42]
  wire [5:0] _GEN_12 = io_instruction_opcode == 6'h7 ? 6'h5 : _GEN_11; // @[Controller.scala 109:35 Controller.scala 109:42]
  wire [5:0] _GEN_13 = io_instruction_opcode == 6'h6 ? 6'h16 : _GEN_12; // @[Controller.scala 108:35 Controller.scala 108:42]
  wire [5:0] _GEN_14 = io_instruction_opcode == 6'h5 ? 6'h14 : _GEN_13; // @[Controller.scala 107:35 Controller.scala 107:42]
  wire [5:0] _GEN_15 = io_instruction_opcode == 6'h4 ? 6'h28 : _GEN_14; // @[Controller.scala 106:35 Controller.scala 106:42]
  wire [5:0] _GEN_16 = io_instruction_opcode == 6'h3 ? 6'h24 : _GEN_15; // @[Controller.scala 105:35 Controller.scala 105:42]
  wire [5:0] _GEN_17 = io_instruction_opcode == 6'h2 ? 6'he : _GEN_16; // @[Controller.scala 104:35 Controller.scala 104:42]
  wire [5:0] _GEN_18 = io_instruction_opcode == 6'h1 ? 6'h2d : _GEN_17; // @[Controller.scala 103:29 Controller.scala 103:36]
  wire  _T_27 = 6'h5 == state; // @[Conditional.scala 37:30]
  wire  _T_28 = 6'h6 == state; // @[Conditional.scala 37:30]
  wire  _T_29 = 6'h8 == state; // @[Conditional.scala 37:30]
  wire  _T_30 = 6'h9 == state; // @[Conditional.scala 37:30]
  wire  _T_31 = 6'hb == state; // @[Conditional.scala 37:30]
  wire  _T_32 = 6'hc == state; // @[Conditional.scala 37:30]
  wire  _T_33 = 6'he == state; // @[Conditional.scala 37:30]
  wire  _T_34 = 6'hf == state; // @[Conditional.scala 37:30]
  wire  _T_35 = 6'h10 == state; // @[Conditional.scala 37:30]
  wire  _T_36 = 6'h11 == state; // @[Conditional.scala 37:30]
  wire  _T_37 = 6'h12 == state; // @[Conditional.scala 37:30]
  wire  _T_38 = 6'h14 == state; // @[Conditional.scala 37:30]
  wire  _T_39 = 6'h16 == state; // @[Conditional.scala 37:30]
  wire  _T_40 = 6'h18 == state; // @[Conditional.scala 37:30]
  wire  _T_41 = 6'h19 == state; // @[Conditional.scala 37:30]
  wire  _T_42 = 6'h1b == state; // @[Conditional.scala 37:30]
  wire  _T_43 = 6'h1c == state; // @[Conditional.scala 37:30]
  wire  _T_44 = 6'h20 == state; // @[Conditional.scala 37:30]
  wire  _T_45 = 6'h22 == state; // @[Conditional.scala 37:30]
  wire  _T_46 = 6'h24 == state; // @[Conditional.scala 37:30]
  wire  _T_47 = 6'h25 == state; // @[Conditional.scala 37:30]
  wire  _T_48 = 6'h26 == state; // @[Conditional.scala 37:30]
  wire  _T_49 = 6'h2e == state; // @[Conditional.scala 37:30]
  wire  _T_50 = 6'h2d == state; // @[Conditional.scala 37:30]
  wire  _T_51 = 6'h28 == state; // @[Conditional.scala 37:30]
  wire  _T_52 = 6'h2a == state; // @[Conditional.scala 37:30]
  wire  _T_53 = 6'h2c == state; // @[Conditional.scala 37:30]
  wire  _T_54 = 6'h2f == state; // @[Conditional.scala 37:30]
  wire  _T_55 = 6'h30 == state; // @[Conditional.scala 37:30]
  wire  _T_56 = 6'h31 == state; // @[Conditional.scala 37:30]
  wire  _T_57 = 6'h32 == state; // @[Conditional.scala 37:30]
  wire  _T_58 = 6'h33 == state; // @[Conditional.scala 37:30]
  wire  _T_59 = 6'h35 == state; // @[Conditional.scala 37:30]
  wire  _T_60 = 6'h36 == state; // @[Conditional.scala 37:30]
  wire  _T_61 = 6'h37 == state; // @[Conditional.scala 37:30]
  wire  _T_62 = 6'h39 == state; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_19 = _T_62 ? 6'h39 : state; // @[Conditional.scala 39:67 Controller.scala 272:13 Controller.scala 78:22]
  wire [5:0] _GEN_22 = _T_61 ? 6'h0 : _GEN_19; // @[Conditional.scala 39:67 Controller.scala 268:13]
  wire [24:0] _GEN_23 = _T_61 ? 25'h8000 : 25'h0; // @[Conditional.scala 39:67 Controller.scala 269:15]
  wire  _GEN_24 = _T_61 ? 1'h0 : _T_62; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_25 = _T_60 ? 6'h37 : _GEN_22; // @[Conditional.scala 39:67 Controller.scala 264:13]
  wire [24:0] _GEN_26 = _T_60 ? 25'h108008 : _GEN_23; // @[Conditional.scala 39:67 Controller.scala 265:15]
  wire  _GEN_27 = _T_60 ? 1'h0 : _GEN_24; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_28 = _T_59 ? 6'h36 : _GEN_25; // @[Conditional.scala 39:67 Controller.scala 260:13]
  wire [24:0] _GEN_29 = _T_59 ? 25'h20240 : _GEN_26; // @[Conditional.scala 39:67 Controller.scala 261:15]
  wire  _GEN_30 = _T_59 ? 1'h0 : _GEN_27; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_31 = _T_58 ? 6'h0 : _GEN_28; // @[Conditional.scala 39:67 Controller.scala 256:13]
  wire [24:0] _GEN_32 = _T_58 ? 25'h200400 : _GEN_29; // @[Conditional.scala 39:67 Controller.scala 257:15]
  wire  _GEN_33 = _T_58 ? 1'h0 : _GEN_30; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_34 = _T_57 ? 6'h33 : _GEN_31; // @[Conditional.scala 39:67 Controller.scala 252:13]
  wire [24:0] _GEN_35 = _T_57 ? 25'h10008 : _GEN_32; // @[Conditional.scala 39:67 Controller.scala 253:15]
  wire  _GEN_36 = _T_57 ? 1'h0 : _GEN_33; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_37 = _T_56 ? 6'h32 : _GEN_34; // @[Conditional.scala 39:67 Controller.scala 248:13]
  wire [24:0] _GEN_38 = _T_56 ? 25'h0 : _GEN_35; // @[Conditional.scala 39:67 Controller.scala 249:15]
  wire  _GEN_39 = _T_56 ? 1'h0 : _GEN_36; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_40 = _T_55 ? 6'h31 : _GEN_37; // @[Conditional.scala 39:67 Controller.scala 244:13]
  wire [24:0] _GEN_41 = _T_55 ? 25'h0 : _GEN_38; // @[Conditional.scala 39:67 Controller.scala 245:15]
  wire  _GEN_42 = _T_55 ? 1'h0 : _GEN_39; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_43 = _T_54 ? 6'h30 : _GEN_40; // @[Conditional.scala 39:67 Controller.scala 240:13]
  wire [24:0] _GEN_44 = _T_54 ? 25'h20240 : _GEN_41; // @[Conditional.scala 39:67 Controller.scala 241:15]
  wire  _GEN_45 = _T_54 ? 1'h0 : _GEN_42; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_46 = _T_53 ? 6'h0 : _GEN_43; // @[Conditional.scala 39:67 Controller.scala 236:13]
  wire [24:0] _GEN_47 = _T_53 ? 25'h0 : _GEN_44; // @[Conditional.scala 39:67 Controller.scala 237:15]
  wire  _GEN_48 = _T_53 ? 1'h0 : _GEN_45; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_49 = _T_52 ? 6'h0 : _GEN_46; // @[Conditional.scala 39:67 Controller.scala 232:13]
  wire [24:0] _GEN_50 = _T_52 ? 25'h200010 : _GEN_47; // @[Conditional.scala 39:67 Controller.scala 233:15]
  wire  _GEN_51 = _T_52 ? 1'h0 : _GEN_48; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_52 = _T_51 ? 6'h0 : _GEN_49; // @[Conditional.scala 39:67 Controller.scala 228:13]
  wire [24:0] _GEN_53 = _T_51 ? 25'h200010 : _GEN_50; // @[Conditional.scala 39:67 Controller.scala 229:15]
  wire  _GEN_54 = _T_51 ? 1'h0 : _GEN_51; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_55 = _T_50 ? 6'h0 : _GEN_52; // @[Conditional.scala 39:67 Controller.scala 224:13]
  wire [24:0] _GEN_56 = _T_50 ? 25'h400000 : _GEN_53; // @[Conditional.scala 39:67 Controller.scala 225:15]
  wire  _GEN_57 = _T_50 ? 1'h0 : _GEN_54; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_58 = _T_49 ? 6'h0 : _GEN_55; // @[Conditional.scala 39:67 Controller.scala 220:13]
  wire [24:0] _GEN_59 = _T_49 ? 25'h0 : _GEN_56; // @[Conditional.scala 39:67 Controller.scala 221:15]
  wire  _GEN_60 = _T_49 ? 1'h0 : _GEN_57; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_61 = _T_48 ? 6'h0 : _GEN_58; // @[Conditional.scala 39:67 Controller.scala 216:13]
  wire [24:0] _GEN_62 = _T_48 ? 25'h8000 : _GEN_59; // @[Conditional.scala 39:67 Controller.scala 217:15]
  wire  _GEN_63 = _T_48 ? 1'h0 : _GEN_60; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_64 = _T_47 ? 6'h26 : _GEN_61; // @[Conditional.scala 39:67 Controller.scala 212:13]
  wire [24:0] _GEN_65 = _T_47 ? 25'h108008 : _GEN_62; // @[Conditional.scala 39:67 Controller.scala 213:15]
  wire  _GEN_66 = _T_47 ? 1'h0 : _GEN_63; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_67 = _T_46 ? 6'h25 : _GEN_64; // @[Conditional.scala 39:67 Controller.scala 208:13]
  wire [24:0] _GEN_68 = _T_46 ? 25'h220000 : _GEN_65; // @[Conditional.scala 39:67 Controller.scala 209:15]
  wire  _GEN_69 = _T_46 ? 1'h0 : _GEN_66; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_70 = _T_45 ? 6'h0 : _GEN_67; // @[Conditional.scala 39:67 Controller.scala 204:13]
  wire [24:0] _GEN_71 = _T_45 ? 25'h22 : _GEN_68; // @[Conditional.scala 39:67 Controller.scala 205:15]
  wire  _GEN_72 = _T_45 ? 1'h0 : _GEN_69; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_73 = _T_44 ? 6'h0 : _GEN_70; // @[Conditional.scala 39:67 Controller.scala 200:13]
  wire [24:0] _GEN_74 = _T_44 ? 25'h81 : _GEN_71; // @[Conditional.scala 39:67 Controller.scala 201:15]
  wire  _GEN_75 = _T_44 ? 1'h0 : _GEN_72; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_76 = _T_43 ? 6'h0 : _GEN_73; // @[Conditional.scala 39:67 Controller.scala 196:13]
  wire [24:0] _GEN_77 = _T_43 ? 25'ha40 : _GEN_74; // @[Conditional.scala 39:67 Controller.scala 197:15]
  wire  _GEN_78 = _T_43 ? 1'h0 : _GEN_75; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_79 = _T_42 ? 6'h1c : _GEN_76; // @[Conditional.scala 39:67 Controller.scala 192:13]
  wire [24:0] _GEN_80 = _T_42 ? 25'h5240 : _GEN_77; // @[Conditional.scala 39:67 Controller.scala 193:15]
  wire  _GEN_81 = _T_42 ? 1'h0 : _GEN_78; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_82 = _T_41 ? 6'h0 : _GEN_79; // @[Conditional.scala 39:67 Controller.scala 188:13]
  wire [24:0] _GEN_83 = _T_41 ? 25'ha40 : _GEN_80; // @[Conditional.scala 39:67 Controller.scala 189:15]
  wire  _GEN_84 = _T_41 ? 1'h0 : _GEN_81; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_85 = _T_40 ? 6'h19 : _GEN_82; // @[Conditional.scala 39:67 Controller.scala 184:13]
  wire [24:0] _GEN_86 = _T_40 ? 25'h4240 : _GEN_83; // @[Conditional.scala 39:67 Controller.scala 185:15]
  wire  _GEN_87 = _T_40 ? 1'h0 : _GEN_84; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_88 = _T_39 ? 6'h0 : _GEN_85; // @[Conditional.scala 39:67 Controller.scala 179:13]
  wire [24:0] _GEN_89 = _T_39 ? 25'h640 : _GEN_86; // @[Conditional.scala 39:67 Controller.scala 180:15]
  wire  _GEN_90 = _T_39 ? 1'h0 : _GEN_87; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_91 = _T_38 ? 6'h0 : _GEN_88; // @[Conditional.scala 39:67 Controller.scala 174:13]
  wire [24:0] _GEN_92 = _T_38 ? 25'h100064 : _GEN_89; // @[Conditional.scala 39:67 Controller.scala 175:15]
  wire  _GEN_93 = _T_38 ? 1'h0 : _GEN_90; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_94 = _T_37 ? 6'h0 : _GEN_91; // @[Conditional.scala 39:67 Controller.scala 169:13]
  wire [24:0] _GEN_95 = _T_37 ? 25'h200400 : _GEN_92; // @[Conditional.scala 39:67 Controller.scala 170:15]
  wire  _GEN_96 = _T_37 ? 1'h0 : _GEN_93; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_97 = _T_36 ? 6'h12 : _GEN_94; // @[Conditional.scala 39:67 Controller.scala 165:13]
  wire [24:0] _GEN_98 = _T_36 ? 25'h10008 : _GEN_95; // @[Conditional.scala 39:67 Controller.scala 166:15]
  wire  _GEN_99 = _T_36 ? 1'h0 : _GEN_96; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_100 = _T_35 ? 6'h11 : _GEN_97; // @[Conditional.scala 39:67 Controller.scala 161:13]
  wire [24:0] _GEN_101 = _T_35 ? 25'h0 : _GEN_98; // @[Conditional.scala 39:67 Controller.scala 162:15]
  wire  _GEN_102 = _T_35 ? 1'h0 : _GEN_99; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_103 = _T_34 ? 6'h10 : _GEN_100; // @[Conditional.scala 39:67 Controller.scala 157:13]
  wire [24:0] _GEN_104 = _T_34 ? 25'h0 : _GEN_101; // @[Conditional.scala 39:67 Controller.scala 158:15]
  wire  _GEN_105 = _T_34 ? 1'h0 : _GEN_102; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_106 = _T_33 ? 6'hf : _GEN_103; // @[Conditional.scala 39:67 Controller.scala 153:13]
  wire [24:0] _GEN_107 = _T_33 ? 25'h220000 : _GEN_104; // @[Conditional.scala 39:67 Controller.scala 154:15]
  wire  _GEN_108 = _T_33 ? 1'h0 : _GEN_105; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_109 = _T_32 ? 6'h0 : _GEN_106; // @[Conditional.scala 39:67 Controller.scala 148:13]
  wire [24:0] _GEN_110 = _T_32 ? 25'ha40 : _GEN_107; // @[Conditional.scala 39:67 Controller.scala 149:15]
  wire  _GEN_111 = _T_32 ? 1'h0 : _GEN_108; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_112 = _T_31 ? 6'hc : _GEN_109; // @[Conditional.scala 39:67 Controller.scala 144:13]
  wire [24:0] _GEN_113 = _T_31 ? 25'h3240 : _GEN_110; // @[Conditional.scala 39:67 Controller.scala 145:15]
  wire  _GEN_114 = _T_31 ? 1'h0 : _GEN_111; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_115 = _T_30 ? 6'h0 : _GEN_112; // @[Conditional.scala 39:67 Controller.scala 139:13]
  wire [24:0] _GEN_116 = _T_30 ? 25'ha40 : _GEN_113; // @[Conditional.scala 39:67 Controller.scala 140:15]
  wire  _GEN_117 = _T_30 ? 1'h0 : _GEN_114; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_118 = _T_29 ? 6'h9 : _GEN_115; // @[Conditional.scala 39:67 Controller.scala 135:13]
  wire [24:0] _GEN_119 = _T_29 ? 25'h2240 : _GEN_116; // @[Conditional.scala 39:67 Controller.scala 136:15]
  wire  _GEN_120 = _T_29 ? 1'h0 : _GEN_117; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_121 = _T_28 ? 6'h0 : _GEN_118; // @[Conditional.scala 39:67 Controller.scala 130:13]
  wire [24:0] _GEN_122 = _T_28 ? 25'ha40 : _GEN_119; // @[Conditional.scala 39:67 Controller.scala 131:15]
  wire  _GEN_123 = _T_28 ? 1'h0 : _GEN_120; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [5:0] _GEN_124 = _T_27 ? 6'h6 : _GEN_121; // @[Conditional.scala 39:67 Controller.scala 126:13]
  wire [24:0] _GEN_125 = _T_27 ? 25'h1240 : _GEN_122; // @[Conditional.scala 39:67 Controller.scala 127:15]
  wire  _GEN_126 = _T_27 ? 1'h0 : _GEN_123; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [24:0] _GEN_127 = _T_3 ? 25'h0 : _GEN_125; // @[Conditional.scala 39:67 Controller.scala 102:15]
  wire [5:0] _GEN_128 = _T_3 ? _GEN_18 : _GEN_124; // @[Conditional.scala 39:67]
  wire  _GEN_129 = _T_3 ? 1'h0 : _GEN_126; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [24:0] _GEN_131 = _T_2 ? 25'hc0108 : _GEN_127; // @[Conditional.scala 39:67 Controller.scala 99:15]
  wire  _GEN_132 = _T_2 ? 1'h0 : _GEN_129; // @[Conditional.scala 39:67 Controller.scala 84:18]
  wire [24:0] _GEN_134 = _T_1 ? 25'h0 : _GEN_131; // @[Conditional.scala 39:67 Controller.scala 95:15]
  wire  _GEN_135 = _T_1 ? 1'h0 : _GEN_132; // @[Conditional.scala 39:67 Controller.scala 84:18]
  assign io_ctrlSig = _T ? 25'h0 : _GEN_134; // @[Conditional.scala 40:58 Controller.scala 91:15]
  assign io_end_process = _T ? 1'h0 : _GEN_135; // @[Conditional.scala 40:58 Controller.scala 84:18]
  always @(posedge clock) begin
    if (reset) begin // @[Controller.scala 78:22]
      state <= 6'h0; // @[Controller.scala 78:22]
    end else if (_T) begin // @[Conditional.scala 40:58]
      state <= 6'h1; // @[Controller.scala 90:13]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      state <= 6'h2; // @[Controller.scala 94:13]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      state <= 6'h3; // @[Controller.scala 98:13]
    end else begin
      state <= _GEN_128;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
