`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 11:17:32
// Design Name: 
// Module Name: blocking_nonblocking_tb
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
module tb_block_vs_nonblock;

  reg clk;
  wire a_block, b_block;
  wire a_nonblock, b_nonblock;

  // Instantiate blocking module
  blocking_example u1 (
    .clk(clk),
    .a(a_block),
    .b(b_block)
  );

  // Instantiate non-blocking module
  nonblocking_example u2 (
    .clk(clk),
    .a(a_nonblock),
    .b(b_nonblock)
  );

  // Clock generation (10ns period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Run simulation
  initial begin
    $dumpfile("block_vs_nonblock.vcd");
    $dumpvars(0, tb_block_vs_nonblock);
    #50 $finish;
  end

  // Monitor outputs
  initial begin
    $display("Time | clk | Blocking: a b | NonBlocking: a b");
    $monitor("%4t |  %b  |     %b   %b   |       %b        %b",
             $time, clk, a_block, b_block, a_nonblock, b_nonblock);
  end

endmodule

