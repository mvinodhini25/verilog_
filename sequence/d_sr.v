module sr(input s,r,clk,rst,output reg q);
wire d;
assign d = s|(~r&q);
always@(posedge clk) begin
if(rst)
q<=0;
else begin
q<=d;
end
end
endmodule
