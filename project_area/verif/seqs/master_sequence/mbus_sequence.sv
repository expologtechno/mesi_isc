//**************MASTER SEQUENCE***********

class mb_sequence extends uvm_sequence#(mb_transaction);

	`uvm_object_utils(mb_sequence)

//***********************Handles*********************** 	
	 mb_transaction trans_h;
         mb_agent_config mb_a_config_h;



//***********************Constructor*********************** 	 
function new(string name="mb_sequence");
	super.new(name);
endfunction

//***********************Method***************************** 
extern task body();

endclass


//**********************Body Method*********************** 
  task mb_sequence::body();

  if(!uvm_config_db#(mb_agent_config)::get(null,get_full_name(),"mb_agent_config",mb_a_config_h))
  `uvm_fatal("mb_sequence","cannot get() interface ")

  endtask


//******************************************************************
// TEST_SEQUNCE-1 :  RESET SEQUENCE
//****************************************************************** 

