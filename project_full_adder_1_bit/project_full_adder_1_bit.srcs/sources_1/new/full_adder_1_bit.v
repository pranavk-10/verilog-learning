`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 18:33:21
// Design Name: 
// Module Name: full_adder_1_bit
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
