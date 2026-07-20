module p_f_tb;
wire [31:0]result;
reg [6:0]a;

p_f r(.a(a),.result(result));

initial begin 
a=4'd13;#10;
a=9'd78;#10;
$finish;
end

initial begin
$monitor("time=%0t,a=%0d,result=%s",$time,a,result);
end
endmodule
