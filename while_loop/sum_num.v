module print(output reg sum);
integer i;
always@(*) begin 
	i=1;
	sum=0;
while(i<=10) begin 

sum = sum+i;
i=i+1;
end
end

endmodule
