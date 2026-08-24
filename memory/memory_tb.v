module memory_tb;
wire [7:0]data_out;
reg [3:0]addr;
reg [7:0]data_in;
reg wr,re,clk;

memory m1(.clk(clk),.wr(wr),.re(re),.addr(addr),.data_in(data_in),.data_out(data_out));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
addr=4'd3;data_in=8'd7;
wr=0;re=0;#10;
wr=0;re=1;#10;
wr=1;re=0;#10;
wr=1;re=1;#10;
$finish;
end

initial begin
$monitor("time=%0t,wr=%0b,re=%0b,addr=%0d,data_in=%0d,data_out=%0d",$time,wr,re,addr,data_in,data_out);
end

endmodule


