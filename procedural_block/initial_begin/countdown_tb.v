module countdowntb;
integer count;
integer i;

countdown(.count(count));

initial begin
i=10;
count=0
while (i>=1) begin
$display("%0d",count);
count = i-1;
end 
end 
endmodule
