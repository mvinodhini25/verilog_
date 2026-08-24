module mux4to1(input wire s1,s0,a,b,c,d,output reg y);
always@(*) begin
if(s1==0 && s0==0)
y=a;
else if(s1==0 && s0==1)
y=b;
else if(s1==1 && s0==0)
y=c;
else
y=d;
end
endmodule

