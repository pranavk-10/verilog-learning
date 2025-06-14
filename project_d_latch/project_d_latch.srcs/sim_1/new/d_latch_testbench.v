`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:39:54
// Design Name: 
// Module Name: d_latch_testbench
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


module dlatch_testbench();
reg d, en;    
wire q;      


d_latch uut (
    .q(q), 
    .d(d), 
    .en(en));

initial begin

$monitor("Time = %0d | d = %b, en = %b | q = %b", $time, d, en, q);

d = 0; en = 0; #10; // Latch is disabled, q holds its value
d = 1; en = 0; #10; // Latch remains disabled, q still holds
d = 1; en = 1; #10; // Latch enabled, q follows d
d = 0; en = 1; #10; // Latch enabled, q follows d
en = 0; #10;         // Latch disabled, q holds its value
d = 1; #10;          // Changing d while en is low, q remains unchanged

        $finish;
    end
endmodule