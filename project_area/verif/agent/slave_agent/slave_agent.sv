/*******************SLAVE_AGENT********************/

class cb_agent extends uvm_agent;

	`uvm_component_utils(cb_agent)

// Component handles    	
	 cb_sequencer sequencer;
	 cb_driver driver;
         //TODO create monitor handle

	 // Environment config handle
	 cb_agent_config cb_a_config_h;

 
//*******************************Methods*************************************	
extern function new(string name="cb_agent",uvm_component parent);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
endclass

//*****************************Constructor***********************************
function cb_agent::new(string name = "cb_agent",uvm_component parent);
	super.new(name,parent);
endfunction


//*****************************Build_phase***********************************

function void cb_agent::build_phase(uvm_phase phase);
	super.build_phase(phase);

		if(!uvm_config_db#(cb_agent_config)::get(this,"*","cb_agent_config",cb_a_config_h))
	`uvm_fatal("MASTER_AGT_CONFIG","cannot get() ag_con_h from uvm_config");

      	sequencer = cb_sequencer::type_id::create("sequencer",this);
	driver = cb_driver::type_id::create("driver",this);
        //TODO create monitor handle using create method
	
endfunction

//*****************************Connect_phase**********************************

function void cb_agent ::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  //if(s_a_config_h.is_active==UVM_ACTIVE)
    //begin
      // Connection between sequencer and driver
      driver.seq_item_port.connect(sequencer.seq_item_export);

     // connecting monitor and agent analysis port
    // mon.phy_monitor_port.connect(phy_monitor_port);
   // end
endfunction
