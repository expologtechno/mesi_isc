/********************SLAVE_DRIVER**********************/

class cb_driver extends uvm_driver#(cb_transaction);

	`uvm_component_utils(cb_driver)
	 
	 virtual cb_intf cb_intf_h;
	 cb_transaction trans;
	 cb_agent_config cb_a_config_h;


//*******************************Methods***********************************	 
extern function new(string name="cb_driver",uvm_component parent);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
//extern task run_phase(uvm_phase phase);
//extern task send_to_dut(cb_transaction trans);
 
endclass
//******************************Constructor*********************************

function cb_driver:: new(string name="cb_driver",uvm_component parent);
	super.new(name,parent);
endfunction

function void cb_driver:: build_phase(uvm_phase phase);
	super.build_phase(phase);
	trans=cb_transaction::type_id::create("trans",this);

	
	if(!uvm_config_db#(cb_agent_config)::get(this,"*","cb_agent_config",cb_a_config_h))
			`uvm_fatal("MASTER_AGT_CONFIG","cannot get() ag_con_h from uvm_config");
	
endfunction


// *****************************Connect_phase*********************************  

function void cb_driver::connect_phase(uvm_phase phase);
  super.connect_phase (phase);
  cb_intf_h=cb_a_config_h.cb_intf_h;
endfunction


//TODO *****************************run_phase*********************************  

/*task cb_driver::run_phase(uvm_phase phase);
	forever
	begin
		seq_item_port.get_next_item(trans);
		send_to_dut(trans);
		seq_item_port.item_done();
	end
endtask*/


