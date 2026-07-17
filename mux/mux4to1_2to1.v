module mux(input s,a,b,output y);
integer i;

always@(*) begin 
for(i=0;i<1;i=i+1)
if(s==0)
y=b;
else
y=a;
end

endmodule
