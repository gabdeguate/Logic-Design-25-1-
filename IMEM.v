`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:07 06/12/2025 
// Design Name: 
// Module Name:    IMEM 
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
module IMEM(
    input [7:0] ADD,
    output [7:0] Ins
    );
	wire [7:0] mem[25:0];
	
	assign mem[0] = 8'b01001000; // s2 = m[s0] = 0 		/ 0 0 0 0	/ 00
	assign mem[1] = 8'b01001001; // s2 = m[s0 + 1] = 1	/ 0 0 1 0 	/ 01
	assign mem[2] = 8'b01100101; // s1 = m[s2 + 1] = 2	/ 0 2 1 0 	/ 02
	assign mem[3] = 8'b00011011; // s3 = s1 + s2 = 3	/ 0 2 1 3	/ 03
	assign mem[4] = 8'b11000001; // jump					/ 0 2 1 3	/ JUMP
	assign mem[5] = 8'b11000001; // skip
	assign mem[6] = 8'b10101110; // m[s2 - 1] = s3		/ 0 2 1 3	/ STORE
	assign mem[7] = 8'b00011100; // s0 = s1 + s3 		/ 5 2 1 3	/ 05
	assign mem[8] = 8'b00000000; // s0 = s0 + s0			/ 10 2 1 3	/ 0A
	assign mem[9] = 8'b01001001; // s2 = m[s0 + 1] = 11/ 10 2 11 3 / 0B
	assign mem[10] = 8'b00100001;// s1 = s0 + s2			/ 10 21 11 3/ 15
	assign mem[11] = 8'b01011110;// s3 = m[s1 - 2] = -3/ 10 21 11 -3 / FD
	assign mem[12] = 8'b01011111;// s3 = m[s1 - 1] = -4/ 10 21 11 -4 / FC
	assign mem[13] = 8'b00101100;// s0 = s2 + s3 		/ 7 21 11 -4/ 07
	assign mem[14] = 8'b00000000;// s0 = s0 + s0 		/ 14 21 11 -4 / 0E
	assign mem[15] = 8'b10000110;// m[s0 - 2] = s1		/ 14 21 11 -4 / STORE
	assign mem[16] = 8'b01100001;// s0 = m[s2 + 1]		/ 21 21 11 -4 / 15
	assign mem[17] = 8'b00000100;// s0 = s0 + s1 		/ 42 21 11 -4 / 2A
	assign mem[18] = 8'b00000011;// s3 = s0 + s0			/ 42 21 11 84 / 54
	assign mem[19] = 8'b00001110;// s2 = s0 + s3			/ 42 21 126 84 / 7E
	assign mem[20] = 8'b11000001;// jump + 1 / JUMP
	assign mem[21] = 8'b11000001;// jump + 1 / JUMP
	assign mem[22] = 8'b11000010;// jump - 2 / JUMP
	assign mem[23] = 8'b00000110;// 3F
	assign mem[24] = 8'b11000011;// loop
	assign mem[25] = 8'b00000110;// dont come
	
	assign Ins = mem[ADD];

endmodule