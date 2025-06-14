`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:54:00
// Design Name: 
// Module Name: dff_testbench
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


module dff_pe_Ar_testbench();
    reg d, clk, rst;  // Inputs to the flip-flop
    wire q;           // Output of the flip-flop

    // Instantiate the D flip-flop
    dff_pe_Ar uut (.q(q), .d(d), .rst(rst), .clk(clk));

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Stimulus generation
    initial begin
        $monitor("Time = %0d | d = %b, clk = %b, rst = %b | q = %b", $time, d, clk, rst, q);

        // Test asynchronous reset
        rst = 1; d = 0; #10;  // Assert reset, q should be 0
        rst = 0; d = 1; #10;  // Deassert reset, d = 1
        #10 d = 0;            // Change d to 0, observe q on next clk edge
        #10 d = 1;            // Change d to 1
        rst = 1; #10;         // Assert reset, q should reset to 0
        rst = 0; d = 0; #10;  // Deassert reset, change d to 0

        $finish; // End simulation
    end
endmodule
