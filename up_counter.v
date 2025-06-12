`timescale 1ns / 1ps

module up_counter(input clk,reset,enable,output reg [3:0]count);
always @(posedge clk)
begin
if(reset)
count<=0;
else if(enable)
count<=count+1;
end
endmodule

module up_counter_tb();
reg clk,reset,enable;
wire [3:0]count;
up_counter m1(clk,reset,enable,count);
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
reset=1;
enable=1;
#10;
reset=0;
#200;
enable=0;
#20;
$finish;
end
endmodule
