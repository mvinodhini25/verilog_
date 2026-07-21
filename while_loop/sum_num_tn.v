module print_tb;
integer sum;
integer i;

initial begin
       i=1;
sum=0;
       while(i<=10) begin
sum=sum+i;
i=i+1;
end

$display("sum",sum);
$finish;
end
endmodule
