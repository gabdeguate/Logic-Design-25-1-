`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:16 06/12/2025 
// Design Name: 
// Module Name:    Output 
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
module Output(
    input [7:0] WD,
    input [1:0] Ins,
    output reg [6:0] Seg1,
    output reg [6:0] Seg2,
    output reg [6:0] Seg3,
    output reg [6:0] Seg4,
    output reg [6:0] Seg5
    );
	 
	wire [6:0] tmp1, tmp2;
	
	BCD7 B1(WD[7:4], tmp1);
	BCD7 B2(WD[3:0], tmp2);
	
	
	always @(*) begin
		if(Ins == 2'b10) begin
			Seg1 <= 7'b1101101;
			Seg2 <= 7'b1111000;
			Seg3 <= 7'b0111111;
			Seg4 <= 7'b1110000;
			Seg5 <= 7'b1111001;
		end
		else if(Ins == 2'b11) begin
			Seg1 <= 7'b0001110;
			Seg2 <= 7'b0111110;
			Seg3 <= 7'b0110111;
			Seg4 <= 7'b0110111;
			Seg5 <= 7'b1110011;
		end
		else begin
			Seg1 <= tmp1;
			Seg2 <= tmp2;
			Seg3 <= 7'b0000000;
			Seg4 <= 7'b0000000;
			Seg5 <= 7'b0000000;
		end
	end		  

endmodule
