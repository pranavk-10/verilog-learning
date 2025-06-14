`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2025 19:28:45
// Design Name: 
// Module Name: 4_1_mux_testbench
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


module mux_4_1_testbench;
reg [3:0] i;
reg [1:0] s;
wire y;

mux_4_1 dut (y,i,s);
initial begin
$monitor("i = %b , s = %b | y = %b", i,s,y);
i = 4'b0001 ; s = 2'b00; 
#10 i = 4'b0010 ; s = 2'b01;
#10 i = 4'b0000 ; s = 2'b10;
#10 i = 4'b1000 ; s = 2'b11;
#10 $finish;
end
endmodule
