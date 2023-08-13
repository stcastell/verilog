module a_igual_b (hab_in, a, b, out);
	input hab_in, a, b;
	output out;
	assign out = (hab_in & ~a & ~b) | (hab_in & a & b);
endmodule