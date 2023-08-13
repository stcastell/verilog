module alu4b(a,b, sum, c_sum, res, c_res, amab, ameb, aib);
	input [0:3]a;
	input [0:3]b;
	output [0:3]sum;
	output c_sum; //carry de la suma
	output [0:3]res;
	output c_res; //carry de la resta
	output amab, ameb, aib; //a > b, a < b, a = b
	wire [0:2]s_net;
	wire [0:2]r_net;
	
	a_menor_b_completo amenb(.a(a), .b(b), .s(ameb));
	a_mayor_b_completo amayb(.a(a), .b(b), .s(amab));
	a_igual_b_completo aigb(.a(a), .b(b), .s(aib));
	
	semi_restador sr1(.cin(0), .a(a[3]), .b(b[3]), .sr_out(res[3]), .cout(r_net[0]));
	semi_restador sr2(.cin(r_net[0]), .a(a[2]), .b(b[2]), .sr_out(res[2]), .cout(r_net[1]));
	semi_restador sr3(.cin(r_net[1]), .a(a[1]), .b(b[1]), .sr_out(res[1]), .cout(r_net[2]));
	semi_restador sr4(.cin(r_net[2]), .a(a[0]), .b(b[0]), .sr_out(res[0]), .cout(c_res));
	
	semi_sumador ss1(.cin(0), .a(a[3]), .b(b[3]), .ss_out(sum[3]), .cout(s_net[0]));
	semi_sumador ss2(.cin(s_net[0]), .a(a[2]), .b(b[2]), .ss_out(sum[2]), .cout(s_net[1]));
	semi_sumador ss3(.cin(s_net[1]), .a(a[1]), .b(b[1]), .ss_out(sum[1]), .cout(s_net[2]));
	semi_sumador ss4(.cin(s_net[2]), .a(a[0]), .b(b[0]), .ss_out(sum[0]), .cout(c_sum));
endmodule