`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2025 16:26:30
// Design Name: 
// Module Name: full_adder_2HA
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


module full_adder_2HA(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire n1,n2,n3;

half_adder HA1 (n1,n2,a,b);
half_adder HA2 (s,n3,n1,cin);

or or1 (c,n2,n3);
    
endmodule
