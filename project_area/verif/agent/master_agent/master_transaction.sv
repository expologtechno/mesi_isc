//**************************mb_TRANSACTION********************

class mb_transaction extends uvm_sequence_item;

	`uvm_object_utils(mb_transaction)
rand bit [2:0] mbus_cmd3_i; 
rand bit [2:0] mbus_cmd2_i;
rand bit [2:0] mbus_cmd1_i;
rand bit [2:0] mbus_cmd0_i;
rand bit [31:0] mbus_addr3_i;
rand bit [31:0] mbus_addr2_i;
rand bit [31:0] mbus_addr1_i;
rand bit [31:0] mbus_addr0_i;
bit  mbus_ack3_i;
bit  mbus_ack2_i;
bit  mbus_ack1_i;
bit  mbus_ack0_i;


function new(string name="mb_transation");
	super.new(name);
endfunction

 // Print method
endclass
