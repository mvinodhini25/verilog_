module fullsub(input a,b,c,output d,bout);
assign d = a^b^c;
assign bout =(~a&b)|c&(~(a^b));
endmodule
