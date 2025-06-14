`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 17:14:32
// Design Name: 
// Module Name: and_gate_testbench
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


module and_gate_testbench;
    // Declare inputs and output
    reg a, b;
    wire y;

    // Instantiate the and_gate module
    and_gate uut (y,a,b
    );

    // Test sequence
    initial begin
       // $monitor("time = %d \t a = %b \t b = %b \t y = %b", $time, a, b, y);

        #10 a = 0; b = 0; // Expect y=0
        #10 a = 0; b = 1; // Expect y=0
        #10 a = 1; b = 0; // Expect y=0
        #10 a = 1; b = 1; // Expect y=1

       // $finish;
    end
endmodule

