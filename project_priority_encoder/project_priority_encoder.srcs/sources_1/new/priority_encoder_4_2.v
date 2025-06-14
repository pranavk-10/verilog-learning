`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:16:07
// Design Name: 
// Module Name: priority_encoder_4_2
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


module encoder_4_2_priority (y,v,i);
input [3:0] i;
output v;
output [1:0] y;

assign {v,y} = i[0]?3'b100:i[1]?3'b101:i[2]?3'b110:i[3]?3'b111:3'b00;

endmodule
