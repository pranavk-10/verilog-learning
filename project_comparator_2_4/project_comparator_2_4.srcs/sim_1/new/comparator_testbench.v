`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:24:08
// Design Name: 
// Module Name: comparator_testbench
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


module tb_comparator;

    // Declare testbench variables
    reg [3:0] a, b;          // Inputs to the comparator
    wire eq, sm, gt;         // Outputs from the comparator

    // Instantiate the comparator module
    comparator uut (
        .a(a),
        .b(b),
        .eq(eq),
        .sm(sm),
        .gt(gt)
    );

    // Testbench process
    initial begin
        // Display header for results
        $display("Time |   a   |   b   | eq | sm | gt");
        $display("-----------------------------------");
        
        // Loop through all possible combinations of a and b
        #10 a = 4'b1111;b=4'b1111;
        #10 a=4'b1000; b=4'b0001;
        // Finish simulation
        #10 $finish;
    end
endmodule

