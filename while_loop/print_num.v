module print(output reg num);
integer i;
always@(*) begin 
	i=1;
while(i<=10) begin
	num=i; 
i=i+1;
end
end

endmodule
