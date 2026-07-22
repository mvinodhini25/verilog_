module countdowntb;
integer count;

initial begin

count=10;
while (count>=1) begin
$display("%0d",count);
count = count-1;
end 
end 
endmodule
