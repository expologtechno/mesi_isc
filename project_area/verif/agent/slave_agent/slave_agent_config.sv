//***************SLAVE_AGENT_CONGIF****************************************

class cb_agent_config extends uvm_object;
`uvm_object_utils(cb_agent_config)

virtual cb_intf cb_intf_h;
uvm_active_passive_enum is_active=UVM_ACTIVE;
        
//*******************************Method*************************************

extern function new(string name="cb_agent_config");
endclass



//*****************************Constructor***********************************
function cb_agent_config::new(string name="cb_agent_config");
	super.new(name);
endfunction
