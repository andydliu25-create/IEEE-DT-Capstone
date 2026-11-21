module alu (

    input logic [7:0] src1, src2,
    input logic [2:0] sel,
    input logic [1:0] mode,
    output logic [7:0] result
);

always_comb begin

    case (sel)
        3'b001: result = src1 + src2;
        3'b010: result = src1 - src2;
        3'b011: result = src1 & src2;
        3'b100: result = src1 | src2;
        3'b101: result = src1 ^ src2;
        3'b110: begin
            case (mode)
                2'b00: result = src1 << 1;
                2'b01: result = src1 >> 1;
                2'b10: result = $signed(src1) >>> 1;
                default: result = 8'h00;
            endcase
        end
        default: result = 8'h00;
    endcase
end

endmodule
