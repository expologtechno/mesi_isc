//**************MASTER_SEQUENCER**********

class mb_sequencer extends uvm_sequencer#(mb_transaction);

		`uvm_component_utils(mb_sequencer)

	

//--------------constructor-------------------------	
		function new(string name="mb_sequencer",uvm_component parent);
			super.new(name,parent);
		endfunction

endclass
