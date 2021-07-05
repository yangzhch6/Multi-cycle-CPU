`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 13:58:01
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//nowIns 当前指令
module Top( CLK,RST,Reset ,nowIns,nowPC, nextAddr, aluRe, writeData, readData1, readData2, ExtendData, RAMDataOut, aluOp, Sign,Zero, pcSrc, insToCtrl, Jump_out); 
  input CLK,RST,Reset;
  output [31:0] nowIns,nowPC, nextAddr, aluRe, writeData, readData1, readData2, ExtendData, RAMDataOut,Jump_out;
  output [2:0] aluOp;
  output [5:0] insToCtrl;
  output Zero, Sign;
  output [1:0] pcSrc;
  wire [31:0] pc_in, pc_out, pc_add_4, rom_dataout, pc_add_branch, ALUResult, WriteData, ReadData1, ReadData2,  extendData, DataOut,jump_out;
  wire [2:0] ALUOp;
  wire zero,sign, ExtSel, PCWre, InsMemRW, RegDst, RegWre, ALUSrcA, ALUSrcB, nRD,nWR, ALUM2Reg;
  wire [1:0] PCSrc;
  wire [4:0] fiveChoose1;
  wire [31:0] thChoose2,thChoose1;

  assign nowPC = pc_out;
  assign Jump_out = jump_out;
  assign nowIns = rom_dataout;
  assign nextAddr = pc_in;
  assign aluRe = ALUResult;
  assign writeData = WriteData;
  assign readData1 = ReadData1;
  assign readData2 = ReadData2;
  assign ExtendData = extendData;
  assign RAMDataOut = DataOut;
  assign aluOp = ALUOp;
  assign Zero = zero;
  assign Sign = sign;
  assign pcSrc = PCSrc;
  assign insToCtrl = rom_dataout[31:26];

  //添加到子模块

  dataSelect_321 dataSelect_321(PCSrc,pc_add_4,pc_add_branch,jump_out,pc_in);
  pc pc(CLK, pc_in, PCWre, Reset, pc_out);
  pcAddFour pcAddFour(pc_out, pc_add_4);
  ROM ROM(rom_dataout, pc_out, InsMemRW);

  control_unit control_unit(rom_dataout[31:26], zero, sign,PCWre,ALUSrcA, ALUSrcB,RegWre, RegDst,  InsMemRW, ExtSel, ALUOp, PCSrc, nRD,nWR, ALUM2Reg);

  dataSelect_5_Bit dataSelect_5_Bit_1(rom_dataout[20:16], rom_dataout[15:11], RegDst, fiveChoose1);
  RegFile RegFile(CLK,RST,RegWre, rom_dataout[25:21], rom_dataout[20:16],fiveChoose1, WriteData, ReadData1, ReadData2);

  signExtend signExtend(rom_dataout[15:0], ExtSel, extendData);

  dataSelect_32_Bit dataSelect_32_Bit_1(ReadData1, {{16{rom_dataout[10]}},rom_dataout[10:6]}, ALUSrcA, thChoose1);//alusrca选择
  dataSelect_32_Bit dataSelect_32_Bit_2(ReadData2, extendData, ALUSrcB, thChoose2);//alusrcb选择
  ALU ALU(thChoose1, thChoose2, ALUOp, zero,sign, ALUResult);

  RAM RAM(CLK, ALUResult,ReadData2, nRD,nWR, DataOut);
  dataSelect_32_Bit dataSelect_32_Bit_3(ALUResult, DataOut, ALUM2Reg, WriteData);//写寄存器选择
  pcAddImm pcAddImm(pc_add_4, extendData, pc_add_branch);
  jump jump(pc_out[31:28], rom_dataout[25:0],jump_out);
endmodule