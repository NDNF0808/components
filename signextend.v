module signextend # (INPUT = 16, OUTPUT = 32)
                  (input [INPUT-1:0] a,
                   output [OUTPUT-1:0] y);
    assign y = {{OUTPUT-INPUT{a[INPUT-1]}},a};
endmodule // signextend




module mux2 #(parameter WIDTH = 32)
    (input  [WIDTH-1:0] d0, d1, 
     input              s, 
     output [WIDTH-1:0] y);

    assign #1 y = s ? d1 : d0; 
endmodule // mux2



module mux3 #(parameter WIDTH = 32)
    (input  [WIDTH-1:0] d0, d1, d2,
     input [1:0]        s, 
     output [WIDTH-1:0] y);

    assign #1 y = s[1] ? d2 : (s[0] ? d1 : d0); 
endmodule // mux3




module mux4 #(parameter WIDTH = 32)
    (input  [WIDTH-1:0] d0, d1, d2, d3,
     input [1:0]        s, 
     output [WIDTH-1:0] y);

    assign #1 y = s[1] ? (s[0] ? d3 : d2)
      : (s[0] ? d1 : d0); 
endmodule // mux4




