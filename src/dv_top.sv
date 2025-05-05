module dv_top (
    input logic clk,
    input logic resetn,
    output picorv_intf pif
);

  axil_ram_wrapper axil_memory (
      .clk(clk),
      .resetn(resetn),
      .axil_intf(pif.axil_intf_i)
  );

  picorv_axi_wrapper picorv_axi_uut (
      .clk(clk),
      .resetn(resetn),
      .pif(pif)
  );

endmodule
