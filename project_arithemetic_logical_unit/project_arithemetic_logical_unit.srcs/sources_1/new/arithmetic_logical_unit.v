`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 21:19:16
// Design Name: 
// Module Name: arithmetic_logical_unit
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


module arithmetic_logical_unit(a, b, opcode, x, y);
input [3:0] a, b, opcode;
output reg [3:0] x, y;

always @(*) begin
    // Default values for outputs
    x = 4'b0000;
    y = 4'b0000;

    case (opcode)
        4'b0000: x[0] = |a;
        4'b0001: x[0] = &a;
        4'b0010: x[0] = ^a;
        4'b0011: x = a & b;
        4'b0100: x = a | b;
        4'b0101: x = a ^ b;
        4'b0110: x[0] = a > b;
        4'b0111: x[0] = a < b;
        4'b1000: x[0] = !a; // Assumes non-zero values of 'a' as true
        4'b1001: x[0] = (a == b);
        4'b1010: {y[0], x} = a + b;
        4'b1011: x = a - b;
        4'b1100: {y, x} = a * b;
        4'b1101: {y, x} = a >> b;
        4'b1110: {y, x} = a << b;
        4'b1111: x = ~a;
        default: begin
            x = 4'bxxxx; // Assign invalid values to indicate error
            y = 4'bxxxx;
            $display("Invalid opcode");
        end
    endcase
end

endmodule


