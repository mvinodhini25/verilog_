module even_tb;
integer i;

initial begin 
i=0;
while(i<=20) begin 
$display("even number",i);
i=i+2;
end
$finish;
end

endmodule
