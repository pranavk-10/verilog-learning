`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 16:49:02
// Design Name: 
// Module Name: full_subtractor_testbench
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


module full_subtractor_testbench;
reg a,b,c;
wire d,bout;

full_subtractor du (a,b,c,d,bout);
initial begin
$monitor ("a=%b, b=%b, c=%b | d=%b , bout=%b",a,b,c,d,bout);
a = 0; b= 0; c= 0;
#10 a = 0; b= 0; c= 1;
#10 a = 0; b= 1; c= 0;
#10 a = 0; b= 1; c= 1;
#10 a = 1; b= 0; c= 0;
#10 a = 1; b= 0; c= 1;
#10 a = 1; b= 1; c= 0;
#10 a = 1; b= 1; c= 1;
#10 $finish;
end
endmodule
