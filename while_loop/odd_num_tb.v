module odd_tb;
wire odd;
integer i;
odd tb(.odd(odd));
initial begin 
i=1;
while(i<=20) begin 
$display("odd=%0d",i);
i=i+2;
#10;
end
$finish;
end 
endmodule
