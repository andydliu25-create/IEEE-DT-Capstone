module alu (

<<<<<<< HEAD:src/alu.sv
    input logic [7:0] src1, src2,
    input logic [2:0] sel,
    output logic [7:0] result
);

always_comb begin

    case (sel)
        3'b001: result = src1 + src2;
        3'b010: result = src1 - src2;
        3'b011: result = src1 & src2;
        3'b100: result = src1 | src2;
        3'b101: result = src1 ^ src2;
        default: result = 8'h00;
    endcase
end

endmodule
=======
    
)
>>>>>>> origin/main:src/cpu/alu.sv
