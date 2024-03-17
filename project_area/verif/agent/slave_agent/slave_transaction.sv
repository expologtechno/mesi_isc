//************************SLAVE_TRANSACTION***********************

class cb_transaction extends uvm_sequence_item;
	`uvm_object_utils(cb_transaction)
rand bit  cbus_ack3_i;
rand bit  cbus_ack2_i;
rand bit  cbus_ack1_i;
rand bit  cbus_ack0_i;
bit [31:0]cbus_addr_o;
bit [2:0] cbus_cmd3_o; 
bit [2:0] cbus_cmd2_o;
bit [2:0] cbus_cmd1_o;
bit [2:0] cbus_cmd0_o;


function new(string name="cb_transaction");
	super.new(name);
endfunction

endclass
