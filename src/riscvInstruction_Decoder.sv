import cpuPkg::*;

module riscvinstruction_Decoder(
   input instruction instruct,
   output cpu_op cpuOperation,
   output aluOp aluOperation,
   output regIdxAddr rd, rsImmModeRmRb
   output logic [3:0] jumpTarget
);
   always_comb begin
    rd = instruct[3:2];
    rsImmModeRmRb = instruct[1:0];

    case(instruct[7:4])
      4'b0001: begin
        cpuOperation = ADD;
        aluOperation = ADDS;
      end
      4'b0010: begin
        cpuOperation = SUB;
        aluOperation = SUBS;
      end
      4'b0011: begin
        cpuOperation = AND;
        aluOperation = ANDS;
      end
      4'b0100: begin
        cpuOperation = OR;
        aluOperation = ORS;
      end
      4'b0101: begin
        cpuOperation = XOR;
        aluOperation = XORS;
      end
      4'b1001: begin
        cpuOperation = ADDI;
        aluOperation = ADDS;
      end
      4'b1010: begin
        cpuOperation = SUBI;
        aluOperation = SUBS;
      end
      4'b1011: begin
        cpuOperation = ANDI;
        aluOperation = ANDS;
      end
      4'b1100: begin
        cpuOperation = ORI;
        aluOperation = OR;
      end
      4'b1101: begin
        cpuOperation = XORI;
        aluOperation = XORS;
      end
      4'b1110: begin
        cpuOperation = LW;
        aluOperation = ADDS;
      end
      4'b1111: begin
        cpuOperation = SW;
        aluOperation = ADDS;
      end
      4'b0000: begin
        cpuOperation = CMP;
        aluOperation = SUBS;
      end
      4'b0110: begin
        cpuOperation = JE;
        aluOperation = ADDS;
        jumpTarget = instruct[3:0];
      end
      4'b0111: begin
        cpuOperation = JL;
        aluOperation = ADDS;
        jumpTarget = instruct[3:0];
      end
      4'b1000: begin
        cpuOperation = SHIFT;
        aluOperation = ADDS;
      end
    endcase
    
   end


endmodule








