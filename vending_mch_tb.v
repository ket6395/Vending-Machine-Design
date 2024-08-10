`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 12:34:42
// Design Name: 
// Module Name: vending_mch_tb
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


module vending_mch_tb(
//inputs
reg clk ;
reg [1:0] in;
reg rst;

wire out;
wire [1:0] change;

vending_mch uut(
 .clk(clk),
 .rst(rst),
 .out(out),
 .change(change)
 );

initial begin
$dumpfile("vending_mch.vcd");
$dumpvars(0,vending_mch_tb);
rst=1;
clk=0;
#6 rst=0;
in=1;
#11 in=1;
#11 in=1;
#25 finish;
end
always  #5 clk= ~clk;
endmodule
