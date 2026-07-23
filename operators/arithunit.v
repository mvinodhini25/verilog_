module unit(input [2:0]a, input [1:0]s,output reg [2:0]y);
always@(*) begin
if (s==2'b00)begin
y=a+1;
end

else if(s==2'b01) begin
y=a-1;
end
else if(s==2'b10) begin
y=a*2;
end
else if(s==2'b11) begin
	y=a/2;
end
else begin
	y=1'b0;
end
end
endmodule

