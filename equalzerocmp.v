`timescale 1ns / 1ps
module equalzerocmp # (parameter N = 32)
                  (input [N-1:0] a,
                   output y);
    assign #1 y = (a == 0)? 1:0;
endmodule // equalzerocmp
