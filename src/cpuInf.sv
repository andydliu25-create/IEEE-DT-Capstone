import cpuKpg::*;

interface cpuInf(input logic clk, input logic reset);
    Instruction cpuInstruct;


    modport DUTmp(input clk, input reset, input cpuInstruct);
endinterface


