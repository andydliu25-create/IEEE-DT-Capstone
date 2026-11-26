import cpuPkg::*;

module regFile(
    input  logic clk, wEnable, reset,
    input  logic [7:0] writeData,
    input  regIdxAddr regIdx1,
    input  regIdxAddr regIdx2,
    input  regIdxAddr writeIdx,
    output logic [7:0] outData1,
    output logic [7:0] outData2
);
    logic [7:0] register [0:3];

    assign outData1 = register[regIdx1];
    assign outData2 = register[regIdx2];

    always_ff @(posedge clk or negedge reset) begin
        if (!reset)
            register <= '{default: 0};
        else if (wEnable)
            register[writeIdx] <= writeData;
    end

endmodule
