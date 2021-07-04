`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:55:14 12/15/2016
// Design Name:   Mul_Cycle_CPU
// Module Name:   E:/Code/Multiple_Cycle_CPU/test_CPU.v
// Project Name:  Multiple_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mul_Cycle_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CPU;

	// Inputs
	reg CLK;
	reg RST;
	reg [31:0] setPC;

	// Outputs
	wire [5:0] OpCode;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [4:0] sa;
	wire [31:0] Ins;
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;
	wire [31:0] ALU_out;
	wire [31:0] out_PC;
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] e_out;
    wire sb,sign,zero;
	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.CLK(CLK), 
		.RST(RST), 
		.OpCode(OpCode), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.sa(sa), 
		.setPC(setPC), 
		.Ins(Ins), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2), 
		.ALU_out(ALU_out),
		.out_PC(out_PC),
		.A(A),
		.B(B),
		.e_out(e_out),
		.sb(sb),
		.sign(sign),
		.zero(zero)
	);

        initial begin
            // Initialize Inputs
            CLK = 0;
            RST = 1;
            setPC = 32'h00000000;
            #50; 
            CLK = !CLK;
            #50;
            RST = 0;
            forever #50 begin
                CLK = !CLK;
            end
        end
      
endmodule
