`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:22:25
// Design Name: 
// Module Name: comparator_2_4
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


module comparator (a,b,eq,sm,gt);

input [3:0] a,b;
output eq,sm,gt;

assign eq = (a==b);
assign sm = (a<b);
assign gt = (a>b);

endmodule
