`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:25 06/11/2025 
// Design Name: 
// Module Name:    MUX8 
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
module MUX8(
    input [7:0] A,
    input [7:0] B,
    input S,
    output [7:0] Y
    );

	assign Y = (S == 0) ? A : B;

endmodule
