`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:24 12/08/2016 
// Design Name: 
// Module Name:    CtrlUnit 
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
module CtrlUnit(in_op, CLK, RST, Zero, PCWre,  Sign,  InsMemRW, IRWre, WrRegDSrc, RegDst, ALUOp, ALUSrcA, ALUSrcB, PCSrc, RD, WR, ALUM2Reg, ExtSel, RegWre);
	input wire [5:0] in_op;
	input wire CLK, RST, Zero,Sign;
	
	output reg [1:0]RegDst, PCSrc;
	output reg [2:0]ALUOp;
	output reg InsMemRW, PCWre ,IRWre , WrRegDSrc , ALUSrcA , ALUSrcB , RD , WR , ALUM2Reg , ExtSel , RegWre ; 
	
	parameter [2:0] IF = 3'b000,
					ID = 3'b001,
					EXE1 = 3'b110,
					EXE2 = 3'b101,
					EXE3 = 3'b010,
					WB1 = 3'b111,
					WB2 = 3'b100,
					MEM = 3'b011;
	
	parameter [5:0] Add = 6'b000000,
					Sub = 6'b000001,
					Addi = 6'b000010,  
					Or = 6'b010000,
                    And = 6'b010001,
                    Ori = 6'b010010,  
                    Sll = 6'b011000,  
                    Slt = 6'b100110,
					Slti = 6'b100111,
                    Sw = 6'b110000,
                    Lw = 6'b110001,
                    Beq = 6'b110100,
                    J = 6'b111000,
                    Jr = 6'b111001,
                    Jal = 6'b111010,
                    Halt = 6'b111111,
	                Bne = 6'b110101,
	                Bgtz = 6'b110110;
	                
	reg [2:0] State, Next;
	
	initial begin
		PCWre = 0;  
        InsMemRW = 0;  
        IRWre = 0;  
        WrRegDSrc = 0;  
        RegWre = 0;  
        ALUSrcA = 0;
		ALUSrcB = 0; 
        ALUM2Reg = 0;  
        RD = 0;
		WR = 0;
        ExtSel = 1;  
        RegDst = 2'b11;  
        PCSrc = 2'b00;  
        ALUOp = 0;  
        State = IF;
	
	end
	
	always @(negedge CLK) begin
		if (RST == 1)
			State <= IF;
		else
			State <= Next;
	end
	
	always @(State or in_op ) begin 
		case(State)
			IF: 
				Next = ID;
			ID: begin
				case (in_op[5:3])
					3'b111: 			// j, jal, jr, halt
						Next = IF;	
					3'b110:	begin
						if (in_op == Beq || in_op == Bne || in_op == Bgtz) 
							Next = EXE2;	// beq 
						else 
							Next = EXE3;	// sw, lw
					end
					default:			// add, sub, addi, or, and, ori, sll, slt, slti
						Next = EXE1;
				endcase
			end
			EXE1:
				Next = WB1;
			EXE2:
				Next = IF;
			EXE3:
				Next = MEM;
			MEM: begin
				if (in_op == Lw)
					Next = WB2;
				else
					Next = IF;
			end
			WB1:
				Next = IF;
			WB2:
				Next = IF;
		endcase
	end
	
	always @(State or in_op) begin
	
		if (State == IF && in_op != Halt)
			PCWre = 1;
		else
			PCWre = 0;

		if (in_op == Sll)
			ALUSrcA = 1;
		else
			ALUSrcA = 0;

		if (in_op == Addi || in_op == Slti || in_op == Ori || in_op == Lw || in_op == Sw)
			ALUSrcB = 1;
		else
			ALUSrcB = 0;
		
		if (State == WB2)
			ALUM2Reg = 1;
		else
			ALUM2Reg = 0;
		
		if (State == WB1 || State == WB2 || in_op == Jal)
			RegWre = 1;
		else
			RegWre = 0;
			
		if (State == IF)
			RegWre = 0;
			
		if (State == WB1 || State == WB2)
			WrRegDSrc = 1;
		else 
			WrRegDSrc = 0;
		
		InsMemRW = 1;

		if (State == MEM && in_op == Lw)
			RD = 1;
		else
			RD = 0;
		
		if (State == MEM && in_op == Sw)
			WR = 1;
		else
			WR = 0;
			
		if (State == IF)
			IRWre = 1;
		else
			IRWre = 0;
		
		if (in_op == Addi || in_op == Ori || in_op == Slti || in_op == Lw || in_op == Sw || in_op == Beq || in_op == Bne ||in_op == Bgtz)
			ExtSel = 1;
		else
			ExtSel = 0;
			
		if (in_op == Jal) 
			RegDst = 2'b00;  
        else if (in_op == Addi || in_op == Ori || in_op == Lw || in_op == Slti) 
			RegDst = 2'b01;  
        else 
			RegDst = 2'b10;  
			
		case(in_op)
			J: PCSrc = 2'b11;
			Jal: PCSrc = 2'b11;
			Jr: PCSrc = 2'b10;
			Beq: begin
				if (Zero)
					PCSrc = 2'b01;
				else
					PCSrc = 2'b00;
			end
			Bne: begin
			    if (Zero)
			        PCSrc = 2'b00; 
			    else
			        PCSrc = 2'b01;
			end
			Bgtz: begin
			     if (!Sign)
			         PCSrc = 2'b01;
			     else
			         PCSrc = 2'b00;
			end
			default: PCSrc = 2'b00;
		endcase
		
		case(in_op)
			Sub: ALUOp = 3'b001;  
            Or: ALUOp = 3'b101;  
            And: ALUOp = 3'b110;  
            Ori: ALUOp = 3'b101;  
            Slt: ALUOp = 3'b011;  
			Slti: ALUOp = 3'b011;
            Sll: ALUOp = 3'b100;  
            Beq: ALUOp = 3'b001; 
            Bne: ALUOp = 3'b001;
            Bgtz: ALUOp= 3'b011;
            default: ALUOp = 3'b000; 
		endcase
		
	end
	
endmodule
