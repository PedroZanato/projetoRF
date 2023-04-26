

module mem (input [4:0] addr, input write_enable, input [63:0] din, input clk, output reg [63:0] dout);
   
    //banco de memoria
    reg[63:0] memoria[31:0];
    
    always @(*) begin
        if(write_enable) begin
           memoria[addr] <= din;
            //store
        end
        else begin
            //load
            dout <=memoria[addr];
        end
    end
endmodule