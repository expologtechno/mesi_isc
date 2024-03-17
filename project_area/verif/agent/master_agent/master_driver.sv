/*************MASTER_DRIVER*************/

class mb_driver extends uvm_driver#(mb_transaction);

	`uvm_component_utils(mb_driver)

//------------- Handles ----------------------------------
	 virtual mb_intf mb_intf_h;
	 mb_transaction trans_h;
	 mb_agent_config mb_a_config_h;


//--------------Methods------------------------------------
extern function new(string name="mb_driver",uvm_component parent);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
//extern task run_phase(uvm_phase phase);
//extern task send_to_dut(mb_transaction trans_h);

endclass
//--------------constructor-------------------------
	 
function mb_driver:: new(string name="mb_driver",uvm_component parent);
	super.new(name,parent);
endfunction

//------------------build phase-------------------------------
function void mb_driver:: build_phase(uvm_phase phase);
	super.build_phase(phase);
	trans_h=mb_transaction::type_id::create("trans_h",this);

	
	if(!uvm_config_db#(mb_agent_config)::get(this,"*","mb_agent_config",mb_a_config_h))
			`uvm_fatal("MASTER_AGT_CONFIG","cannot get() ag_con_h from uvm_config");
	
endfunction


//-----------connect phase----------------------------------------
function void mb_driver::connect_phase(uvm_phase phase);
	 super.connect_phase(phase);
         mb_intf_h=mb_a_config_h.mb_intf_h;	
endfunction





