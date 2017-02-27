`timescale 1ns / 1ps
module halfadder # (parameter N = 32)
                ( input [N-1:0] a , b,
                  output [N-1:0] y);
    assign #1 y = a + b;
endmodule // halfadder
