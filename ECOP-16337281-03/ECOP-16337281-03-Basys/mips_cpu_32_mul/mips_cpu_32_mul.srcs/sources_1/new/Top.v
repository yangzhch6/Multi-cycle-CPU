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
module Top(CLK, RST, OpCode,Ins,  ReadData1, ReadData2,  ALU_out, out_PC,in_PC,sb,sign,zero,RegWriteData);
	
	input wire CLK, RST;
	wire [31:0] setPC;
	assign setPC = 0;
	output reg [5:0] OpCode;
	reg [4:0] rs, rt, rd, sa;
	output wire [31:0] Ins,RegWriteData, ReadData1, ReadData2, ALU_out,in_PC,  out_PC;
	 reg [31:0] A,B,e_out;
	output reg sb,sign,zero;
	
	wire [31:0] out_PC1, out_PC2, out_PC3, WriteData, 
				DReadData1, DReadData2, DALU_out, DWriteData, ALUA, ALUB, DIns, ExtOut, Jump_Out, MoveOut, DataOut;
	wire [4:0] WriteReg;
	wire [2:0] ALUOp;
	wire [1:0] RegDst, PCSrc;
	wire PCWre, InsMemRW, IRWre, WrRegDSrc, 
			ALUSrcA, ALUSrcB, RD, WR, ALUM2Reg, ExtSel,Zero,Sign,RegWre; 
	reg [31:0] ExtSa;

	always @(*) begin
		OpCode = DIns[31:26];  
		rs = DIns[25:21];  
		rt = DIns[20:16];  
		rd = DIns[15:11];
		sa = DIns[10:6];
		ExtSa = { {27{1'b0}}, DIns[10:6]};
		A = ALUA;
		B = ALUB;
		e_out = ExtOut;
		sb = ALUSrcB;
		sign = Sign;
		zero = Zero; 
	end
	
	PC PC(CLK, RST, PCWre, in_PC, out_PC, setPC);
	Add Add_4(out_PC, 32'h00000004, out_PC1);
	InsMem InsMem(InsMemRW, out_PC, Ins);
	CtrlUnit CU(OpCode, CLK, RST, Zero, PCWre,Sign, 
				InsMemRW, IRWre, WrRegDSrc, RegDst, ALUOp, 
				ALUSrcA, ALUSrcB, PCSrc, RD, WR, ALUM2Reg, ExtSel, RegWre);
	IR IR(CLK, IRWre, Ins, DIns);
	Mux_2_1 Mux1(WrRegDSrc, out_PC1, DWriteData, RegWriteData);
	Mux_3_1 Mux2(RegDst, rt, rd, WriteReg);
	RegFile RegFile(rs, rt, WriteReg, RegWre, CLK, RegWriteData, ReadData1, ReadData2);
	DataDelay ADR(CLK, ReadData1, DReadData1);
	DataDelay BDR(CLK, ReadData2, DReadData2);
	SignExtend SignalExtend(DIns[15:0], ExtSel, ExtOut);
	Mux_2_1 Choose_SrcA(ALUSrcA, DReadData1, ExtSa, ALUA);
	Mux_2_1 Choose_SrcB(ALUSrcB, DReadData2, ExtOut, ALUB);
	ALU ALU(ALUA, ALUB, ALUOp, Zero, ALU_out,Sign);
	DataDelay ALUout(CLK, ALU_out, DALU_out);
	DataMem DataMem(DReadData2, DALU_out, CLK, RD, WR, DataOut);
	Mux_2_1 Choose_DB(ALUM2Reg, ALU_out, DataOut, WriteData);
	DataDelay ALUM2DR(CLK, WriteData, DWriteData);
	MoveL MoveL(ExtOut, MoveOut);
	Add Add_AB(out_PC1, MoveOut, out_PC2);
	PCJump PCJump(out_PC1, Ins[25:0], Jump_Out);
	Mux_4_1 Choose_PC(PCSrc, out_PC1, out_PC2, ReadData1, Jump_Out, in_PC);
	

endmodule
