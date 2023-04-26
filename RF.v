`include "somador_subtrator_5_bits.v"
`include "mem.v"
`include "banco_de_registradores.v"

module RF(
    input [4:0] Ra,
    input [4:0] Rb,
    input load,
    input [63:0] din,
    input [4:0] Rw,
    input clk,
    input [4:0] offset,
    output reg [63:0] doutA,
    output reg [63:0] doutB);

    reg [63:0] ins [31:0];
    wire [63:0] w1 = din;
    wire [63:0] outs [31:0];
    wire [4:0] sum;
    wire cout;
    wire cin = 0;
    
    banco_de_registradores b1(
        .in0(ins[0]), .in1(ins[1]), .in2(ins[2]), .in3(ins[3]), .in4(ins[4]),
        .in5(ins[5]), .in6(ins[6]), .in7(ins[7]), .in8(ins[8]),
        .in9(ins[9]), .in10(ins[10]), .in11(ins[11]),.in12(ins[12]),
        .in13(ins[13]), .in14(ins[14]), .in15(ins[15]), .in16(ins[16]),
        .in17(ins[17]),.in18(ins[18]),.in19(ins[19]), .in20(ins[20]),
        .in21(ins[21]), .in22(ins[22]),.in23(ins[23]), .in24(ins[24]),
        .in25(ins[25]), .in26(ins[26]), .in27(ins[27]), .in28(ins[28]),
        .in29(ins[29]), .in30(ins[30]), .in31(ins[31]), .load(load), .clk(clk),
        .out0(outs[0]), .out1(outs[1]), .out2(outs[2]), .out3(outs[3]), .out4(outs[4]),
        .out5(outs[5]), .out6(outs[6]), .out7(outs[7]), .out8(outs[8]), .out9(outs[9]),
        .out10(outs[10]), .out11(outs[11]), .out12(outs[12]),.out13(outs[13]), .out14(outs[14]),
        .out15(outs[15]), .out16(outs[16]), .out17(outs[17]), .out18(outs[18]), .out19(outs[19]),
        .out20(outs[20]), .out21(outs[21]), .out22(outs[22]), .out23(outs[23]),.out24(outs[24]), 
        .out25(outs[25]), .out26(outs[26]), .out27(outs[27]), .out28(outs[28]), .out29(outs[29]), .out30(outs[30]),
        .out31(outs[31])
        );

            //load x1, 0(x2)
            // x1 = mem(x2+0)

    mem memoria(.addr(sum), .write_enable(load), .din(doutA), .clk(clk), .dout(w1));
    somador_subtrator_5_bits adder(.a(offset), .b(Rb), .cin(cin), .cout(cout), .sum(sum));

    always @(posedge clk) begin 
        doutB <= Rb;

        if (load) begin
            ins[Rw] <= w1;
        end
            //store x1, 0(x2)
            // mem(x2+0) = x1
        else begin

            doutA <= outs[Ra];
        end
    end
endmodule



/* 
Rw= input que determina o registrador que será carregado.
Ra= determina a saida do banco de registradores
Rb= determina o offset, portanto em que endereço de memoria o registrador que sera carregado pegará o valor
din= determina no load, qual sera o valor 
 */