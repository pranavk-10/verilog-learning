`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2025 18:02:08
// Design Name: 
// Module Name: half_adder_testbench
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


module half_adder_testbench;
reg a,b;
wire s,c;

half_adder dut (s,c,a,b);
initial
begin
a = 0; b= 0;
#10 a= 0; b=1;
#10 a = 1; b=0;
#10 a =1; b=1;
#10 $finish;
end
endmodule
