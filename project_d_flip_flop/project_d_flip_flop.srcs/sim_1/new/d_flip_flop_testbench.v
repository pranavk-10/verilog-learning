`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:47:33
// Design Name: 
// Module Name: d_flip_flop_testbench
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


module dffb_testbench();
    reg d, clk;        // Inputs to the D flip-flop
    wire q;            // Output of the D flip-flop

    // Instantiate the D flip-flop
    dffb uut (.q(q), .d(d), .clk(clk));

    // Clock generation
    initial begin
        clk = 0;          // Initialize clock to 0
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Stimulus generation
    initial begin
        $monitor("Time = %0d | d = %b, clk = %b | q = %b", $time, d, clk, q);

        // Test cases
        d = 0; #10; // Initial state
        d = 1; #10; // Change d to 1, should update q on rising edge of clk
        d = 0; #10; // Change d to 0, should update q on next rising edge
        d = 1; #10; // Change d to 1 again
        d = 1; #10; // Keep d constant, q should remain 1
        d = 0; #10; // Update d to 0

        $finish; // End the simulation
    end
endmodule


