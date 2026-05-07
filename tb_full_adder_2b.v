module tb_full_adder_2b;
	reg	[1:0]A;
	reg 	[1:0]B;
	wire	[2:0]S;
	
	full_adder_2b dut(
	.S(S),
	.A(A),
	.B(B)
	);
	
	
	initial begin
		A=0; B=0; #1;
		repeat(3)begin 
			B = 2'd0;
			A = A+2'd1 ;
			#1;
			
				repeat(3)begin
					B= B+2'd1;
					#1;
				end
		end
	end
endmodule