`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:38:31
// Design Name: 
// Module Name: alu_blocking_tb
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


`timescale 1ns/1ps
module tb_alu_blocking;

  reg [3:0] a, b;
  reg [2:0] sel;
  wire [4:0] y;

  // Instantiate DUT
  alu_blocking uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );

  // Stimulus
  initial begin
    $dumpfile("alu_blocking_tb.vcd");
    $dumpvars(0, tb_alu_blocking);

    a = 4'b0101;  // 5
    b = 4'b0011;  // 3

    sel = 3'b000; #10; // Addition
    sel = 3'b001; #10; // Subtraction
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT a
    sel = 3'b110; #10; // Left shift
    sel = 3'b111; #10; // Right shift

    #20 $finish;
  end

  // Monitor
  initial begin
    $display("Time | a | b | sel | y");
    $monitor("%4t | %b | %b | %03b | %b",
             $time, a, b, sel, y);
  end

endmodule
