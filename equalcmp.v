`timescale 1ns / 1ps
module equalcmp # (parameter N = 32)
               (input [N-1:0] a, b,
                output y);
    assign #1  y = (a == b)? 1 : 0;
endmodule // equalcmp
//如果一切按照逻辑门来写，那么相等比较应该先经过一个异或门再按位或，若结果是０则相等
//实现了相等分支后可以调用它实现不相等分支也可以实现与０比较，将其中的一位数置０即可
      