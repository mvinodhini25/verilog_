module mux(input clk62_5,input clk250,input [1:0]s,output reg y);
wire z;
always@(*) begin
if(s==2'b00)begin
y=clk62_5;
end
else if(s==2'b10)begin
y=clk250;
end
else begin 
y=z;
end

end
endmodule
