`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:26:51
// Design Name: 
// Module Name: alu_testbench
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


module alu_testbench();
reg [3:0] a,b,opcode;
wire [3:0] x,y;

arithmetic_logical_unit dut (
    .a(a), 
    .b(b),
     .opcode(opcode), 
     .x(x), 
     .y(y));

initial begin
$monitor("Time: %0d | a = %b , b =%b , opcode = %b | x =%b , y=%b" , $time,a,b,opcode,x,y);
a = 4'b1001; b = 4'b1000; opcode = 4'b0000;
#10 opcode = 4'b0001;
#10 opcode = 4'b0010;
#10 opcode = 4'b0011;
#10 opcode = 4'b0100;
#10 opcode = 4'b0101;
#10 opcode = 4'b0110;
#10 opcode = 4'b0111;
#10 opcode = 4'b1000;
#10 opcode = 4'b1001;
#10 opcode = 4'b1010;
#10 opcode = 4'b1011;
#10 opcode = 4'b1100;
#10 opcode = 4'b1101;
#10 opcode = 4'b1110;
#10 opcode = 4'b1111;
#10 $finish;
end

endmodule
