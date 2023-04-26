`include "registrador_paralelo.v"

module banco_de_registradores (
    input [63:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, 
    in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, 
    in25, in26, in27, in28, in29, in30, in31,
    
    input load,
    input clk,
    output wire [63:0] out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12,
    out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23,
    out24, out25, out26, out27, out28, out29, out30, out31
);
    registrador_paralelo r0(.in(in0), .load(load), .clk(clk), .out(out0));
    registrador_paralelo r1(.in(in1), .load(load), .clk(clk), .out(out1));
    registrador_paralelo r2(.in(in2), .load(load), .clk(clk), .out(out2));
    registrador_paralelo r3(.in(in3), .load(load), .clk(clk), .out(out3));
    registrador_paralelo r4(.in(in4), .load(load), .clk(clk), .out(out4));
    registrador_paralelo r5(.in(in5), .load(load), .clk(clk), .out(out5));
    registrador_paralelo r6(.in(in6), .load(load), .clk(clk), .out(out6));
    registrador_paralelo r7(.in(in7), .load(load), .clk(clk), .out(out7));
    registrador_paralelo r8(.in(in8), .load(load), .clk(clk), .out(out8));
    registrador_paralelo r9(.in(in9), .load(load), .clk(clk), .out(out9));
    registrador_paralelo r10(.in(in10), .load(load), .clk(clk), .out(out10));
    registrador_paralelo r11(.in(in11), .load(load), .clk(clk), .out(out11));
    registrador_paralelo r12(.in(in12), .load(load), .clk(clk), .out(out12));
    registrador_paralelo r13(.in(in13), .load(load), .clk(clk), .out(out13));
    registrador_paralelo r14(.in(in14), .load(load), .clk(clk), .out(out14));
    registrador_paralelo r15(.in(in15), .load(load), .clk(clk), .out(out15));
    registrador_paralelo r16(.in(in16), .load(load), .clk(clk), .out(out16));
    registrador_paralelo r17(.in(in17), .load(load), .clk(clk), .out(out17));
    registrador_paralelo r18(.in(in18), .load(load), .clk(clk), .out(out18));
    registrador_paralelo r19(.in(in19), .load(load), .clk(clk), .out(out19));
    registrador_paralelo r20(.in(in20), .load(load), .clk(clk), .out(out20));
    registrador_paralelo r21(.in(in21), .load(load), .clk(clk), .out(out21));
    registrador_paralelo r22(.in(in22), .load(load), .clk(clk), .out(out22));
    registrador_paralelo r23(.in(in23), .load(load), .clk(clk), .out(out23));
    registrador_paralelo r24(.in(in24), .load(load), .clk(clk), .out(out24));
    registrador_paralelo r25(.in(in25), .load(load), .clk(clk), .out(out25));
    registrador_paralelo r26(.in(in26), .load(load), .clk(clk), .out(out26));
    registrador_paralelo r27(.in(in27), .load(load), .clk(clk), .out(out27));
    registrador_paralelo r28(.in(in28), .load(load), .clk(clk), .out(out28));
    registrador_paralelo r29(.in(in29), .load(load), .clk(clk), .out(out29));
    registrador_paralelo r30(.in(in30), .load(load), .clk(clk), .out(out30));
    registrador_paralelo r31(.in(in31), .load(load), .clk(clk), .out(out31));
    
endmodule