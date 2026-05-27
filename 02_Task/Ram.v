module Ram
#(
parameter ADDR_WIDTH =16,
parameter DATA_WIDTH=32





)
(
input wire clk,
input wire we,
input wire [ ADDR_WIDTH-1:0] addr,
input wire [ DATA_WIDTH-1:0 ]din,// DATa input
output wire [DATA_WIDTH-1:0] dout
);
reg [ DATA_WIDTH-1:0] mem [2**ADDR_WIDTH-1:0];


 always @(posedge clk)  begin

 if (we ==1 'b1)
 mem[addr] <=din;
 end


 assign dout=mem[addr];
endmodule



