module vote_tb;
wire [23:0]eligible;
reg [6:0] a;

vote tb(.a(a),.eligible(eligible));

initial begin
a=4'd12;#10;
a=6'd63;#10;
$finish;
end

initial begin 
$monitor("time=%0t,a=%0d,eligible=%s",$time,a,eligible);
end 

endmodule

