module jk_ff(input clk,rst,j,k,output reg q);
always@(posedge clk) begin
if(rst)
q<=0;
else
q<=(j&~k)|(j&~q);
end
endmodule
