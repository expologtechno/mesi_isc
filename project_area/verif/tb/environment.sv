//*******************ENVIRONMENT**********************

class environment extends uvm_env;

	`uvm_component_utils(environment)


	
	// Handles for virtual interface
	
	virtual mb_intf mb_intf_h;
	virtual cb_intf cb_intf_h;

	// handles

        env_config env_config_h;	
        virtual_sequencer vsqr;

  
	// handle for agent class

        mb_agent mb_a_h;
	cb_agent cb_a_h;

	// handle for agent config class
	mb_agent_config mb_a_config_h;
	cb_agent_config cb_a_config_h;

     

//---------constructor--------------------
function new(string name,uvm_component parent);
	super.new(name,parent);
endfunction

//--------build_phase---------------------
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	mb_a_h=mb_agent::type_id::create("mb_a_h",this);
	cb_a_h=cb_agent::type_id::create("cb_a_h",this);
	vsqr = virtual_sequencer::type_id::create("vsqr",this);
  

	env_config_h=env_config::type_id::create("env_config_h",this);
	if(!uvm_config_db #(env_config)::get(this,"*","env_config",env_config_h))
			`uvm_fatal("ENV_CONFIG","CANNOT GET CONGIF FROM UVM_CONFIG");

   //set intertface to agents

	uvm_config_db#(mb_agent_config)::set(this,"*","mb_agent_config",env_config_h.mb_a_config_h);		
	uvm_config_db#(cb_agent_config)::set(this,"*","cb_agent_config",env_config_h.cb_a_config_h);
	
endfunction


//***************************Connect_phase*****************************
function void connect_phase(uvm_phase phase);

		super.connect_phase(phase);
     // if(env_config_h.has_virtual_sequencer)
      //begin 		
                vsqr.sequencer_h=mb_a_h.sequencer_h;
	        vsqr.sequencer=cb_a_h.sequencer;
       //end
	//	agent.mon.monitor_analysis.connect(sb.sb_fifo.analysis_export);
        	//mb_intf_h=mb_a_config_h.mb_intf_h;
        	//s_intf_h=s_a_config_h.s_intf_h;


endfunction

function void report();
uvm_report_server reportserver=uvm_report_server::get_server();
$display("***************************************************************************************************************************************************************");
$display("--------------------------------------------------------------------test_summary-------------------------------------------------------------------------------");
$display("***************************************************************************************************************************************************************");

$display("***************************************************************************************************************************************************************");
$display("****************************************************************************************************************************************************************");

$display("--------final test status--------");
if(reportserver.get_severity_count(UVM_FATAL)==0 && reportserver.get_severity_count(UVM_ERROR)==0)
begin
$display("============================================================================================================");
$display("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!!!TEST PASSED!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
$display("============================================================================================================");
end
else
begin
$display("============================================================================================================");
$display("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!!!TEST FAILED!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
$display("============================================================================================================");
end
endfunction
endclass
