module top(clk_50mhz, cs,w_r,addr,key,dsa,leda,ring,beep,reset,left,
				stop, LSNG, LSNY, LSNR, LEWG, LEWY, LEWR, rules, turn_out,/*I_ROW, I_COL*/, beep_r, ds, led,w_data,r_count,y_count,l_count,a,b,out,array_reg1,array_reg2,condition);
	// 分频器模块
	input clk_50mhz;
	wire clk_1hz, clk_4khz, clk_2hz, clk_100hz;
	// 时间预置模块
	input cs;
	input w_r;
	input addr;
	output [6 - 1:0] w_data;
	output [6 - 1:0] array_reg1;
	output [6 - 1:0] array_reg2;
	//键盘防抖模块
	input key;
	wire keyout;
		// 红绿灯核心模块
		// start对应w_r的w模式
	input stop;
	input reset;
	wire [2:0] c_state, n_state;
		// 模拟四种左转规则
	input [1:0] rules;
	output left;
	output [1:0] ring;
	output [1:0] turn_out;
	output [5:0] r_count, y_count, l_count;
	output LSNG, LSNY, LSNR, LEWG, LEWY, LEWR;
		// 蜂鸣器模块
	output beep;
	output beep_r;
		// LED灯显示模块
	wire [1:0] sel;
	output [1:0] ds;
	output [6:0] led;
	wire [3:0] out;
	wire [3:0] a,b;
	// 预置时间LED灯显示模块
	wire [1:0] sela;
	output [1:0] dsa;
	output [6:0] leda;
	wire [3:0] outa;
	wire [3:0] c,d;
	output [3:0] a;
	output [3:0] b;
	output [3:0] out;
	output [31:0] condition;
	
	frequency_divider(.clk_50mhz(clk_50mhz), .clk_1hz(clk_1hz), .clk_4khz(clk_4khz), .clk_2hz(clk_2hz), .clk_100hz(clk_100hz));
	//debouncer(.clk(clk_50mhz), .key(button), .keyout(keyout));
	pretime(.clk(clk_50mhz), .cs(cs), .w_r(w_r), .addr(addr), .button(key), .array_reg1(array_reg1), .array_reg2(array_reg2), .w_data(w_data));
	main(.start(w_r), .stop(stop), .clk(clk_1hz), .r(array_reg1), .y(array_reg2), .LSNG(LSNG), .LSNY(LSNY), .c_state(c_state), .n_state(n_state),.reset(reset), 
					.LSNR(LSNR), .LEWG(LEWG), .LEWY(LEWY), .LEWR(LEWR), .rules(rules), .turn_out(turn_out), .left(left), .ring(ring),.r_count(r_count), .y_count(y_count), .l_count(l_count), .condition(condition));

	buzz(.clk(clk_4khz), .beep_r(beep_r), .clk_slow(clk_1hz), .clk_fast(clk_2hz), .ring(ring), .beep(beep));

	scan(.clk(clk_100hz), .ds(ds), .sel(sel));
	test02(.sel(sel), .en(w_r), .out(out), .x(r_count), .y(y_count), .z(l_count) ,.a(a), .b(b));
	LED(.in(out), .en(w_r), .out(led));
	
	scanA(.clk(clk_100hz), .ds(dsa), .sel(sela));
	test02A(.sel(sela), .out(outa), .x(w_data), .a(c), .b(d));
	LEDA(.in(outa), .out(leda));

endmodule