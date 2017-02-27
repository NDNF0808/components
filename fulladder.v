`timescale 1ns / 1ps
module fulladder # (parameter N = 32 )
                (input [N-1:0] a, b,
                 input          cin,
                 output [N-1:0] y,
                 output         cout);
    assign # 1 {cout, y} = a + b + cin;
endmodule // fulladder
