`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:37 06/11/2025 
// Design Name: 
// Module Name:    SignEx 
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
module SignEx(
    input [1:0] A,
    output [7:0] Y
    );

	assign Y = {{6{A[1]}}, A};

endmodule
