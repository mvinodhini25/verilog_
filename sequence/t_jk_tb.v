module jk_tb;
reg j,k,clk,rst;
wire q;

jk jkf(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end
initial begin
rst=1;j=0;k=0;#10;
rst=0;j=0;k=0;#10;
rst=0;j=0;k=1;#10;
rst=0;j=1;k=0;#10;
rst=0;j=1;k=1;#10;
$finish;
end
initial begin
$monitor("time=%0t,rst=%0b,j=%0b,k=%0b,q=%0b",$time,rst,j,k,q);
end
endmodule
