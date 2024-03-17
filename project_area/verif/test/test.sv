//**************************************TEST************************************

class test extends uvm_test;

	`uvm_component_utils(test)


	//virtual mb_intf mb_intf_h;
	//virtual s_intf s_intf_h;

// handle for env class	

	environment env;


//  handle for agent config class
	mb_agent_config mb_a_config_h;
	cb_agent_config cb_a_config_h;
	env_config env_config_h;


//---------constructor--------------------
function new(string name,uvm_component parent);
	super.new(name,parent);
endfunction

//--------build_phase---------------------
function void build_phase(uvm_phase phase);
	super.build_phase(phase);


	env=environment::type_id::create("env",this);
        env_config_h=env_config::type_id::create("env_config_h",this);
	uvm_config_db #(env_config)::set(this,"*","env_config",env_config_h);

        mb_a_config_h=mb_agent_config::type_id::create("mb_a_config_h",this);
	cb_a_config_h=cb_agent_config::type_id::create("cb_a_config_h",this);



	if(!uvm_config_db #(virtual mb_intf)::get(this,"*","mb_intf",mb_a_config_h.mb_intf_h))
		`uvm_fatal("VIRTUAL_INTF","in test");
	env_config_h.mb_a_config_h=mb_a_config_h;

		
	if(!uvm_config_db #(virtual cb_intf)::get(this,"*","cb_intf",cb_a_config_h.cb_intf_h))
		`uvm_fatal("VIRTUAL_INTF","in test");
	env_config_h.cb_a_config_h=cb_a_config_h;

// Control agent from test  by using agent configuration handle(active or passive)   
     mb_a_config_h.is_active=UVM_ACTIVE;   //mb active 
     cb_a_config_h.is_active=UVM_ACTIVE;   //cb active	
	
endfunction

//-------end_of_elaboration-----------------
 
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

endclass



//***********************test 1*************************************
