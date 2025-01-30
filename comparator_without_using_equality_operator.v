// Write A Verilog code To compare two multi-bit numbers and set single bit "equal" signal as high if two numbers are equal

/*
module equating(input [7:0]a. b
                output out);
      
	  assign out = (a == b) ? 1'b1 : 1'b0 ;
	  
endmodule
*/


/*module equating(input [7:0]a. b
                output out);
      
    wire [7:0] c;
	
	assign c = a ^ b;
	assign out = ~(|c);	  
endmodule
*/

module equating(input clk, areset,
                input [7:0]a, b,
                output equal);
      
    reg [7:0] c;
	
	always@(posedge clk or posedge areset)
	 begin
	    if(areset)
		    c = 8'b1;
	    else 
		    c = a ^ b;
		   
	 end
	 
	   assign equal = ~(|c);
endmodule
