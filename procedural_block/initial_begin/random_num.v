module random(output reg y);
integer i;
initial begin 
i=1;
while (i<=5) begin 
y=$random;
i=i+1;
end
end
endmodule
