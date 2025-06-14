`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2025 19:44:03
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(y,i,en);
input [1:0] i;
input en;
output [3:0] y;

assign y ={ en & i[1] & i[0],en & i[1] & ~i[0],en & ~i[1] & i[0],en & ~i[1] & ~i[0]};
endmodule
