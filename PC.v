`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:43 06/11/2025 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [7:0] A,
	 input RESET,
	 input CLK,
    output reg [7:0] Y
    );
	
	always @(posedge CLK or posedge RESET) begin
		if(RESET == 1) Y <= 8'b00000000;
		else Y <= A;
	end
	

endmodule
