module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]w1,w2,w3,w4;
    wire c1,c2,c3;
   
    add16 in1(.a(a[31:16]),.b(b[31:16]),.cin(0),.sum(w1),.cout(c1));
    add16 in2(.a(a[31:16]),.b(b[31:16]),.cin(1),.sum(w2),.cout(c2)); 
    add16 in3(.a(a[15:0]),.b(b[15:0]),.cin(0),.sum(w3),.cout(c3));
              always@(*) begin
                  case(c3)
                      1'b0:w4=w1;
                      1'b1:w4=w2;
                  endcase
              end
              assign sum={w4,w3};
                      
endmodule
