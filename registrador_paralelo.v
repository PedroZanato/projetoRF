module registrador_paralelo #
(
    parameter BITS = 64
)
(
    
    input [BITS-1:0] in,
    input clk,
    input load,
    output reg [BITS-1:0] out
);

    always @(posedge clk) begin
        if (load) begin
            out <= in;
        end
    end

endmodule