module sl2(input  [31:0] a,
           output [31:0] y);

    // shift left by 2
    assign #1 y = {a[29:0], 2'b00;
endmodule



module tribuf #(parameter WIDTH = 32)
               (input en,
                input [WIDTH-1:0] a,
                output [WIDTH-1:0] y);
    wire [WIDTH-1:0] highz;
    assign highz = {WIDTH{1'bz}};
    assign #1 y = en ? a : highz;        
endmodule


