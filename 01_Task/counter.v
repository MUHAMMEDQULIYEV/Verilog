module counter(
clock,
reset,
enable,
counter_out
);

// Input

input clock;
input reset;
input enable;


//Output
output [3:0] counter_out;

//Wire

wire clock;
wire reset;
wire enable;


reg [3:0] counter_out;



//Actual Code


always @ (posedge clock)

begin:Counter
   if (reset ==1'b1) begin
    counter_out <=  #1  4'b0000;
   end
   else if (enable == 1'b1) begin 
    counter_out <=  #1  counter_out + 1;
   end
end
endmodule
