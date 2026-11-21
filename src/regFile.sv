import cpuPkg::*;

module regFile(
    input logic clk, wEnable, reset,
    input logic [7:0] regData,
    input regIdxAddr regIdx,
    output logic [7:0] outData 
);
    logic [7:0] register [0:3];

    always_ff @(posedge clk or negedge rst) begin
        if(!reset) register <= '{default: 0};
        else if(wEnable) register[regIdx] <= regData;
        else outData <= register[regIdx];
    end

endmodule