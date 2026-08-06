module df(input d,clk,rst,output reg q);
wire t;
assign t = (~d&q)|(d&~q);
always@(posedge clk) begin
if(rst)
q<=0;
else begin
case({t})
1'b0:q=q;
1'b1:q=~q;
endcase
end
end
endmodule
