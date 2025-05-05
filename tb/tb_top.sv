`include "uvm_pkg.sv"

module tb_top;

  import uvm_pkg::*;

  reg clk, resetn;
  picorv_intf pif (
      clk,
      resetn
  );

  always #5 clk = ~clk;
  initial begin
    clk = 0;
    resetn = 0;
    #20;
    resetn = 1;
  end

  initial begin
    uvm_config_db#(virtual picorv_intf)::set(null, "GLOBAL", "picorv_intf", pif);
    run_test("pico_base_test");
  end

endmodule
