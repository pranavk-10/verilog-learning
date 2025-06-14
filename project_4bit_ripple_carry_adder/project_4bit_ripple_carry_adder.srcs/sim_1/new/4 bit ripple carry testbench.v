`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2025 17:23:04
// Design Name: 
// Module Name: four_bit_ripple_carry_testbench
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


module four_bit_ripple_carry_testbench;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;

four_bit_ripple_carry_adder dut (a,b,cin,s,cout);
initial begin
$monitor("a=%b, b=%b, cin=%b | s=%b, cout=%b",a,b,cin,s,cout);
 for (a = 0; a < 16; a = a + 1) begin
            for (b = 0; b < 16; b = b + 1) begin
                for (cin = 0; cin < 2; cin = cin + 1) begin
                    #10;  // Wait for 10 time units for each test case
                end
            end
        end

        #10 $finish;  // End simulation
    end
endmodule