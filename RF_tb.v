`import "RF.v"
`timescale 10ps / 1ps
module RF_tb;

reg clk;
reg load;
reg [63:0] din;
reg [4:0] Ra;
reg [4:0] Rb;
reg [4:0] Rw;
reg [4:0] offset;
wire [63:0] doutA;
wire [63:0] doutB;


RF tb(
  .load(load),
  .clk(clk),
  .din(din),
  .Ra(Ra),
  .Rb(Rb),
  .Rw(Rw),
  .offset(offset),
  .doutA(doutA),
  .doutB(doutB)
);

initial begin
  clk = 0;
  #10; // delay para esperar o módulo inicializar

  Rb = 0;

  // escreve dado no registrador
    din = 150;
    Ra = 2;
    #5; // delay para esperar a escrita terminar

  // lê dados dos registradores e verifica se estão corretos
    Rw = 7;
    offset = 4;
    
    #5; // delay para esperar a leitura terminar
    if (dados_out !== i) begin
      $display("Erro: dados_out[%0d] = %0d, deveria ser %0d", i, dados_out, i);
    end


  $display("Teste concluído");
  $finish;
end

always #5 clk = ~clk;

endmodule