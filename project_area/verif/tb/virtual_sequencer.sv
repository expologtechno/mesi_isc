//*****************VIRTUAL_SEQUENCER******************

class virtual_sequencer extends uvm_sequencer;

	`uvm_component_utils(virtual_sequencer)

	mb_sequencer sequencer_h;           
	cb_sequencer sequencer;
	env_config env_config_h;
//*****************************Constructor*********************************
	
function new(string name="virtual_sequencer",uvm_component parent);
	super.new(name,parent);
endfunction

//*****************************Build Phase*********************************
function void build_phase(uvm_phase phase);

	 if(!uvm_config_db#(env_config)::get(this,"","env_config",env_config_h))
	  `uvm_fatal("VIRTUAL_SEQUENCER","getting unsuccessful")
	super.build_phase(phase);
endfunction

endclass
