module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]w1,w2;
    wire c1,c2;
    add16 in(.sum(w1),.cin(0),.cout(c1),.a(a[15:0]),.b(b[15:0]));
    add16 in1(.sum(w2),.cin(c1),.cout(c2),.a(a[31:16]),.b(b[31:16]));
    assign sum={w2,w1};
endmodule
