`include "registrador_paralelo.v"

module tb_registrador_paralelo;

    // Parâmetros do registrador
    parameter BITS = 8;

    // Sinais de teste
    reg [BITS-1:0] in;
    reg load;
    wire [BITS-1:0] out;

    // Instanciação do registrador
    registrador_paralelo #(BITS) reg_inst(
        .in(in),
        .load(load),
        .out(out)
    );

    // Estímulos de entrada
    initial begin
        in = 8'b00000000;
        load = 0;
        #5 load = 1;
        #5 in = 8'b01010101;
        #5 load = 0;
        #5 in = 8'b10101010;
        #5 load = 1;
        #5 load = 0;
        #5 $finish;
    end

    // Verificação dos resultados
    always @(*) begin
        $display("out = %b", out);
    end

endmodule

