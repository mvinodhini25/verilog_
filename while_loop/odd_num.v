module odd(output reg odd);
integer i;
always@(*) begin
i=1;
while(i<=20) begin
odd=i;
i=i+2;
end
end

endmodule
