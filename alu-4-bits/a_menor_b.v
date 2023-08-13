module a_menor_b (hab_in, a, b, out, hab_out);
	input hab_in, a, b;
	output out, hab_out;
	assign out = hab_in & ~a & b;
	assign hab_out = (hab_in & ~a & ~b) | (hab_in & a & b);
endmodule