`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:36 06/11/2025 
// Design Name: 
// Module Name:    MUX2 
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
module MUX2(
    input [1:0] A,
    input [1:0] B,
    input S,
    output [1:0] Y
    );

	assign Y = (S == 0) ? A : B;

endmodule
