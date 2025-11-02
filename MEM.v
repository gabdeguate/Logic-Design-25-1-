`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:36 06/11/2025 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
    input [7:0] AD,
    input [7:0] WD,
	 input MW,
	 input MR,
	 input RESET,
	 input CLK,
    output [7:0] RD
    );
	
	reg [7:0] mem [0:31];
	integer i;
	
	always @(posedge CLK or posedge RESET) begin
		if(RESET == 1) begin
			for(i = 0; i < 32; i = i + 1) begin
				if(i < 16) mem[i] <= i;
				else mem[i] <= 16 - i;
			end
		end
		else if(MW == 1) begin
			mem[AD] <= WD;
		end
	end
	
	assign RD = (MR == 0) ? 8'b00000000 : mem[AD];
	

endmodule
