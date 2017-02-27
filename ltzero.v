`timescle 1ns / 1ps
  module # (parameter N = 32)
         (input [N-1:0] a,
          output y);
    assign #1 y = a[N-1];
endmodule //
