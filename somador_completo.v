module somador_completo(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
);

always @(*) begin
    sum = a ^ b ^ cin;
    cout = (a & b) | (a & cin) | (b & cin);
end

endmodule