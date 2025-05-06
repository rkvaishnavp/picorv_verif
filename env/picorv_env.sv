class picorv_env extends uvm_env;

  picorv_agent picorv_agent_i;
  `uvm_component_utils(picorv_env)
  `new_comp

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    picorv_agent_i = picorv_agent::type_id::create("picorv_agent", this);
  endfunction

endclass  //picorv_env extends uvm_env
