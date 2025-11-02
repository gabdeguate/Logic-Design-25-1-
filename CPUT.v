`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:00 06/12/2025 
// Design Name: 
// Module Name:    CPU 
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
module CPUT(
	 input RESET,
	 input sCLK,
    output [6:0] SEG1,
    output [6:0] SEG2,
    output [6:0] SEG3,
    output [6:0] SEG4,
    output [6:0] SEG5,
	 output [7:0] ADD,
	 output [7:0] Ins
    );
	
	wire CLK;
	wire RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUOP;
	wire [1:0] WriteReg;
	//wire [7:0] Ins;
	//wire [7:0] ADD;
	wire [7:0] ReadData1;
	wire [7:0] ReadData2;
	wire [7:0] WriteData;
	wire [7:0] Data3;
	wire [7:0] Out;
	wire [7:0] SignExtend;
	wire [7:0] ALUResult;
	wire [7:0] MemoryRead;
	wire [7:0] PPC, OPC, JPC, NPC;
	
	assign ADD = PPC;
	//freq_div F(RESET, sCLK, CLK);
	assign CLK = sCLK;
	
	CTRL C(Ins[7:6], RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUOP);
	MUX2 M1(Ins[3:2], Ins[1:0], RegDst, WriteReg);
	Register R(Ins[5:4], Ins[3:2], WriteReg, WriteData, RegWrite, CLK, RESET, ReadData1, ReadData2, Out);
	SignEx S(Ins[1:0], SignExtend);
	MUX8 M2(ReadData2, SignExtend, ALUSrc, Data3);
	ALU A1(ReadData1, Data3, ALUOP, ALUResult);
	MEM M3(ALUResult, ReadData2, MemWrite, MemRead, RESET, CLK, MemoryRead);
	MUX8 M4(ALUResult, MemoryRead, MemtoReg, WriteData);
	PC P(NPC, RESET, CLK, PPC);
	ADD A2(PPC, 8'b00000001, OPC);
	ADD A3(OPC, SignExtend, JPC);
	MUX8 M5(OPC, JPC, Branch, NPC);
	Output O(Out, Ins[7:6], SEG1, SEG2, SEG3, SEG4, SEG5);
	IMEM I(ADD, Ins);

endmodule
