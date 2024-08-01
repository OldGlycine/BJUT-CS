module counter_top(clrn, clk, enp, ent, ldn, data_in, rco ,a,b,c,d,e,f,g,sel,n_en);
input clrn, clk, ent, enp, ldn, n_en;
input [3:0] data_in;
output a,b,c,d,e,f,g, rco;
output sel;
wire [3:0] y;
counter(.data_in(data_in), .clk(clk),.clrn(clrn), .ent(ent), .enp(enp),.ldn(ldn), .q_out(y),.rco(rco));
led(.in(y),.out({a,b,c,d,e,f,g}),.sel(sel),.n_en(n_en));
endmodule