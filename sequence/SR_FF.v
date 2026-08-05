module sr_ff(input clk,rst,s,r,output reg qn);
always@(posedge clk) begin
if(rst) 
qn<=1'b0;
else 
qn<=s|(~r&qn);
end
endmodule
