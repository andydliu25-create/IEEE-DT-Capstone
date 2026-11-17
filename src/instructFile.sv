module instructFile(
    input logic clk, wEnable, reset,
    input instruction wInstruction,
    input regIdxAddr PC,
    output instruction instruct
);
    instruction iFile [0:3];

    always_ff @(posedge clk or negedge reset) begin
        if(!reset) iFile <= '{default: 0};
        else if(wEnable) begin
            iFile[PC] <= wInstruction;
        end
        else begin
           instruct <= iFile[PC]; 
        end
    end

endmodule

