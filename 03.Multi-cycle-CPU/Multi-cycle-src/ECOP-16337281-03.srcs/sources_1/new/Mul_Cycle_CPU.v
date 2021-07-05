`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:21:21 12/15/2016 
// Design Name: 
// Module Name:    Mul_Cycle_CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mul_Cycle_CPU(CLK, RST, OpCode, rs, rt, rd, sa, setPC, Ins, ReadData1, ReadData2, ALU_out, out_PC,nextPC,write);
	
	input wire CLK, RST;
	input wire [31:0] setPC;
	output reg [5:0] OpCode;
	output reg [4:0] rs, rt, rd, sa;
	output wire [31:0] Ins, ReadData1, ReadData2, ALU_out, out_PC;
	output reg [31:0] nextPC ,write;
	
	wire [31:0] in_PC, out_PC1, out_PC2, out_PC3, WriteData, TheWriteData,
				DReadData1, DReadData2, DALU_out, DWriteData, ALUA, ALUB, DIns, ExtOut, Jump_Out, MoveOut, DataOut;
	wire [4:0] WriteReg;
	wire [2:0] ALUOp;
	wire [1:0] RegDst, PCSrc;
	wire PCWre, InsMemRW, IRWre, WrRegDSrc, 
			ALUSrcA, ALUSrcB, RD, WR, ALUM2Reg, ExtSel,Zero,Sign; 
	reg [31:0] ExtSa;

	always @(*) begin
		OpCode = DIns[31:26];  
		rs = DIns[25:21];  
		rt = DIns[20:16];  
		rd = DIns[15:11];
		sa = DIns[10:6];
		ExtSa = { {27{1'b0}}, DIns[10:6]};
		nextPC = in_PC;
		write =  TheWriteData;
	end
	
	PC _PC(CLK, RST, PCWre, in_PC, out_PC, setPC);
	Add _Add_4(out_PC, 32'h00000004, out_PC1);
	InsMem _InsMem(InsMemRW, out_PC, Ins);
	CtrlUnit _CtrlUnit(OpCode, CLK, RST, Zero, PCWre,Sign, 
				InsMemRW, IRWre, WrRegDSrc, RegDst, ALUOp, 
				ALUSrcA, ALUSrcB, PCSrc, RD, WR, ALUM2Reg, ExtSel, RegWre);
	IR _IR(CLK, IRWre, Ins, DIns);
	Mux_2_1 _Mux1(WrRegDSrc, out_PC1, DWriteData, TheWriteData);
	Mux_3_1 _Mux2(RegDst, rt, rd, WriteReg);
	RegFile _RegFile(rs, rt, WriteReg, RegWre, CLK, TheWriteData, ReadData1, ReadData2);
	DataDelay ADR(CLK, ReadData1, DReadData1);
	DataDelay BDR(CLK, ReadData2, DReadData2);
	SignExtend _SignalExtend(DIns[15:0], ExtSel, ExtOut);
	Mux_2_1 _Mux3(ALUSrcA, DReadData1, ExtSa, ALUA);
	Mux_2_1 _Mux4(ALUSrcB, DReadData2, ExtOut, ALUB);
	ALU _ALU(ALUA, ALUB, ALUOp, Zero, ALU_out,Sign);
	DataDelay ALUout(CLK, ALU_out, DALU_out);
	DataMem _DataMem(DReadData2, DALU_out, CLK, RD, WR, DataOut);
	Mux_2_1 _Mux5(ALUM2Reg, ALU_out, DataOut, WriteData);
	DataDelay ALUM2DR(CLK, WriteData, DWriteData);
	MoveL _MoveL(ExtOut, MoveOut);
	Add _Add_AB(out_PC1, MoveOut, out_PC2);
	PCJump _PCJump(out_PC1, Ins[25:0], Jump_Out);
	Mux_4_1 _Mux6(PCSrc, out_PC1, out_PC2, ReadData1, Jump_Out, in_PC);
	

endmodule
