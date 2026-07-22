module random(output reg y);
integer i;
initial begin 
i=1;
while (i<=10) begin 
y=$urandom;
if((y%2)!=0)
i=i+1;
end
end
endmodule
