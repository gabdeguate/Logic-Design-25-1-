`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:05 06/11/2025 
// Design Name: 
// Module Name:    CTRL 
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
module CTRL(
    input [1:0] A,
    output RegDst,
    output RegWrite,
    output ALUSrc,
    output Branch,
    output MemRead,
    output MemWrite,
    output MemtoReg,
    output ALUOP
    );
	
	reg [7:0] out;
	
	always @(A) begin
		case(A)
			4'b00 : out <= 8'b11000001;
			4'b01 : out <= 8'b01101011;
			4'b10 : out <= 8'b00100101;
			4'b11 : out <= 8'b00010000;
		endcase
	end
	
	assign RegDst = out[7];
	assign RegWrite = out[6];
   assign ALUSrc = out[5];
   assign Branch = out[4];
   assign MemRead = out[3];
   assign MemWrite = out[2];
   assign MemtoReg = out[1];
	assign ALUOP = out[0];

endmodule
