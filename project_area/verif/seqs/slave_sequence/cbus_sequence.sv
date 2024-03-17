//****************SLAVE_SEQUENCE********

class cb_sequence extends uvm_sequence#(cb_transaction);

	`uvm_object_utils(cb_sequence)

//***********************Handles***********************  
      
	cb_transaction trans;


//***********************Constructor***********************  	
function new(string name="cb_sequence");
	super.new(name);
endfunction

endclass


// TEST_SEQUNCES-:
//****************************************************************** 
