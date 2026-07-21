module print(output reg fac);
integer i;
always@(*) begin 
	i=1;
	fac=0;
while(i<=10) begin 

fac= fac*i;
i=i+1;
end
end

endmodule
