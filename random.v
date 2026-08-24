module odd_random(input [3:0]num,output reg odd);
always@(*) begin 
	if (num%2) begin 
odd=1'b1;
end
else begin
odd=1'b0;
end
end
endmodule

