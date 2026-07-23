module dff_tb;
wire q;
reg d,clk,rst;

dff tb(.d(d),.clk(clk),.q(q),.rst(rst));

initial begin
clk=0;
	forever #5 clk = ~clk;
end
initial begin
rst=0;d=1;#10;
rst=1;d=0;#10;
rst=1;d=1;#10;
rst=0;d=1;#10;
$finish;
end

initial begin
$monitor("time=%0t,rst=%0b,clk=%0b,d=%0b,q=%0b",$time,rst,clk,d,q);
end

endmodule 
