`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:19:11
// Design Name: 
// Module Name: priority_encoder_testbench
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


module tb_encoder_4_2_priority;
    // Declare testbench signals
    reg [3:0] i;        // Input to the encoder
    wire [1:0] y;       // Output representing the encoded value
    wire v;             // Valid signal (indicates if any input is active)

    // Instantiate the encoder module
    encoder_4_2_priority uut (
        .i(i), 
        .y(y), 
        .v(v)
    );

    // Testbench process
    initial begin
        // Display header for results
        $display("Time | i    | v | y");
        $display("---------------------");
        
        // Loop through all possible 4-bit combinations
        for (i = 4'b0000; i <= 4'b1111; i = i + 1) begin
            #10; // Wait for 10 time units
            $display("%4t | %b | %b | %b", $time, i, v, y);
        end

        // Finish simulation
        $finish;
    end
endmodule