module d_tb;
reg d,clk,rst;
wire q;

dff df(.clk(clk),.rst(rst),.d(d),.q(q));

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end
initial begin
rst=1;d=0;#10;
rst=0;d=0;#10;
rst=0;d=1;#10;
$finish;
end
initial begin
$monitor("time=%0t,rst=%0b,d=%0b,q=%0b",$time,rst,d,q);
end
endmodule
