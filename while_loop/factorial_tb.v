module print_tb;
integer fac;
integer i;

initial begin
       i=1;
fac=1;
       while(i<=4) begin
fac=fac*i;
i=i+1;
end

$display("fac",fac);
$finish;
end
endmodule
