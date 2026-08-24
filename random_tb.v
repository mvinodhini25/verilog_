 module odd_integer_tb;
wire odd;
reg [3:0]num;
integer count;
odd_random odd1(.num(num),.odd(odd));

initial begin
count=0;
while(count<5) begin
num=($random%10)+1;

if((num%2)!=0) begin
#10;
	$display("num=%0d,odd=%d",num,odd);
count=count+1;
end
end
$finish;
end

endmodule
