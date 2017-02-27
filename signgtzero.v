`timescale 1ns / 1ps
module signgtzero # (parameter N = 32)
                 (input [N-1:0] a,
                  output y);
    assign #1 y = !a[N-1] && (a [N-2:0] != 0);//其实也不用写选择１;０因为逻辑运算不是１就是０
endmodule // signgtzero
//比较大于０小于０肯定是有符号数，无符号数没有小于０
