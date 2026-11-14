# Draft CPU Instruction Set

| Instruction | Meaning | Type | Opcode `[7:4]` | Operand bits `[3:0]` |
|---|---|:---:|:---:|---|
| `ADD Rd, Rs` | `Rd ← Rd + Rs` | R | `0001` | `[3:2] Rd`, `[1:0] Rs` |
| `SUB Rd, Rs` | `Rd ← Rd − Rs` | R | `0010` | `[3:2] Rd`, `[1:0] Rs` |
| `AND Rd, Rs` | `Rd ← Rd AND Rs` | R | `0011` | `[3:2] Rd`, `[1:0] Rs` |
| `OR Rd, Rs` | `Rd ← Rd OR Rs` | R | `0100` | `[3:2] Rd`, `[1:0] Rs` |
| `XOR Rd, Rs` | `Rd ← Rd XOR Rs` | R | `0101` | `[3:2] Rd`, `[1:0] Rs` |
| `ADDI Rd, Imm` | `Rd ← Rd + Imm` | I | `1001` | `[3:2] Rd`, `[1:0] Imm` |
| `SUBI Rd, Imm` | `Rd ← Rd − Imm` | I | `1010` | `[3:2] Rd`, `[1:0] Imm` |
| `ANDI Rd, Imm` | `Rd ← Rd AND Imm` | I | `1011` | `[3:2] Rd`, `[1:0] Imm` |
| `ORI Rd, Imm` | `Rd ← Rd OR Imm` | I | `1100` | `[3:2] Rd`, `[1:0] Imm` |
| `XORI Rd, Imm` | `Rd ← Rd XOR Imm` | I | `1101` | `[3:2] Rd`, `[1:0] Imm` |
| `LW Rd, Rm` | `Rd ← mem[Rm]` | M | `1110` | `[3:2] Rd`, `[1:0] Rm` |
| `SW Rs, Rm` | `mem[Rm] ← Rs` | M | `1111` | `[3:2] Rs`, `[1:0] Rm` |
| `CMP Ra, Rb` | Update `EQ` and signed `LT`. Preserve both registers. | C | `0000` | `[3:2] Ra`, `[1:0] Rb` |
| `JE target` | Jump if `EQ = 1`. Otherwise advance to `PC + 1`. | C | `0110` | `[3:0]` target field |
| `JL target` | Jump if `LT = 1`. Otherwise advance to `PC + 1`. | C | `0111` | `[3:0]` target field |
| `SHIFT Rd, mode` | Shift `Rd` by one bit and write the result to `Rd`. | S | `1000` | `[3:2] Rd`, `[1:0] mode` |

**Shift modes.** `00` = left, `01` = logical right, `10` = arithmetic right, `11` = reserved.

**Open decisions.** Absolute address vs. signed PC-relative offset for branches, and zero-extension vs. sign-extension for the 2-bit ALU immediates.