module jk(input j,k,clk,rst,output reg q);
wire d;
assign d = (j&~q)|(~k&q);
always@(posedge clk) begin
if(rst)
q<=0;
else begin
q<=d;
end
end
endmodule
