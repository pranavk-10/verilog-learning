`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:30:56
// Design Name: 
// Module Name: barrel_shifter
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



module barrel_bh(out,in,lr,n);
input [7:0]in;
input [2:0] n;
input lr;
output reg [7:0] out; 	

always@(*) begin
	if(lr)
		out = in << n;
	else
		out = in >> n;
end
endmodule