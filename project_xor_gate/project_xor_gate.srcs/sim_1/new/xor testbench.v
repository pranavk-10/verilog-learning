`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2024 16:33:12
// Design Name: 
// Module Name: xor_testbench
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


module xor_testbench;
reg a,b;
wire y;
 xor_gate uut(a,b,y);
 
 initial
 begin
 a = 0; b =0;
 #10 a =0; b=1;
 #10 a =1; b=0;
 #10 a =1; b=1;
 #10 $finish;
 end
endmodule
