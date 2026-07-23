module cal(input [7:0]a,b, input [1:0]s,output reg [15:0]y);
always@(*) begin
if (s==2'b00)begin
y=a+b;
end

else if(s==2'b01) begin
y=a-b;
end
else if(s==2'b10) begin
y=a*b;
end
else if(s==2'b11) begin
	y=a/b;
end
else begin
	y=1'b0;
end
end
endmodule
