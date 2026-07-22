module countdown(output reg count);
initial begin

count=10;

while (count>=1) begin
count = count-1;
end 
end 
endmodule
