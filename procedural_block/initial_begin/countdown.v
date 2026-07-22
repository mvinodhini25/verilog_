module countdown(output reg count);
integer i;
initial begin
i=10;
count=0
while (i>=1) begin
count = i-1;
end 
end 
endmodule
