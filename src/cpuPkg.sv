package cpuPkg;
   typedef enum logic [2:0] {FETCH, DECODE, EXECUTE, MEMORY, WRITEBACK, HALT} cpu_state;
   typedef enum logic [4:0] {ADD, SUB, AND, OR, XOR, ADDI, SUBI, ANDI, ORI, XORI, LW, SW, CMP, JE, JL, SHIFT} cpu_op;
   typedef enum logic [2:0] {
    ADDS   = 3'b001,
    SUBS   = 3'b010,
    ANDS   = 3'b011,
    ORS    = 3'b100,
    XORS   = 3'b101,
    SHIFTS = 3'b110
} aluOp;
   typedef logic [7:0] instruction;
   typedef logic [1:0] regIdxAddr;
   typedef logic [7:0] regType;
endpackage



