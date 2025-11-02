`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:06 06/11/2025 
// Design Name: 
// Module Name:    BCD7 
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
module BCD7(
    input [3:0] A,
    output [6:0] Y
    );
	
	assign Y = (A == 4'b0000) ? 7'b0111111 :
				  (A == 4'b0001) ? 7'b0000110 :
				  (A == 4'b0010) ? 7'b1011011 :
				  (A == 4'b0011) ? 7'b1001111 :
				  (A == 4'b0100) ? 7'b1100110 :
				  (A == 4'b0101) ? 7'b1101101 :
				  (A == 4'b0110) ? 7'b1111101 :
				  (A == 4'b0111) ? 7'b0000111 :
				  (A == 4'b1000) ? 7'b1111111 :
				  (A == 4'b1001) ? 7'b1101111 :
				  (A == 4'b1010) ? 7'b1110111 :
				  (A == 4'b1011) ? 7'b1111100 :
				  (A == 4'b1100) ? 7'b0111001 :
				  (A == 4'b1101) ? 7'b1011110 :
				  (A == 4'b1110) ? 7'b1111001 : 7'b1110001;

endmodule
