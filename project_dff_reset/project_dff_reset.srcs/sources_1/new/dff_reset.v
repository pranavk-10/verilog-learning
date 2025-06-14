`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:52:22
// Design Name: 
// Module Name: dff_reset
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff_pe_Ar(q,d,rst,clk);
input d,clk,rst;
output reg q;

always@(posedge clk or posedge rst)
	if(rst)
		q <= 1'b0;
	else
		q <= d;

endmodule
