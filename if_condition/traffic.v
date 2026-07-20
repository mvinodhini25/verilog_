module traffic(input reset,timer,output reg [47:0]light);
always@(*) begin 
if(reset ==1) begin 
light="red";
end
else if(timer==1) begin
light="green";
end
else begin 
light="yellow";
end
end

endmodule
