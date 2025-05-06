module axil_ram_wrapper (
    input logic     clk,
    input logic     resetn,
          axil_intf axil_intf_i
);
  import axil_pkg::*;

  axil_ram #(
      .DATA_WIDTH(DATA_WIDTH),
      .ADDR_WIDTH(ADDR_WIDTH),
      .PIPELINE_OUTPUT(PIPELINE_OUTPUT)
  ) axil_ram_inst (
      .clk(clk),
      .rst(resetn),
      .s_axil_awaddr(axil_intf_i.awaddr),
      .s_axil_awprot(axil_intf_i.awprot),
      .s_axil_awvalid(axil_intf_i.awvalid),
      .s_axil_awready(axil_intf_i.awready),
      .s_axil_wdata(axil_intf_i.wdata),
      .s_axil_wstrb(axil_intf_i.wstrb),
      .s_axil_wvalid(axil_intf_i.wvalid),
      .s_axil_wready(axil_intf_i.wready),
      .s_axil_bresp(),
      .s_axil_bvalid(axil_intf_i.bvalid),
      .s_axil_bready(axil_intf_i.bready),
      .s_axil_araddr(axil_intf_i.araddr),
      .s_axil_arprot(axil_intf_i.arprot),
      .s_axil_arvalid(axil_intf_i.arvalid),
      .s_axil_arready(axil_intf_i.arready),
      .s_axil_rdata(axil_intf_i.rdata),
      .s_axil_rresp(),
      .s_axil_rvalid(axil_intf_i.rvalid),
      .s_axil_rready(axil_intf_i.rready)
  );

endmodule
