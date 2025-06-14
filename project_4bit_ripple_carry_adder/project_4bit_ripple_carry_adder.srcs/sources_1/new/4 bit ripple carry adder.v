`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2025 17:10:54
// Design Name: 
// Module Name: 4_bit_ripple_carry_adder
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


module four_bit_ripple_carry_adder(a,b,cin,s,cout);
input [3:0] a;
input [3:0] b;
input cin;
output [3:0] s;
output cout;

wire n1,n2,n3,n4;

full_adder fa1 (a[0],b[0],cin,s[0],n1);
full_adder fa2 (a[1],b[1],n1,s[1],n2);
full_adder fa3 (a[2],b[2],n2,s[2],n3);
full_adder fa4 (a[3],b[3],n3,s[3],cout);

endmodule
