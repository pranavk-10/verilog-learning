`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2025 16:45:07
// Design Name: 
// Module Name: full_adder_testbench
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


module full_adder_testbench;
reg a,b,cin;
wire s,c;

full_adder_2HA dut (a,b,cin,s,c);
initial begin
$monitor("a=%b,b=%b,cin=%b | s=%b,c=%b",a,b,cin,s,c); 
a =0; b=0; cin =0;
#10 a= 0; b=0; cin =1;
#10 a= 0; b=1; cin =0;
#10 a= 0; b=1; cin =1;
#10 a= 1; b=0; cin =0;
#10 a= 1; b=0; cin =1;
#10 a= 1; b=1; cin =0;
#10 a= 1; b=1; cin =1;
#10 $finish;
end


endmodule
