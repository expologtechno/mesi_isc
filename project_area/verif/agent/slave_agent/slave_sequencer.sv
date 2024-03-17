//**************SLAVE_SEQUENCER***************

class cb_sequencer extends uvm_sequencer#(cb_transaction);

	`uvm_component_utils(cb_sequencer)

cb_transaction trans;

//******************************Constructor*********************************	
function new(string name="cb_sequencer",uvm_component parent);
	super.new(name,parent);
endfunction

endclass
