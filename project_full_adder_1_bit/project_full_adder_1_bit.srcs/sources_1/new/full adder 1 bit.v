`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 18:39:38
// Design Name: 
// Module Name: FA_bh
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


module FA_bh(s,c,a,b,cin);
input a,b,cin;
output reg s,c;
always @(a,b,cin)
begin
	s = a^b^cin;
	c = a&b | b&cin |a&cin;
end
endmodule