//****************************PACKAGE****************************

package pk;

	
	import uvm_pkg::*;

	`include "uvm_macros.svh"
	`include "master_transaction.sv"
	`include "slave_transaction.sv"

	`include "master_agent_config.sv"
	`include "slave_agent_config.sv"


	`include "env_config.sv"

	`include "master_driver.sv"
//	`include "master_monitor.sv"
	`include "master_sequencer.sv"
	`include "master_agent.sv"
        `include "master_sequence/mbus_sequence.sv"

	`include "slave_driver.sv"
//	`include "slave_monitor.sv"
	`include "slave_sequencer.sv"
	`include "slave_agent.sv"
	`include "slave_sequence/cbus_sequence.sv"

	`include "virtual_sequencer.sv"
	`include "virtual_sequence.sv"
	`include "environment.sv"

	//`include "scoreboard.sv"

	`include "test.sv"

//	`include "../../tb/sv/master_agent/master_transaction.sv"
//	`include "../../tb/sv/slave_agent/slave_transaction.sv"
//
//	`include "../../tb/sv/master_agent/master_agent_config.sv"
//	`include "../../tb/sv/slave_agent/slave_agent_config.sv"


//	`include "../../tb/sv/env_config.sv"

//	`include "../../tb/sv/master_agent/master_driver.sv"
//	`include "../../tb/sv/master_agent/master_monitor.sv"
//	`include "../../tb/sv/master_agent/master_sequencer.sv"
//	`include "../../tb/sv/master_agent/master_agent.sv"
//	`include "../../tb/sv/master_agent/master_sequence.sv"

//      `include "../../tb/sv/slave_agent/slave_driver.sv"
//	`include "../../tb/sv/slave_agent/slave_monitor.sv"
//	`include "../../tb/sv/slave_agent/slave_sequencer.sv"
//	`include "../../tb/sv/slave_agent/slave_agent.sv"
//	`include "../../tb/sv/slave_agent/slave_sequence.sv"

//	`include "../../tb/sv/virtual_sequencer.sv"
//	`include "../../tb/sv/virtual_sequence.sv"
//	`include "../../tb/sv/environment.sv"

//	`include "scoreboard.sv"

//	`include "../../test/test.sv"
endpackage



