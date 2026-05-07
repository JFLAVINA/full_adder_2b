/*
==========================================================================
									 Full-Adder 4b
==========================================================================
Description: This is an Full-Adder 2-Bit Module using structural-level modeling.

Design Engineer: 
	John Francis R. Laviña
	
	Date:
	5 May, 2026
==========================================================================

==========================================================================
*/

module full_adder_4b(S, A, B);

	input  [3:0] A;
	input  [3:0] B;
	output [4:0] S;
	wire	 [2:0] W;
	
	half_adder ha(
		.carry (W[0]), 
		.sum 	 (S[0]), 
		.A 	 (A[0]), 
		.B 	 (B[0])
	);
	
	
	full_adder fa(
		.cout	 (W[1]), 
		.sum	 (S[1]), 
		.A	 	 (A[1]), 
		.B		 (B[1]),
		.cin	 (W[0])
	);
	
	full_adder fa2(
		.cout	 (W[2]), 
		.sum	 (S[2]), 
		.A	 	 (A[2]), 
		.B		 (B[2]),
		.cin	 (W[1])
	);
	
	full_adder fa3(
		.cout	 (S[4]), 
		.sum	 (S[3]), 
		.A	 	 (A[3]), 
		.B		 (B[3]),
		.cin	 (W[2])
	);
	
	
endmodule