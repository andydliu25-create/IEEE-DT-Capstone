import cpuPkg::*;

module memFile(
    input logic clk, reset, wEnable,
    input regIdxAddr idx,
    input regType wData,
    output regType rData
);

    regType memory [0:3];

    always_ff @(posedge clk or negedge reset) begin
        if(!reset) memory <= '{default: 0};
        else if(wEnable) memory[idx] <= wData;
        else rData <= memory[idx];
    end


endmodule

