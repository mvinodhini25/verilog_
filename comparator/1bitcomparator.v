module comparator(input a,b,output gt,eq,ls);
wire x,y;
if(a<b)begin
ls=a;
else if(a==b)
eq=1;
else
gt=b;
end
endmodule
