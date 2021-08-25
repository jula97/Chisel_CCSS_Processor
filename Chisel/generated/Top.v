module Controller(
  input         clock,
  input         reset,
  input         io_z,
  input  [5:0]  io_instruction_opcode,
  output [24:0] io_ctrlsig,
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
  assign io_ctrlsig = _T ? 25'h0 : _GEN_134; // @[Conditional.scala 40:58 Controller.scala 91:15]
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
module ALU(
  input         clock,
  input         reset,
  input  [15:0] io_a,
  input  [15:0] io_b,
  input  [2:0]  io_fn,
  output [15:0] io_y,
  output        io_z
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] y; // @[ALU.scala 13:18]
  wire  _T = 3'h1 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_2 = io_a + io_b; // @[ALU.scala 16:25]
  wire  _T_3 = 3'h2 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_4 = io_a ^ io_b; // @[ALU.scala 17:25]
  wire  _T_5 = 3'h3 == io_fn; // @[Conditional.scala 37:30]
  wire [31:0] _T_6 = io_a * io_b; // @[ALU.scala 18:25]
  wire  _T_7 = 3'h4 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_8 = io_a / io_b; // @[ALU.scala 19:25]
  wire  _T_9 = 3'h5 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _GEN_7 = io_a % io_b; // @[ALU.scala 20:25]
  wire [15:0] _T_10 = _GEN_7[15:0]; // @[ALU.scala 20:25]
  wire  _T_11 = 3'h6 == io_fn; // @[Conditional.scala 37:30]
  wire [17:0] _T_12 = io_a * 16'h2; // @[ALU.scala 21:25]
  wire  _T_13 = 3'h7 == io_fn; // @[Conditional.scala 37:30]
  wire [15:0] _T_15 = io_a - io_b; // @[ALU.scala 22:25]
  wire [15:0] _GEN_0 = _T_13 ? _T_15 : y; // @[Conditional.scala 39:67 ALU.scala 22:17 ALU.scala 13:18]
  wire [17:0] _GEN_1 = _T_11 ? _T_12 : {{2'd0}, _GEN_0}; // @[Conditional.scala 39:67 ALU.scala 21:17]
  wire [17:0] _GEN_2 = _T_9 ? {{2'd0}, _T_10} : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 20:17]
  wire [17:0] _GEN_3 = _T_7 ? {{2'd0}, _T_8} : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 19:17]
  wire [31:0] _GEN_4 = _T_5 ? _T_6 : {{14'd0}, _GEN_3}; // @[Conditional.scala 39:67 ALU.scala 18:17]
  wire [31:0] _GEN_5 = _T_3 ? {{16'd0}, _T_4} : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 17:17]
  wire [31:0] _GEN_6 = _T ? {{16'd0}, _T_2} : _GEN_5; // @[Conditional.scala 40:58 ALU.scala 16:17]
  assign io_y = y; // @[ALU.scala 31:8]
  assign io_z = y == 16'h0; // @[ALU.scala 25:12]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 13:18]
      y <= 16'h0; // @[ALU.scala 13:18]
    end else begin
      y <= _GEN_6[15:0];
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
  y = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Decoders(
  input  [6:0] io_bin,
  input        io_en,
  output [6:0] io_decOut
);
  assign io_decOut = io_en ? io_bin : 7'h0; // @[Decoders.scala 99:26 Decoders.scala 100:11]
endmodule
module Decoders_1(
  input  [3:0] io_bin,
  input        io_en,
  output [3:0] io_decOut
);
  assign io_decOut = io_en ? io_bin : 4'h0; // @[Decoders.scala 114:26 Decoders.scala 115:11]
endmodule
module Decoders_2(
  input  [3:0]  io_bin,
  input         io_en,
  output [14:0] io_decOut
);
  wire  _T_1 = 4'h1 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_3 = 4'h3 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_4 = 4'h4 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_5 = 4'h5 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_6 = 4'h6 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_7 = 4'h7 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_8 = 4'h8 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_bin; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_bin; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_bin; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_bin; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_bin; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_bin; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_bin; // @[Conditional.scala 37:30]
  wire [14:0] _GEN_0 = _T_15 ? 15'h4000 : 15'h0; // @[Conditional.scala 39:67 Decoders.scala 80:15]
  wire [14:0] _GEN_1 = _T_14 ? 15'h2000 : _GEN_0; // @[Conditional.scala 39:67 Decoders.scala 77:15]
  wire [14:0] _GEN_2 = _T_13 ? 15'h1000 : _GEN_1; // @[Conditional.scala 39:67 Decoders.scala 74:15]
  wire [14:0] _GEN_3 = _T_12 ? 15'h800 : _GEN_2; // @[Conditional.scala 39:67 Decoders.scala 71:15]
  wire [14:0] _GEN_4 = _T_11 ? 15'h400 : _GEN_3; // @[Conditional.scala 39:67 Decoders.scala 68:15]
  wire [14:0] _GEN_5 = _T_10 ? 15'h200 : _GEN_4; // @[Conditional.scala 39:67 Decoders.scala 65:15]
  wire [14:0] _GEN_6 = _T_9 ? 15'h100 : _GEN_5; // @[Conditional.scala 39:67 Decoders.scala 62:15]
  wire [14:0] _GEN_7 = _T_8 ? 15'h80 : _GEN_6; // @[Conditional.scala 39:67 Decoders.scala 59:15]
  wire [14:0] _GEN_8 = _T_7 ? 15'h40 : _GEN_7; // @[Conditional.scala 39:67 Decoders.scala 56:15]
  wire [14:0] _GEN_9 = _T_6 ? 15'h20 : _GEN_8; // @[Conditional.scala 39:67 Decoders.scala 53:15]
  wire [14:0] _GEN_10 = _T_5 ? 15'h10 : _GEN_9; // @[Conditional.scala 39:67 Decoders.scala 50:15]
  wire [14:0] _GEN_11 = _T_4 ? 15'h8 : _GEN_10; // @[Conditional.scala 39:67 Decoders.scala 47:15]
  wire [14:0] _GEN_12 = _T_3 ? 15'h4 : _GEN_11; // @[Conditional.scala 39:67 Decoders.scala 44:15]
  wire [14:0] _GEN_13 = _T_2 ? 15'h2 : _GEN_12; // @[Conditional.scala 39:67 Decoders.scala 41:15]
  wire [14:0] _GEN_14 = _T_1 ? 15'h1 : _GEN_13; // @[Conditional.scala 40:58 Decoders.scala 38:15]
  assign io_decOut = io_en ? _GEN_14 : 15'h0; // @[Decoders.scala 35:26]
endmodule
module OPR_demux(
  input  [7:0] io_operand,
  input  [2:0] io_OPR_sel,
  output [7:0] io_WTR_operand,
  output [7:0] io_INC_operand,
  output [7:0] io_RESET_operand,
  output [7:0] io_WTA_operand
);
  wire  _T = 3'h0 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_2 = 3'h2 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h3 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire  _T_4 = 3'h4 == io_OPR_sel; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_1 = _T_4 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 50:29]
  wire [7:0] _GEN_2 = _T_3 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 43:29]
  wire [7:0] _GEN_3 = _T_3 ? 8'h0 : _GEN_1; // @[Conditional.scala 39:67 OPR_Demux.scala 44:29]
  wire [7:0] _GEN_5 = _T_2 ? 8'h0 : _GEN_2; // @[Conditional.scala 39:67 OPR_Demux.scala 37:29]
  wire [7:0] _GEN_6 = _T_2 ? 8'h0 : _GEN_3; // @[Conditional.scala 39:67 OPR_Demux.scala 38:29]
  wire [7:0] _GEN_8 = _T_2 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 40:29]
  wire [7:0] _GEN_9 = _T_1 ? 8'h0 : _GEN_5; // @[Conditional.scala 39:67 OPR_Demux.scala 31:29]
  wire [7:0] _GEN_10 = _T_1 ? 8'h0 : _GEN_6; // @[Conditional.scala 39:67 OPR_Demux.scala 32:29]
  wire [7:0] _GEN_11 = _T_1 ? io_operand : 8'h0; // @[Conditional.scala 39:67 OPR_Demux.scala 33:29]
  wire [7:0] _GEN_12 = _T_1 ? 8'h0 : _GEN_8; // @[Conditional.scala 39:67 OPR_Demux.scala 34:29]
  assign io_WTR_operand = _T ? 8'h0 : _GEN_9; // @[Conditional.scala 40:58 OPR_Demux.scala 25:29]
  assign io_INC_operand = _T ? 8'h0 : _GEN_10; // @[Conditional.scala 40:58 OPR_Demux.scala 26:29]
  assign io_RESET_operand = _T ? 8'h0 : _GEN_11; // @[Conditional.scala 40:58 OPR_Demux.scala 27:29]
  assign io_WTA_operand = _T ? 8'h0 : _GEN_12; // @[Conditional.scala 40:58 OPR_Demux.scala 28:29]
endmodule
module WTA_mux(
  input  [3:0]  io_sel,
  input         io_en,
  output [15:0] io_muxOut,
  input  [15:0] io_wta_N,
  input  [15:0] io_wta_M,
  input  [15:0] io_wta_P,
  input  [15:0] io_wta_R1,
  input  [15:0] io_wta_ROW,
  input  [15:0] io_wta_COL,
  input  [15:0] io_wta_CURR,
  input  [15:0] io_wta_SUM,
  input  [15:0] io_wta_STA,
  input  [15:0] io_wta_STB,
  input  [15:0] io_wta_STC,
  input  [15:0] io_wta_A,
  input  [15:0] io_wta_B,
  input  [15:0] io_wta_R
);
  wire [15:0] _T_1 = 4'h1 == io_sel ? io_wta_N : 16'h0; // @[Mux.scala 80:57]
  wire [15:0] _T_3 = 4'h2 == io_sel ? io_wta_M : _T_1; // @[Mux.scala 80:57]
  wire [15:0] _T_5 = 4'h3 == io_sel ? io_wta_P : _T_3; // @[Mux.scala 80:57]
  wire [15:0] _T_7 = 4'h4 == io_sel ? io_wta_R1 : _T_5; // @[Mux.scala 80:57]
  wire [15:0] _T_9 = 4'h5 == io_sel ? io_wta_ROW : _T_7; // @[Mux.scala 80:57]
  wire [15:0] _T_11 = 4'h6 == io_sel ? io_wta_COL : _T_9; // @[Mux.scala 80:57]
  wire [15:0] _T_13 = 4'h7 == io_sel ? io_wta_CURR : _T_11; // @[Mux.scala 80:57]
  wire [15:0] _T_15 = 4'h8 == io_sel ? io_wta_SUM : _T_13; // @[Mux.scala 80:57]
  wire [15:0] _T_17 = 4'h9 == io_sel ? io_wta_STA : _T_15; // @[Mux.scala 80:57]
  wire [15:0] _T_19 = 4'ha == io_sel ? io_wta_STB : _T_17; // @[Mux.scala 80:57]
  wire [15:0] _T_21 = 4'hb == io_sel ? io_wta_STC : _T_19; // @[Mux.scala 80:57]
  wire [15:0] _T_23 = 4'hc == io_sel ? io_wta_A : _T_21; // @[Mux.scala 80:57]
  wire [15:0] _T_25 = 4'hd == io_sel ? io_wta_B : _T_23; // @[Mux.scala 80:57]
  wire [15:0] _T_27 = 4'he == io_sel ? io_wta_R : _T_25; // @[Mux.scala 80:57]
  wire [15:0] _T_29 = 4'hf == io_sel ? 16'h0 : _T_27; // @[Mux.scala 80:57]
  assign io_muxOut = io_en ? _T_29 : 16'h0; // @[Multiplexers.scala 31:13 Multiplexers.scala 32:10]
endmodule
module Bus(
  input  [14:0] io_mux_out,
  input  [15:0] io_DRbufout,
  input  [15:0] io_ACbufout,
  input  [23:0] io_Membufout,
  input  [15:0] io_DMembufout,
  output [23:0] io_BusOut
);
  wire [15:0] _GEN_0 = {{1'd0}, io_mux_out}; // @[bus.scala 15:30]
  wire [15:0] _T = _GEN_0 | io_DRbufout; // @[bus.scala 15:30]
  wire [15:0] _T_1 = _T | io_ACbufout; // @[bus.scala 15:44]
  wire [23:0] _GEN_1 = {{8'd0}, _T_1}; // @[bus.scala 15:58]
  wire [23:0] _T_2 = _GEN_1 | io_Membufout; // @[bus.scala 15:58]
  wire [23:0] _GEN_2 = {{8'd0}, io_DMembufout}; // @[bus.scala 15:73]
  assign io_BusOut = _T_2 | _GEN_2; // @[bus.scala 15:73]
endmodule
module Registers1(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 11:28]
  assign io_regOut = registerOut; // @[Registers.scala 17:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 11:28]
      registerOut <= 16'h0; // @[Registers.scala 11:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 13:34]
      registerOut <= io_regIn; // @[Registers.scala 14:17]
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
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Registers3(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regReset,
  input         io_regInc,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 54:28]
  wire [15:0] _T_3 = registerOut + 16'h1; // @[Registers.scala 59:34]
  assign io_regOut = registerOut; // @[Registers.scala 65:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 54:28]
      registerOut <= 16'h0; // @[Registers.scala 54:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 56:29]
      registerOut <= io_regIn; // @[Registers.scala 57:19]
    end else if (io_regInc) begin // @[Registers.scala 58:28]
      registerOut <= _T_3; // @[Registers.scala 59:19]
    end else if (io_regReset) begin // @[Registers.scala 60:32]
      registerOut <= 16'h0; // @[Registers.scala 61:19]
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
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegisterALU(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input  [15:0] io_alu_out,
  input         io_regReset,
  input         io_alu_write_en,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 104:28]
  assign io_regOut = registerOut; // @[Registers.scala 116:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 104:28]
      registerOut <= 16'h0; // @[Registers.scala 104:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 108:35]
      registerOut <= io_regIn; // @[Registers.scala 109:17]
    end else if (io_alu_write_en) begin // @[Registers.scala 110:38]
      registerOut <= io_alu_out; // @[Registers.scala 111:17]
    end else if (io_regReset) begin // @[Registers.scala 112:34]
      registerOut <= 16'h0; // @[Registers.scala 113:17]
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
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Registers2(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regInc,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 29:28]
  wire [15:0] _T_3 = registerOut + 16'h1; // @[Registers.scala 34:32]
  assign io_regOut = registerOut; // @[Registers.scala 36:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 29:28]
      registerOut <= 16'h0; // @[Registers.scala 29:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 31:34]
      registerOut <= io_regIn; // @[Registers.scala 32:17]
    end else if (io_regInc) begin // @[Registers.scala 33:32]
      registerOut <= _T_3; // @[Registers.scala 34:17]
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
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Registers4(
  input         clock,
  input         reset,
  input  [15:0] io_regIn,
  input         io_regReset,
  input         io_regWriteEnable,
  output [15:0] io_regOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] registerOut; // @[Registers.scala 80:28]
  assign io_regOut = registerOut; // @[Registers.scala 88:13]
  always @(posedge clock) begin
    if (reset) begin // @[Registers.scala 80:28]
      registerOut <= 16'h0; // @[Registers.scala 80:28]
    end else if (io_regWriteEnable) begin // @[Registers.scala 82:29]
      registerOut <= io_regIn; // @[Registers.scala 83:17]
    end else if (io_regReset) begin // @[Registers.scala 84:30]
      registerOut <= 16'h0; // @[Registers.scala 85:17]
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
  registerOut = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Top(
  input         clock,
  input         reset,
  input  [23:0] io_ImemOut,
  output [15:0] io_ImemAddr,
  input  [15:0] io_DmemOut,
  output [15:0] io_DmemAddr,
  output [15:0] io_DmemIn,
  output        io_DmemWrtEn,
  output        io_end_process
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  CU_clock; // @[top.scala 111:27]
  wire  CU_reset; // @[top.scala 111:27]
  wire  CU_io_z; // @[top.scala 111:27]
  wire [5:0] CU_io_instruction_opcode; // @[top.scala 111:27]
  wire [24:0] CU_io_ctrlsig; // @[top.scala 111:27]
  wire  CU_io_end_process; // @[top.scala 111:27]
  wire  ALU_clock; // @[top.scala 118:27]
  wire  ALU_reset; // @[top.scala 118:27]
  wire [15:0] ALU_io_a; // @[top.scala 118:27]
  wire [15:0] ALU_io_b; // @[top.scala 118:27]
  wire [2:0] ALU_io_fn; // @[top.scala 118:27]
  wire [15:0] ALU_io_y; // @[top.scala 118:27]
  wire  ALU_io_z; // @[top.scala 118:27]
  wire [6:0] INC_Decoder_io_bin; // @[top.scala 127:28]
  wire  INC_Decoder_io_en; // @[top.scala 127:28]
  wire [6:0] INC_Decoder_io_decOut; // @[top.scala 127:28]
  wire [3:0] RST_Decoder_io_bin; // @[top.scala 138:28]
  wire  RST_Decoder_io_en; // @[top.scala 138:28]
  wire [3:0] RST_Decoder_io_decOut; // @[top.scala 138:28]
  wire [3:0] WTR_Decoder_io_bin; // @[top.scala 146:28]
  wire  WTR_Decoder_io_en; // @[top.scala 146:28]
  wire [14:0] WTR_Decoder_io_decOut; // @[top.scala 146:28]
  wire [7:0] OPR_Demux_io_operand; // @[top.scala 165:28]
  wire [2:0] OPR_Demux_io_OPR_sel; // @[top.scala 165:28]
  wire [7:0] OPR_Demux_io_WTR_operand; // @[top.scala 165:28]
  wire [7:0] OPR_Demux_io_INC_operand; // @[top.scala 165:28]
  wire [7:0] OPR_Demux_io_RESET_operand; // @[top.scala 165:28]
  wire [7:0] OPR_Demux_io_WTA_operand; // @[top.scala 165:28]
  wire [3:0] WTA_Mux_io_sel; // @[top.scala 173:28]
  wire  WTA_Mux_io_en; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_muxOut; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_N; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_M; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_P; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_R1; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_ROW; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_COL; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_CURR; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_SUM; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_STA; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_STB; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_STC; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_A; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_B; // @[top.scala 173:28]
  wire [15:0] WTA_Mux_io_wta_R; // @[top.scala 173:28]
  wire [14:0] BUS_io_mux_out; // @[top.scala 194:19]
  wire [15:0] BUS_io_DRbufout; // @[top.scala 194:19]
  wire [15:0] BUS_io_ACbufout; // @[top.scala 194:19]
  wire [23:0] BUS_io_Membufout; // @[top.scala 194:19]
  wire [15:0] BUS_io_DMembufout; // @[top.scala 194:19]
  wire [23:0] BUS_io_BusOut; // @[top.scala 194:19]
  wire  reg_IR_clock; // @[top.scala 206:26]
  wire  reg_IR_reset; // @[top.scala 206:26]
  wire [15:0] reg_IR_io_regIn; // @[top.scala 206:26]
  wire  reg_IR_io_regWriteEnable; // @[top.scala 206:26]
  wire [15:0] reg_IR_io_regOut; // @[top.scala 206:26]
  wire  reg_AR_clock; // @[top.scala 211:26]
  wire  reg_AR_reset; // @[top.scala 211:26]
  wire [15:0] reg_AR_io_regIn; // @[top.scala 211:26]
  wire  reg_AR_io_regWriteEnable; // @[top.scala 211:26]
  wire [15:0] reg_AR_io_regOut; // @[top.scala 211:26]
  wire  reg_PC_clock; // @[top.scala 216:26]
  wire  reg_PC_reset; // @[top.scala 216:26]
  wire [15:0] reg_PC_io_regIn; // @[top.scala 216:26]
  wire  reg_PC_io_regReset; // @[top.scala 216:26]
  wire  reg_PC_io_regInc; // @[top.scala 216:26]
  wire  reg_PC_io_regWriteEnable; // @[top.scala 216:26]
  wire [15:0] reg_PC_io_regOut; // @[top.scala 216:26]
  wire  reg_DR_clock; // @[top.scala 223:26]
  wire  reg_DR_reset; // @[top.scala 223:26]
  wire [15:0] reg_DR_io_regIn; // @[top.scala 223:26]
  wire  reg_DR_io_regWriteEnable; // @[top.scala 223:26]
  wire [15:0] reg_DR_io_regOut; // @[top.scala 223:26]
  wire  reg_AC_clock; // @[top.scala 228:26]
  wire  reg_AC_reset; // @[top.scala 228:26]
  wire [15:0] reg_AC_io_regIn; // @[top.scala 228:26]
  wire [15:0] reg_AC_io_alu_out; // @[top.scala 228:26]
  wire  reg_AC_io_regReset; // @[top.scala 228:26]
  wire  reg_AC_io_alu_write_en; // @[top.scala 228:26]
  wire  reg_AC_io_regWriteEnable; // @[top.scala 228:26]
  wire [15:0] reg_AC_io_regOut; // @[top.scala 228:26]
  wire  reg_N_clock; // @[top.scala 241:22]
  wire  reg_N_reset; // @[top.scala 241:22]
  wire [15:0] reg_N_io_regIn; // @[top.scala 241:22]
  wire  reg_N_io_regWriteEnable; // @[top.scala 241:22]
  wire [15:0] reg_N_io_regOut; // @[top.scala 241:22]
  wire  reg_M_clock; // @[top.scala 246:22]
  wire  reg_M_reset; // @[top.scala 246:22]
  wire [15:0] reg_M_io_regIn; // @[top.scala 246:22]
  wire  reg_M_io_regWriteEnable; // @[top.scala 246:22]
  wire [15:0] reg_M_io_regOut; // @[top.scala 246:22]
  wire  reg_P_clock; // @[top.scala 251:22]
  wire  reg_P_reset; // @[top.scala 251:22]
  wire [15:0] reg_P_io_regIn; // @[top.scala 251:22]
  wire  reg_P_io_regWriteEnable; // @[top.scala 251:22]
  wire [15:0] reg_P_io_regOut; // @[top.scala 251:22]
  wire  reg_R1_clock; // @[top.scala 256:24]
  wire  reg_R1_reset; // @[top.scala 256:24]
  wire [15:0] reg_R1_io_regIn; // @[top.scala 256:24]
  wire  reg_R1_io_regInc; // @[top.scala 256:24]
  wire  reg_R1_io_regWriteEnable; // @[top.scala 256:24]
  wire [15:0] reg_R1_io_regOut; // @[top.scala 256:24]
  wire  reg_ROW_clock; // @[top.scala 262:24]
  wire  reg_ROW_reset; // @[top.scala 262:24]
  wire [15:0] reg_ROW_io_regIn; // @[top.scala 262:24]
  wire  reg_ROW_io_regReset; // @[top.scala 262:24]
  wire  reg_ROW_io_regInc; // @[top.scala 262:24]
  wire  reg_ROW_io_regWriteEnable; // @[top.scala 262:24]
  wire [15:0] reg_ROW_io_regOut; // @[top.scala 262:24]
  wire  reg_COL_clock; // @[top.scala 269:24]
  wire  reg_COL_reset; // @[top.scala 269:24]
  wire [15:0] reg_COL_io_regIn; // @[top.scala 269:24]
  wire  reg_COL_io_regReset; // @[top.scala 269:24]
  wire  reg_COL_io_regInc; // @[top.scala 269:24]
  wire  reg_COL_io_regWriteEnable; // @[top.scala 269:24]
  wire [15:0] reg_COL_io_regOut; // @[top.scala 269:24]
  wire  reg_CURR_clock; // @[top.scala 276:24]
  wire  reg_CURR_reset; // @[top.scala 276:24]
  wire [15:0] reg_CURR_io_regIn; // @[top.scala 276:24]
  wire  reg_CURR_io_regReset; // @[top.scala 276:24]
  wire  reg_CURR_io_regInc; // @[top.scala 276:24]
  wire  reg_CURR_io_regWriteEnable; // @[top.scala 276:24]
  wire [15:0] reg_CURR_io_regOut; // @[top.scala 276:24]
  wire  reg_SUM_clock; // @[top.scala 283:24]
  wire  reg_SUM_reset; // @[top.scala 283:24]
  wire [15:0] reg_SUM_io_regIn; // @[top.scala 283:24]
  wire  reg_SUM_io_regReset; // @[top.scala 283:24]
  wire  reg_SUM_io_regWriteEnable; // @[top.scala 283:24]
  wire [15:0] reg_SUM_io_regOut; // @[top.scala 283:24]
  wire  reg_STA_clock; // @[top.scala 289:24]
  wire  reg_STA_reset; // @[top.scala 289:24]
  wire [15:0] reg_STA_io_regIn; // @[top.scala 289:24]
  wire  reg_STA_io_regInc; // @[top.scala 289:24]
  wire  reg_STA_io_regWriteEnable; // @[top.scala 289:24]
  wire [15:0] reg_STA_io_regOut; // @[top.scala 289:24]
  wire  reg_STB_clock; // @[top.scala 295:24]
  wire  reg_STB_reset; // @[top.scala 295:24]
  wire [15:0] reg_STB_io_regIn; // @[top.scala 295:24]
  wire  reg_STB_io_regInc; // @[top.scala 295:24]
  wire  reg_STB_io_regWriteEnable; // @[top.scala 295:24]
  wire [15:0] reg_STB_io_regOut; // @[top.scala 295:24]
  wire  reg_STC_clock; // @[top.scala 301:24]
  wire  reg_STC_reset; // @[top.scala 301:24]
  wire [15:0] reg_STC_io_regIn; // @[top.scala 301:24]
  wire  reg_STC_io_regInc; // @[top.scala 301:24]
  wire  reg_STC_io_regWriteEnable; // @[top.scala 301:24]
  wire [15:0] reg_STC_io_regOut; // @[top.scala 301:24]
  wire  reg_A_clock; // @[top.scala 307:24]
  wire  reg_A_reset; // @[top.scala 307:24]
  wire [15:0] reg_A_io_regIn; // @[top.scala 307:24]
  wire  reg_A_io_regWriteEnable; // @[top.scala 307:24]
  wire [15:0] reg_A_io_regOut; // @[top.scala 307:24]
  wire  reg_B_clock; // @[top.scala 312:24]
  wire  reg_B_reset; // @[top.scala 312:24]
  wire [15:0] reg_B_io_regIn; // @[top.scala 312:24]
  wire  reg_B_io_regWriteEnable; // @[top.scala 312:24]
  wire [15:0] reg_B_io_regOut; // @[top.scala 312:24]
  wire  reg_R_clock; // @[top.scala 317:24]
  wire  reg_R_reset; // @[top.scala 317:24]
  wire [15:0] reg_R_io_regIn; // @[top.scala 317:24]
  wire  reg_R_io_regWriteEnable; // @[top.scala 317:24]
  wire [15:0] reg_R_io_regOut; // @[top.scala 317:24]
  wire [24:0] ctrlsig = CU_io_ctrlsig;
  wire [15:0] IRout = reg_IR_io_regOut;
  wire [23:0] bus = BUS_io_BusOut;
  wire [7:0] INC = OPR_Demux_io_INC_operand;
  wire [7:0] RESET = OPR_Demux_io_RESET_operand;
  wire [7:0] WTR = OPR_Demux_io_WTR_operand;
  wire [15:0] DRout = reg_DR_io_regOut;
  wire [7:0] WTA = OPR_Demux_io_WTA_operand;
  reg  REG; // @[top.scala 237:19]
  wire [15:0] ACout = reg_AC_io_regOut;
  wire [15:0] mux_out = WTA_Mux_io_muxOut;
  Controller CU ( // @[top.scala 111:27]
    .clock(CU_clock),
    .reset(CU_reset),
    .io_z(CU_io_z),
    .io_instruction_opcode(CU_io_instruction_opcode),
    .io_ctrlsig(CU_io_ctrlsig),
    .io_end_process(CU_io_end_process)
  );
  ALU ALU ( // @[top.scala 118:27]
    .clock(ALU_clock),
    .reset(ALU_reset),
    .io_a(ALU_io_a),
    .io_b(ALU_io_b),
    .io_fn(ALU_io_fn),
    .io_y(ALU_io_y),
    .io_z(ALU_io_z)
  );
  Decoders INC_Decoder ( // @[top.scala 127:28]
    .io_bin(INC_Decoder_io_bin),
    .io_en(INC_Decoder_io_en),
    .io_decOut(INC_Decoder_io_decOut)
  );
  Decoders_1 RST_Decoder ( // @[top.scala 138:28]
    .io_bin(RST_Decoder_io_bin),
    .io_en(RST_Decoder_io_en),
    .io_decOut(RST_Decoder_io_decOut)
  );
  Decoders_2 WTR_Decoder ( // @[top.scala 146:28]
    .io_bin(WTR_Decoder_io_bin),
    .io_en(WTR_Decoder_io_en),
    .io_decOut(WTR_Decoder_io_decOut)
  );
  OPR_demux OPR_Demux ( // @[top.scala 165:28]
    .io_operand(OPR_Demux_io_operand),
    .io_OPR_sel(OPR_Demux_io_OPR_sel),
    .io_WTR_operand(OPR_Demux_io_WTR_operand),
    .io_INC_operand(OPR_Demux_io_INC_operand),
    .io_RESET_operand(OPR_Demux_io_RESET_operand),
    .io_WTA_operand(OPR_Demux_io_WTA_operand)
  );
  WTA_mux WTA_Mux ( // @[top.scala 173:28]
    .io_sel(WTA_Mux_io_sel),
    .io_en(WTA_Mux_io_en),
    .io_muxOut(WTA_Mux_io_muxOut),
    .io_wta_N(WTA_Mux_io_wta_N),
    .io_wta_M(WTA_Mux_io_wta_M),
    .io_wta_P(WTA_Mux_io_wta_P),
    .io_wta_R1(WTA_Mux_io_wta_R1),
    .io_wta_ROW(WTA_Mux_io_wta_ROW),
    .io_wta_COL(WTA_Mux_io_wta_COL),
    .io_wta_CURR(WTA_Mux_io_wta_CURR),
    .io_wta_SUM(WTA_Mux_io_wta_SUM),
    .io_wta_STA(WTA_Mux_io_wta_STA),
    .io_wta_STB(WTA_Mux_io_wta_STB),
    .io_wta_STC(WTA_Mux_io_wta_STC),
    .io_wta_A(WTA_Mux_io_wta_A),
    .io_wta_B(WTA_Mux_io_wta_B),
    .io_wta_R(WTA_Mux_io_wta_R)
  );
  Bus BUS ( // @[top.scala 194:19]
    .io_mux_out(BUS_io_mux_out),
    .io_DRbufout(BUS_io_DRbufout),
    .io_ACbufout(BUS_io_ACbufout),
    .io_Membufout(BUS_io_Membufout),
    .io_DMembufout(BUS_io_DMembufout),
    .io_BusOut(BUS_io_BusOut)
  );
  Registers1 reg_IR ( // @[top.scala 206:26]
    .clock(reg_IR_clock),
    .reset(reg_IR_reset),
    .io_regIn(reg_IR_io_regIn),
    .io_regWriteEnable(reg_IR_io_regWriteEnable),
    .io_regOut(reg_IR_io_regOut)
  );
  Registers1 reg_AR ( // @[top.scala 211:26]
    .clock(reg_AR_clock),
    .reset(reg_AR_reset),
    .io_regIn(reg_AR_io_regIn),
    .io_regWriteEnable(reg_AR_io_regWriteEnable),
    .io_regOut(reg_AR_io_regOut)
  );
  Registers3 reg_PC ( // @[top.scala 216:26]
    .clock(reg_PC_clock),
    .reset(reg_PC_reset),
    .io_regIn(reg_PC_io_regIn),
    .io_regReset(reg_PC_io_regReset),
    .io_regInc(reg_PC_io_regInc),
    .io_regWriteEnable(reg_PC_io_regWriteEnable),
    .io_regOut(reg_PC_io_regOut)
  );
  Registers1 reg_DR ( // @[top.scala 223:26]
    .clock(reg_DR_clock),
    .reset(reg_DR_reset),
    .io_regIn(reg_DR_io_regIn),
    .io_regWriteEnable(reg_DR_io_regWriteEnable),
    .io_regOut(reg_DR_io_regOut)
  );
  RegisterALU reg_AC ( // @[top.scala 228:26]
    .clock(reg_AC_clock),
    .reset(reg_AC_reset),
    .io_regIn(reg_AC_io_regIn),
    .io_alu_out(reg_AC_io_alu_out),
    .io_regReset(reg_AC_io_regReset),
    .io_alu_write_en(reg_AC_io_alu_write_en),
    .io_regWriteEnable(reg_AC_io_regWriteEnable),
    .io_regOut(reg_AC_io_regOut)
  );
  Registers1 reg_N ( // @[top.scala 241:22]
    .clock(reg_N_clock),
    .reset(reg_N_reset),
    .io_regIn(reg_N_io_regIn),
    .io_regWriteEnable(reg_N_io_regWriteEnable),
    .io_regOut(reg_N_io_regOut)
  );
  Registers1 reg_M ( // @[top.scala 246:22]
    .clock(reg_M_clock),
    .reset(reg_M_reset),
    .io_regIn(reg_M_io_regIn),
    .io_regWriteEnable(reg_M_io_regWriteEnable),
    .io_regOut(reg_M_io_regOut)
  );
  Registers1 reg_P ( // @[top.scala 251:22]
    .clock(reg_P_clock),
    .reset(reg_P_reset),
    .io_regIn(reg_P_io_regIn),
    .io_regWriteEnable(reg_P_io_regWriteEnable),
    .io_regOut(reg_P_io_regOut)
  );
  Registers2 reg_R1 ( // @[top.scala 256:24]
    .clock(reg_R1_clock),
    .reset(reg_R1_reset),
    .io_regIn(reg_R1_io_regIn),
    .io_regInc(reg_R1_io_regInc),
    .io_regWriteEnable(reg_R1_io_regWriteEnable),
    .io_regOut(reg_R1_io_regOut)
  );
  Registers3 reg_ROW ( // @[top.scala 262:24]
    .clock(reg_ROW_clock),
    .reset(reg_ROW_reset),
    .io_regIn(reg_ROW_io_regIn),
    .io_regReset(reg_ROW_io_regReset),
    .io_regInc(reg_ROW_io_regInc),
    .io_regWriteEnable(reg_ROW_io_regWriteEnable),
    .io_regOut(reg_ROW_io_regOut)
  );
  Registers3 reg_COL ( // @[top.scala 269:24]
    .clock(reg_COL_clock),
    .reset(reg_COL_reset),
    .io_regIn(reg_COL_io_regIn),
    .io_regReset(reg_COL_io_regReset),
    .io_regInc(reg_COL_io_regInc),
    .io_regWriteEnable(reg_COL_io_regWriteEnable),
    .io_regOut(reg_COL_io_regOut)
  );
  Registers3 reg_CURR ( // @[top.scala 276:24]
    .clock(reg_CURR_clock),
    .reset(reg_CURR_reset),
    .io_regIn(reg_CURR_io_regIn),
    .io_regReset(reg_CURR_io_regReset),
    .io_regInc(reg_CURR_io_regInc),
    .io_regWriteEnable(reg_CURR_io_regWriteEnable),
    .io_regOut(reg_CURR_io_regOut)
  );
  Registers4 reg_SUM ( // @[top.scala 283:24]
    .clock(reg_SUM_clock),
    .reset(reg_SUM_reset),
    .io_regIn(reg_SUM_io_regIn),
    .io_regReset(reg_SUM_io_regReset),
    .io_regWriteEnable(reg_SUM_io_regWriteEnable),
    .io_regOut(reg_SUM_io_regOut)
  );
  Registers2 reg_STA ( // @[top.scala 289:24]
    .clock(reg_STA_clock),
    .reset(reg_STA_reset),
    .io_regIn(reg_STA_io_regIn),
    .io_regInc(reg_STA_io_regInc),
    .io_regWriteEnable(reg_STA_io_regWriteEnable),
    .io_regOut(reg_STA_io_regOut)
  );
  Registers2 reg_STB ( // @[top.scala 295:24]
    .clock(reg_STB_clock),
    .reset(reg_STB_reset),
    .io_regIn(reg_STB_io_regIn),
    .io_regInc(reg_STB_io_regInc),
    .io_regWriteEnable(reg_STB_io_regWriteEnable),
    .io_regOut(reg_STB_io_regOut)
  );
  Registers2 reg_STC ( // @[top.scala 301:24]
    .clock(reg_STC_clock),
    .reset(reg_STC_reset),
    .io_regIn(reg_STC_io_regIn),
    .io_regInc(reg_STC_io_regInc),
    .io_regWriteEnable(reg_STC_io_regWriteEnable),
    .io_regOut(reg_STC_io_regOut)
  );
  Registers1 reg_A ( // @[top.scala 307:24]
    .clock(reg_A_clock),
    .reset(reg_A_reset),
    .io_regIn(reg_A_io_regIn),
    .io_regWriteEnable(reg_A_io_regWriteEnable),
    .io_regOut(reg_A_io_regOut)
  );
  Registers1 reg_B ( // @[top.scala 312:24]
    .clock(reg_B_clock),
    .reset(reg_B_reset),
    .io_regIn(reg_B_io_regIn),
    .io_regWriteEnable(reg_B_io_regWriteEnable),
    .io_regOut(reg_B_io_regOut)
  );
  Registers1 reg_R ( // @[top.scala 317:24]
    .clock(reg_R_clock),
    .reset(reg_R_reset),
    .io_regIn(reg_R_io_regIn),
    .io_regWriteEnable(reg_R_io_regWriteEnable),
    .io_regOut(reg_R_io_regOut)
  );
  assign io_ImemAddr = reg_PC_io_regOut; // @[top.scala 101:17]
  assign io_DmemAddr = reg_AR_io_regOut; // @[top.scala 103:17]
  assign io_DmemIn = reg_DR_io_regOut; // @[top.scala 104:17]
  assign io_DmemWrtEn = ctrlsig[15]; // @[top.scala 106:27]
  assign io_end_process = CU_io_end_process; // @[top.scala 115:33]
  assign CU_clock = clock;
  assign CU_reset = reset;
  assign CU_io_z = REG; // @[top.scala 112:33]
  assign CU_io_instruction_opcode = IRout[5:0]; // @[top.scala 113:41]
  assign ALU_clock = clock;
  assign ALU_reset = reset;
  assign ALU_io_a = reg_AC_io_regOut; // @[top.scala 119:29]
  assign ALU_io_b = bus[15:0]; // @[top.scala 120:35]
  assign ALU_io_fn = ctrlsig[14:12]; // @[top.scala 121:39]
  assign INC_Decoder_io_bin = INC[6:0]; // @[top.scala 128:35]
  assign INC_Decoder_io_en = ctrlsig[0]; // @[top.scala 129:39]
  assign RST_Decoder_io_bin = RESET[3:0]; // @[top.scala 139:37]
  assign RST_Decoder_io_en = ctrlsig[1]; // @[top.scala 140:39]
  assign WTR_Decoder_io_bin = WTR[3:0]; // @[top.scala 147:35]
  assign WTR_Decoder_io_en = ctrlsig[2]; // @[top.scala 148:39]
  assign OPR_Demux_io_operand = DRout[7:0]; // @[top.scala 166:41]
  assign OPR_Demux_io_OPR_sel = ctrlsig[7:5]; // @[top.scala 167:43]
  assign WTA_Mux_io_sel = WTA[3:0]; // @[top.scala 174:38]
  assign WTA_Mux_io_en = ctrlsig[9]; // @[top.scala 175:42]
  assign WTA_Mux_io_wta_N = reg_N_io_regOut; // @[top.scala 176:32]
  assign WTA_Mux_io_wta_M = reg_M_io_regOut; // @[top.scala 177:32]
  assign WTA_Mux_io_wta_P = reg_P_io_regOut; // @[top.scala 178:32]
  assign WTA_Mux_io_wta_R1 = reg_R1_io_regOut; // @[top.scala 179:32]
  assign WTA_Mux_io_wta_ROW = reg_ROW_io_regOut; // @[top.scala 180:32]
  assign WTA_Mux_io_wta_COL = reg_COL_io_regOut; // @[top.scala 181:32]
  assign WTA_Mux_io_wta_CURR = reg_CURR_io_regOut; // @[top.scala 182:32]
  assign WTA_Mux_io_wta_SUM = reg_SUM_io_regOut; // @[top.scala 183:32]
  assign WTA_Mux_io_wta_STA = reg_STA_io_regOut; // @[top.scala 184:32]
  assign WTA_Mux_io_wta_STB = reg_STB_io_regOut; // @[top.scala 185:32]
  assign WTA_Mux_io_wta_STC = reg_STC_io_regOut; // @[top.scala 186:32]
  assign WTA_Mux_io_wta_A = reg_A_io_regOut; // @[top.scala 187:32]
  assign WTA_Mux_io_wta_B = reg_B_io_regOut; // @[top.scala 188:32]
  assign WTA_Mux_io_wta_R = reg_R_io_regOut; // @[top.scala 189:32]
  assign BUS_io_mux_out = mux_out[14:0]; // @[top.scala 196:23]
  assign BUS_io_DRbufout = ctrlsig[21] ? DRout : 16'h0; // @[top.scala 328:20]
  assign BUS_io_ACbufout = ctrlsig[20] ? ACout : 16'h0; // @[top.scala 327:20]
  assign BUS_io_Membufout = ctrlsig[8] ? io_ImemOut : 24'h0; // @[top.scala 326:20]
  assign BUS_io_DMembufout = ctrlsig[16] ? io_DmemOut : 16'h0; // @[top.scala 325:20]
  assign reg_IR_clock = clock;
  assign reg_IR_reset = reset;
  assign reg_IR_io_regIn = {{8'd0}, bus[23:16]}; // @[top.scala 207:36]
  assign reg_IR_io_regWriteEnable = ctrlsig[18]; // @[top.scala 208:40]
  assign reg_AR_clock = clock;
  assign reg_AR_reset = reset;
  assign reg_AR_io_regIn = bus[15:0]; // @[top.scala 212:36]
  assign reg_AR_io_regWriteEnable = ctrlsig[17]; // @[top.scala 213:40]
  assign reg_PC_clock = clock;
  assign reg_PC_reset = reset;
  assign reg_PC_io_regIn = bus[15:0]; // @[top.scala 217:36]
  assign reg_PC_io_regReset = ctrlsig[23]; // @[top.scala 220:40]
  assign reg_PC_io_regInc = ctrlsig[19]; // @[top.scala 219:40]
  assign reg_PC_io_regWriteEnable = ctrlsig[4]; // @[top.scala 218:40]
  assign reg_DR_clock = clock;
  assign reg_DR_reset = reset;
  assign reg_DR_io_regIn = bus[15:0]; // @[top.scala 224:36]
  assign reg_DR_io_regWriteEnable = ctrlsig[3]; // @[top.scala 225:40]
  assign reg_AC_clock = clock;
  assign reg_AC_reset = reset;
  assign reg_AC_io_regIn = bus[15:0]; // @[top.scala 229:36]
  assign reg_AC_io_alu_out = ALU_io_y; // @[top.scala 230:30]
  assign reg_AC_io_regReset = ctrlsig[22]; // @[top.scala 231:40]
  assign reg_AC_io_alu_write_en = ctrlsig[11]; // @[top.scala 232:40]
  assign reg_AC_io_regWriteEnable = ctrlsig[10]; // @[top.scala 233:40]
  assign reg_N_clock = clock;
  assign reg_N_reset = reset;
  assign reg_N_io_regIn = bus[15:0]; // @[top.scala 242:29]
  assign reg_N_io_regWriteEnable = WTR_Decoder_io_decOut[0]; // @[top.scala 149:53]
  assign reg_M_clock = clock;
  assign reg_M_reset = reset;
  assign reg_M_io_regIn = bus[15:0]; // @[top.scala 247:29]
  assign reg_M_io_regWriteEnable = WTR_Decoder_io_decOut[1]; // @[top.scala 150:53]
  assign reg_P_clock = clock;
  assign reg_P_reset = reset;
  assign reg_P_io_regIn = bus[15:0]; // @[top.scala 252:29]
  assign reg_P_io_regWriteEnable = WTR_Decoder_io_decOut[2]; // @[top.scala 151:53]
  assign reg_R1_clock = clock;
  assign reg_R1_reset = reset;
  assign reg_R1_io_regIn = bus[15:0]; // @[top.scala 257:30]
  assign reg_R1_io_regInc = INC_Decoder_io_decOut[6]; // @[top.scala 136:53]
  assign reg_R1_io_regWriteEnable = WTR_Decoder_io_decOut[3]; // @[top.scala 152:53]
  assign reg_ROW_clock = clock;
  assign reg_ROW_reset = reset;
  assign reg_ROW_io_regIn = bus[15:0]; // @[top.scala 263:31]
  assign reg_ROW_io_regReset = RST_Decoder_io_decOut[0]; // @[top.scala 141:53]
  assign reg_ROW_io_regInc = INC_Decoder_io_decOut[0]; // @[top.scala 130:53]
  assign reg_ROW_io_regWriteEnable = WTR_Decoder_io_decOut[4]; // @[top.scala 153:53]
  assign reg_COL_clock = clock;
  assign reg_COL_reset = reset;
  assign reg_COL_io_regIn = bus[15:0]; // @[top.scala 270:31]
  assign reg_COL_io_regReset = RST_Decoder_io_decOut[1]; // @[top.scala 142:53]
  assign reg_COL_io_regInc = INC_Decoder_io_decOut[1]; // @[top.scala 131:53]
  assign reg_COL_io_regWriteEnable = WTR_Decoder_io_decOut[5]; // @[top.scala 154:53]
  assign reg_CURR_clock = clock;
  assign reg_CURR_reset = reset;
  assign reg_CURR_io_regIn = bus[15:0]; // @[top.scala 277:33]
  assign reg_CURR_io_regReset = RST_Decoder_io_decOut[2]; // @[top.scala 143:53]
  assign reg_CURR_io_regInc = INC_Decoder_io_decOut[2]; // @[top.scala 132:53]
  assign reg_CURR_io_regWriteEnable = WTR_Decoder_io_decOut[6]; // @[top.scala 155:53]
  assign reg_SUM_clock = clock;
  assign reg_SUM_reset = reset;
  assign reg_SUM_io_regIn = bus[15:0]; // @[top.scala 284:31]
  assign reg_SUM_io_regReset = RST_Decoder_io_decOut[3]; // @[top.scala 144:53]
  assign reg_SUM_io_regWriteEnable = WTR_Decoder_io_decOut[7]; // @[top.scala 156:53]
  assign reg_STA_clock = clock;
  assign reg_STA_reset = reset;
  assign reg_STA_io_regIn = bus[15:0]; // @[top.scala 290:33]
  assign reg_STA_io_regInc = INC_Decoder_io_decOut[3]; // @[top.scala 133:53]
  assign reg_STA_io_regWriteEnable = WTR_Decoder_io_decOut[8]; // @[top.scala 157:53]
  assign reg_STB_clock = clock;
  assign reg_STB_reset = reset;
  assign reg_STB_io_regIn = bus[15:0]; // @[top.scala 296:33]
  assign reg_STB_io_regInc = INC_Decoder_io_decOut[4]; // @[top.scala 134:53]
  assign reg_STB_io_regWriteEnable = WTR_Decoder_io_decOut[9]; // @[top.scala 158:53]
  assign reg_STC_clock = clock;
  assign reg_STC_reset = reset;
  assign reg_STC_io_regIn = bus[15:0]; // @[top.scala 302:31]
  assign reg_STC_io_regInc = INC_Decoder_io_decOut[5]; // @[top.scala 135:53]
  assign reg_STC_io_regWriteEnable = WTR_Decoder_io_decOut[10]; // @[top.scala 159:53]
  assign reg_A_clock = clock;
  assign reg_A_reset = reset;
  assign reg_A_io_regIn = bus[15:0]; // @[top.scala 308:29]
  assign reg_A_io_regWriteEnable = WTR_Decoder_io_decOut[11]; // @[top.scala 160:53]
  assign reg_B_clock = clock;
  assign reg_B_reset = reset;
  assign reg_B_io_regIn = bus[15:0]; // @[top.scala 313:29]
  assign reg_B_io_regWriteEnable = WTR_Decoder_io_decOut[12]; // @[top.scala 161:53]
  assign reg_R_clock = clock;
  assign reg_R_reset = reset;
  assign reg_R_io_regIn = bus[15:0]; // @[top.scala 318:29]
  assign reg_R_io_regWriteEnable = WTR_Decoder_io_decOut[13]; // @[top.scala 162:53]
  always @(posedge clock) begin
    REG <= ALU_io_z; // @[top.scala 237:19]
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
  REG = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
