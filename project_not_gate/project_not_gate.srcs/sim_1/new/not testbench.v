`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 18:16:05
// Design Name: 
// Module Name: not_testbench
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


module not_testbench;
reg a;
wire y;

not_gate uut (y,a);
initial 
begin
a = 0;
#10 a = 1;
#10 a = 0;
#10 a = 1;
#10 a = 0;
#10 $finish;

end
endmodule
