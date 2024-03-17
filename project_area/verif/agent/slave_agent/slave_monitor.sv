/****************SLAVE_MONITOR***********/


class cb_monitor extends uvm_monitor;

	`uvm_component_utils(cb_monitor)
	
	 
extern function new(string name="cb_monitor",uvm_component parent);
extern function void build_phase(uvm_phase phase);
//extern function void connect_phase(uvm_phase phase);
	
	 
endclass


//---------------CONSTRUCTOR---------

function cb_monitor::new(string name="cb_monitor", uvm_component parent);
	super.new(name,parent);
endfunction

//----------build_phase------------
function void cb_monitor::build_phase(build_phase phase);
	super.build_phase(phase);
endfunction
