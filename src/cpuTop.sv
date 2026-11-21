import cpuPkg::*;

module cpuTop(cpuInf.DUTmp inf);
    cpu_op Instruction;
    alu_op supportAluOp;
    regIdxAddr reg1, reg2, result;
    cpu_state state;
    logic [3:0] nextMemAddr;

    riscvInstruction_Decoder cpuDecoder(.instruct(inf.cpuInstruct), .cpuOperation(Instruction), .aluOp(supportAluOp), .rd(reg1)
            .rsImmModeRmRb(reg2), .jumpTarget(nextMemAddr));


    memFile Memory();
    always_ff @(posedge inf.clk) begin
        if(!inf.reset) begin
            state <= FETCH;
            reg1 <= '0;
            reg2 <= '0;
            result <= '0;
            nextMemAddr <= '0;
        end

    end


endmodule

