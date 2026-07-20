module dff_tb;
wire q;
reg clk,rst,d;

dff df(.q(q),.clk(clk),.rst(rst),.d(d));

initial begin
rst=1;#10;
rst=0;#10;
$finish;
end

initial begin 
$monitor("q=%0b",q);
end

endmodule
