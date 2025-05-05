package picorv_pkg;

  parameter bit ENABLE_COUNTERS = 1;
  parameter bit ENABLE_COUNTERS64 = 1;
  parameter bit ENABLE_REGS_16_31 = 1;
  parameter bit ENABLE_REGS_DUALPORT = 1;
  parameter bit TWO_STAGE_SHIFT = 1;
  parameter bit BARREL_SHIFTER = 0;
  parameter bit TWO_CYCLE_COMPARE = 0;
  parameter bit TWO_CYCLE_ALU = 0;
  parameter bit COMPRESSED_ISA = 0;
  parameter bit CATCH_MISALIGN = 1;
  parameter bit CATCH_ILLINSN = 1;
  parameter bit ENABLE_PCPI = 0;
  parameter bit ENABLE_MUL = 0;
  parameter bit ENABLE_DIV = 0;
  parameter bit ENABLE_IRQ = 0;
  parameter bit ENABLE_IRQ_QREGS = 1;
  parameter bit ENABLE_IRQ_TIMER = 1;
  parameter bit ENABLE_TRACE = 0;
  parameter bit REGS_INIT_ZERO = 0;
  parameter logic [31:0] MASKED_IRQ = 32'h0000_0000;
  parameter logic [31:0] LATCHED_IRQ = 32'hffff_ffff;
  parameter logic [31:0] PROGADDR_RESET = 32'h0000_0000;
  parameter logic [31:0] PROGADDR_IRQ = 32'h0000_0010;
  parameter logic [31:0] STACKADDR = 32'hffff_ffff;

endpackage
