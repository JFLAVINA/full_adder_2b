/*
==========================================================================
									 Full-Adder 4b Testbench
==========================================================================
Description: This is an Full-Adder 4-Bit Testbench

Design Engineer: 
	John Francis R. Laviña
	
	Date:
	5 May, 2026
==========================================================================

==========================================================================
*/

module tb_full_adder_4b();

	reg  [3:0] A;
	reg  [3:0] B;
	wire [4:0] S;
	
	full_adder_4b dut(
		.S	 (S), 
		.A  (A), 
		.B  (B)
	);
	
	initial begin
		
		A = 4'b0000; B = 4'b0000; #1;
		repeat (15) begin
			B = 4'b0000;
			A = A+4'b0001;
			#1
				repeat (15) begin
					B = B + 4'b0001; 
					#1;
				end
		
	   end
	end	
	
endmodule
