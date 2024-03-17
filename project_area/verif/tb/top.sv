//*********************************TOP********************************************
//`timescale 1ns/1ns

`include "mesi_isc.v"
`include "package.sv"

`include "master_agent/master_interface.sv"
`include "slave_agent/slave_interface.sv"


module tb_top;

import pk::*;
import uvm_pkg::*;


//Clock declaration
bit clk=0;

//clock generation
initial begin
	forever #10 clk=~clk;
	`uvm_info("top", "clk", UVM_MEDIUM);
end

mb_intf mb_intf_h(clk);
cb_intf cb_intf_h();


//--------------dut instanitation-------------

mesi_isc dut(
 // Mainbus interface signal connection
               .clk                  ( mb_intf_h.clk            ),
               .rst                  ( mb_intf_h.rst            ),
               .mbus_cmd3_i          ( mb_intf_h.mbus_cmd3_i    ),
               .mbus_cmd2_i          ( mb_intf_h.mbus_cmd2_i    ),
               .mbus_cmd1_i          ( mb_intf_h.mbus_cmd1_i    ),
               .mbus_cmd0_i          ( mb_intf_h.mbus_cmd0_i    ),
               .mbus_addr3_i         ( mb_intf_h.mbus_addr3_i   ),
               .mbus_addr2_i         ( mb_intf_h.mbus_addr2_i   ),
               .mbus_addr1_i         ( mb_intf_h.mbus_addr1_i   ),
               .mbus_addr0_i         ( mb_intf_h.mbus_addr0_i   ),
	       .mbus_ack3_o          ( mb_intf_h.mbus_ack3_o    ),
               .mbus_ack2_o          ( mb_intf_h.mbus_ack2_o    ),
               .mbus_ack1_o          ( mb_intf_h.mbus_ack1_o    ),
               .mbus_ack0_o          ( mb_intf_h.mbus_ack0_o    ),




               // Coherence bus Interface
	       
	       .cbus_ack3_i          ( cb_intf_h.cbus_ack3_i     ),
               .cbus_ack2_i          ( cb_intf_h.cbus_ack2_i     ),
               .cbus_ack1_i          ( cb_intf_h.cbus_ack1_i     ),
               .cbus_ack0_i          ( cb_intf_h.cbus_ack0_i     ),
               .cbus_cmd3_o          ( cb_intf_h.cbus_cmd3_o     ),
               .cbus_cmd2_o          ( cb_intf_h.cbus_cmd2_o     ),
               .cbus_cmd1_o          ( cb_intf_h.cbus_cmd1_o     ),
               .cbus_cmd0_o          ( cb_intf_h.cbus_cmd0_o     ),
               .cbus_addr_o          ( cb_intf_h.cbus_addr_o     )
              	      
               );


initial begin

	uvm_config_db#(virtual mb_intf)::set(null,"*","mb_intf",mb_intf_h);

	uvm_config_db#(virtual cb_intf)::set(null,"*","cb_intf",cb_intf_h);
	
	run_test("test");

end

  initial begin
	   set_global_timeout(100000000);
   end
   endmodule

