`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:30:25
// Design Name: 
// Module Name: mux_tb
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


// mux 2 to 1 mux testbench 

module tb_mux2to1;
    reg a, b, sel;
    wire y;

    mux2to1 uut(a, b, sel, y);

    initial begin
        $monitor("a=%b b=%b sel=%b => y=%b", a, b, sel, y);
        a=0; b=1; sel=0; #10;
        a=0; b=1; sel=1; #10;
        #20 $finish;
    end
endmodule


// mux 4 to 1 mux testbench

module tb_mux4to1;
    reg [3:0] d;
    reg [1:0] sel;
    wire y;

    mux4to1 uut(d, sel, y);

    initial begin
        $monitor("d=%b sel=%b => y=%b", d, sel, y);
        d=4'b1010;
        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
        #20 $finish;
    end
endmodule
