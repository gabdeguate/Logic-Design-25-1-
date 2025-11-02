`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:47 06/11/2025 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input [1:0] R1,
    input [1:0] R2,
    input [1:0] W,
	 input [7:0] WD,
	 input RW,
    input CLK,
	 input RESET,
    output [7:0] RD1,
    output [7:0] RD2,
    output [7:0] Y
    );
	
	integer i;
	reg [7:0] mem [0:3];

	always @(posedge CLK or posedge RESET) begin
		if(RESET == 1) begin
			for(i = 0; i < 4; i = i + 1) mem[i] <= 8'b00000000;
		end
		else if(RW == 1) begin
			mem[W] <= WD;
		end
	end
	assign RD1 = mem[R1];
	assign RD2 = mem[R2];
	assign Y = WD;
	
endmodule
