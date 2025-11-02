`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:18 06/11/2025 
// Design Name: 
// Module Name:    freq_div 
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
module freq_div(
	 input RESET,
    input sCLK,
    output reg CLK
    );

	reg [31:0] cnt;
	
	always @(posedge sCLK) begin
		if (RESET) begin
			cnt <= 32'd0;
			CLK <= 1'b0;
		end
		else if(cnt == 32'd25000000) begin
			cnt <= 32'd0;
			CLK <= ~CLK;
		end
		else begin
			cnt <= cnt + 1;
		end
	end

endmodule
