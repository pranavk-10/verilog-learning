`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 16:20:31
// Design Name: 
// Module Name: half_subtractor_testbench
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


module half_subtractor_testbench;
reg a,b;
wire d,bout;
half_subtractor dut (a,b,d,bout);
initial
begin
a = 0; b=0;
#10 a =0; b=1;
#10 a =1; b=0;
#10 a= 1; b=1;
#10 $finish;
end
endmodule
