`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2025 19:46:36
// Design Name: 
// Module Name: decoder_2_4_estbench
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


module decoder_2_4_testbench;
reg [1:0] i;
reg en;
wire [3:0] y;

decoder_2_4 dut (y,i,en);
initial begin
$monitor ("i = %b , en = %b | y = %b" ,i,en,y);
i = 2'b00 ; en = 1 ;
#10 i = 2'b01 ; en = 1 ;
#10 i = 2'b10 ; en = 1 ;
#10 i = 2'b11 ; en = 1 ;  
#10 $finish;
end
endmodule
