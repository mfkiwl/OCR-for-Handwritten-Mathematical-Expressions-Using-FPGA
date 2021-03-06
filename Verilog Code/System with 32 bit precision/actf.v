////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Institution   : Bandung Institute of Technology
// Engineer      : Jhonson Lee, Bobbi W. Yogatama, Hans Christian
//
// Create Date   : 11/14/2017 
// Design Name   : Activation Function using Sigmoid 
// Module Name   : actf
// Project Name  : LSI Design Contest in Okinawa 2018
// Target Devices: Zynq 7000
// Tool versions : Vivado 2016.4
//
// Description: 
// 		Performing addition for 4 input values
// 
// Input:
//  	clk : 1 bit  : clock signal
//  	en  : 1 bit  : enable signal
//  	in  : 16 bit signed : input Value 
//
// Output:
//  	out : 16 bit signed : Result 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Addtion using operator +
//
///////////////////////////////////////////////////////////////////////////////////////////////////////

module actf(clk,reset,en, in, out);

parameter DWIDTH=32;
parameter frac=24;

input clk, reset, en;
input signed [DWIDTH-1:0] in;
output signed [DWIDTH-1:0] out;

wire signed [DWIDTH-1:0] temp;


sigmf sigmoid_function(in, temp);
Dflipflop Dflop(.clk(clk),.reset(reset),.in(temp),.enable(en),.out(out));

endmodule