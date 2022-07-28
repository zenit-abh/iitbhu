`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 04:45:27 PM
// Design Name: 
// Module Name: vga_tb
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


module vga_tb();
reg clk;
reg rst;
wire hsync;
wire vsync;
wire [3:0] red;
wire [3:0] green;
wire [3:0] blue;

vga dut(clk,rst,hsync,vsync,red,green,blue);

initial begin
clk=0;rst=0;
#100 rst=1;
end

always #10 clk=~clk;
endmodule
