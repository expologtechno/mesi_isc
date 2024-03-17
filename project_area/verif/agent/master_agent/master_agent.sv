/****************MASTER_AGENT****************/

class mb_agent extends uvm_agent;

	`uvm_component_utils(mb_agent)


//-----------------Handles--------------------------------	
         mb_agent_config mb_a_config_h;	
	 mb_sequencer sequencer_h;
	 mb_driver driver_h;
	 

//-----------------Methods--------------------------------

extern function new(string name="mb_agent",uvm_component parent);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
endclass

//-----------------constructor--------------------------------
function mb_agent::new(string name = "mb_agent",uvm_component parent);
	super.new(name,parent);
endfunction

//--------------------build_phase-------------------------------
function void mb_agent::build_phase(uvm_phase phase);
	super.build_phase(phase);

		if(!uvm_config_db#(mb_agent_config)::get(this,"*","mb_agent_config",mb_a_config_h))
	`uvm_fatal("MASTER_AGT_CONFIG","cannot get() ag_con_h from uvm_config");
        	sequencer_h = mb_sequencer::type_id::create("sequencer_h",this);
	        driver_h = mb_driver::type_id::create("driver_h",this);

	       	//TODO create monitor handle
endfunction


//------------connect phase--------------------------------------

function void mb_agent::connect_phase(uvm_phase phase);
	begin
		driver_h.seq_item_port.connect(sequencer_h.seq_item_export);
	//TODO	mon_h.montor_port.connect(sb_h.analysis_export):
	end
	endfunction
