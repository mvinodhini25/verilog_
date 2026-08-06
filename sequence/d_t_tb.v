module t_tb;
reg t,clk,rst;
wire q;

tf dff(.clk(clk),.rst(rst),.t(t),.q(q));

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end
initial begin
rst=1;t=0;#10;
rst=0;t=0;#10;
rst=0;t=1;#10;
$finish;
end
initial begin
$monitor("time=%0t,rst=%0b,t=%0b,q=%0b",$time,rst,t,q);
end
endmodule
