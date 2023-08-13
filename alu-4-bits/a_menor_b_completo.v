module a_menor_b_completo (a, b, s);
	input [0:3]a;
   input	[0:3]b;
	output s;
	wire [0:2]c_net;

	//Instancia de modulo individual
	a_menor_b amb1(.hab_in(1), .a(a[0]), .b(b[0]), .out(s0), .hab_out(c_net[0]));
	a_menor_b amb2(.hab_in(c_net[0]), .a(a[1]), .b(b[1]), .out(s1), .hab_out(c_net[1]));
	a_menor_b amb3(.hab_in(c_net[1]), .a(a[2]), .b(b[2]), .out(s2), .hab_out(c_net[2]));
	a_menor_b amb4(.hab_in(c_net[2]), .a(a[3]), .b(b[3]), .out(s3), .hab_out(h3));

	//Salida 
	assign s = s3|s2|s1|s0;
endmodule