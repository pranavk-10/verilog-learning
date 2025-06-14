`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:34:28
// Design Name: 
// Module Name: barrel_shifter_testbench
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


module tb_barrel_bh;

    // Testbench variables
    reg [7:0] in;          // 8-bit input
    reg [2:0] n;           // 3-bit shift amount
    reg lr;                // Left (1) or Right (0) shift control
    wire [7:0] out;        // 8-bit output

    // Instantiate the barrel_bh module
    barrel_bh uut (
        .out(out),
        .in(in),
        .lr(lr),
        .n(n)
    );

    // Testbench process
    initial begin
        // Display header for results
        $display("Time |   in    | n  | lr |   out");
        $display("--------------------------------");

        // Test case: shifting 11110000 2 bits to the right
        in = 8'b11110000;  // Input value
        n = 3'b010;        // Shift amount (2 bits)
        lr = 1;            // Right shift control

        #10;               // Wait for 10 time units
        $display("%4t | %b | %3d |  %b  | %b", $time, in, n, lr, out);

        $finish;           // End simulation
    end
endmodule