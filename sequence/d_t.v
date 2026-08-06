module tf(input t,clk,rst,output reg q);
wire d;
assign d = t^q;
always@(posedge clk) begin
if(rst)
q<=0;
else begin
q<=d;
end
end
endmodule
