module alu(input [3:0]a,b,input [2:0]s,output reg [3:0]y);
always @(*) begin
    if (s == 3'b000)
        y = a + b;
    else if (s == 3'b001)
        y = a - b;
    else if (s == 3'b010)
        y = a / b;
    else if (s == 3'b011)
        y = {3'b000, (a && b)};
    else if (s == 3'b100)
        y = a & b;
    else if (s == 3'b101)
        y = a | b;
    else if (s == 3'b110)
        y = ~(a & b);
    else if(s == 3'b111)
        y = ~(a | b);
    
    end
 

endmodule
