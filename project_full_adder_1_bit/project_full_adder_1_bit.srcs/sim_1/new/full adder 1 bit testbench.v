`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 18:41:01
// Design Name: 
// Module Name: FA_bh_tb
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


module FA_bh_tb;
reg a,b,cin;
wire s,c;

FA_bh FA_bh_1(s,c,a,b,cin);
initial			// only once , cannot be synthesized;
begin
$monitor("time = %d \t a =%b \t b =%b \t cin%b \t s=%b \t c=%b", $time,a,b,cin,s,c);
a = 0;
b = 0;
cin = 0;
#10 a = 0;
#10 b = 1;
#10 cin = 1;
#10 a = 1;
#10 b = 1;
#10 cin = 1;

end

endmodule