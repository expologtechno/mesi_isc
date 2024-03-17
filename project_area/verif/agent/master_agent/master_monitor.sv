/*************MASTER_MONITOR**********/

class mb_monitor extends uvm_monitor;

	`uvm_component_utils(mb_monitor)
	
	 
extern function new(string name="mb_monitor",uvm_component parent);
extern function void build_phase(uvm_phase phase);
//extemb function void connect_phase(uvm_phase phase);
	
	 
endclass


//---------------CONSTRUCTOR---------

function mb_monitor::new(string name="mb_monitor", uvm_component parent);
	super.new(name,parent);
endfunction

//----buildphase--------------

function void mb_monitor::build_phase(build_phase phase);
	super.build_phase(phase);
endfunction
