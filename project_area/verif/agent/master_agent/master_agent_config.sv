/******************MASTER_AGENT_CONFIG*******************/

class mb_agent_config extends uvm_object;
	`uvm_object_utils(mb_agent_config)
	virtual mb_intf mb_intf_h;

  	uvm_active_passive_enum is_active=UVM_ACTIVE;      
extern function new(string name="mb_agent_config");

endclass

//-----------------constructor--------------------------
function mb_agent_config::new(string name="mb_agent_config");
	super.new(name);
endfunction
