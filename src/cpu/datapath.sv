import cpuPkg::*;

module datapath (
    input logic RegImm,
    input logic [7:0] Imm
);

    logic [7:0] ALUdata1, ALUdata2;
    logic [7:0] register_data2;

    regFile register_file (
        .outData1(ALUdata1),
        .outData2(register_data2)
    );

    assign ALUdata2 = RegImm ? register_data2 : Imm;

endmodule
