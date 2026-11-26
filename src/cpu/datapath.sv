import cpuPkg::*;

module datapath (
    input logic RegImm,
    input logic [7:0] Imm,
    input logic res,
    input logic clock,
    input logic write_enable,
    input regIdxAddr regIndex1,
    input regIdxAddr regIndex2,
    input regIdxAddr writeIndex
);

    logic [7:0] ALUdata1, ALUdata2;
    logic [7:0] register_data2;
    logic [7:0] ALUout;

    regFile register_file (
        .outData1(ALUdata1),
        .outData2(register_data2),
        .writeData(ALUout),
        .wEnable(write_enable),
        .clk(clock),
        .reset(res),
        .regIdx1(regIndex1),
        .regIdx2(regIndex2),
        .writeIdx(writeIndex)
    );

    assign ALUdata2 = RegImm ? register_data2 : Imm;

    alu alunit (
        .src1(ALUdata1),
        .src2(ALUdata2),
        .result(ALUout)
    );

endmodule
