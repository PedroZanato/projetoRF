`include "somador_completo.v"
module somador_subtrator_5_bits(
    input [4:0] a,
    input [4:0] b,
    input cin,
    output wire [4:0] sum,
    output wire cout
);

    wire [4:0] c;
    generate
        genvar i;
        for (i = 0; i < 5; i = i + 1) begin
            somador_completo soma(.a(a[i]), .b(b[i]), .cin(c[i]), .sum(sum[i]), .cout(c[i]));
        end
    endgenerate

    assign cout = c;

endmodule