//***************VIRTUAL_SEQUENCE************

class virtual_sequence extends uvm_sequence#(uvm_sequence_item);

	`uvm_object_utils(virtual_sequence)

        virtual_sequencer vsqr;
	mb_sequencer sequencer_h;           
	cb_sequencer sequencer;
	env_config env_config_h;


//***********sequences*****************************************************







//*******************************Methods*********************************** 

extern task body();


//*****************************Constructor*********************************
function new(string name="virtual_sequence");
	super.new(name);
endfunction
endclass



//****************************body Method**********************************

task virtual_sequence:: body();
//	super.body();

	if(!uvm_config_db#(env_config)::get(null,get_full_name(),"env_config",env_config_h))
	begin
		`uvm_fatal("CONFIG","cannot get() wb_con_h from uvn_config_db.Have you set() it")
	end
if(!($cast(vsqr,m_sequencer)))
begin
	`uvm_fatal("VIRTUAL SEQUENCE","$CASTING FAILED")
end

	sequencer_h=vsqr.sequencer_h;
        sequencer=vsqr.sequencer;

endtask



//****************************** VIRTUAL SEQUENCE 1********************************

