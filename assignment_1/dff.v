module dff(input d,clk,rst,output reg q);
always@(negedge clk or rst) begin
if(!rst)begin
q<=0;
end
else begin
q<=d;
end
end 
endmodule
