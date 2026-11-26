import cpuPkg::*;

module datapath()

  logic [7:0] ALUdata1, ALUdata2;

  regfile register (
    .ALUdata1(outData1),
    .ALUdata2(outData2)
  );
  
endmodule
