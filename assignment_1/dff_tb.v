module dff_tb;
wire q;
reg clk,rst,d;

dff df(.q(q),.clk(clk),.rst(rst),.d(d));

initial begin 
	clk = 0;
	forever #5 clk =~clk;
end
initial begin
	d=1;
rst=1;#10;
rst=0;#10;

$finish;
end

initial begin 
$monitor("d=%0b,clk=%0b,rst=%0b,q=%0b",d,clk,rst,q);
end

endmodule
