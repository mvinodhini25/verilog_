module decoder2to4(input a,b,output y);
always@(*) begin 
if(a==0 && b==0)
y = 0001;
else if(a==0 && b==1)
y = 0010;
else if(a==1 && b==0)
y = 0100;
else
y = 1000;
end
endmodule
