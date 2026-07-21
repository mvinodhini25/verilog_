module print_tb;
integer i;

initial begin
       i=1;

       while(i<=10) begin
$display("number",i);
i=i+1;
end
$finish;
end
endmodule
