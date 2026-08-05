module sr_tb;
reg s,r,clk,rst;
wire qn;

sr_ff sr(.clk(clk),.rst(rst),.s(s),.r(r),.qn(qn));

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end
initial begin
rst=1;s=0;r=0;#10;
rst=0;s=0;r=0;#10;
rst=0;s=0;r=1;#10;
rst=0;s=1;r=0;#10;
rst=0;s=0;r=1;#10;
rst=0;s=1;r=1;#10;
$finish;
end
initial begin
$monitor("time=%0t,rst=%0b,s=%0b,r=%0b,qn=%0b",$time,rst,s,r,qn);
end
endmodule




