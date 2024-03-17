//*******************ENV_CONGIF********************

class env_config extends uvm_object;

	`uvm_object_utils(env_config)


// Handles for agent config classes
	mb_agent_config mb_a_config_h;
	cb_agent_config cb_a_config_h;

//*****************************Constructor*********************************	
function new(string name="env_config");
	super.new(name);
endfunction

endclass
