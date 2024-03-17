//************************MASTER_INTERFACE*****************

interface mb_intf(input bit clk);
logic rst;
logic [2:0]  mbus_cmd3_i; 
logic [2:0]  mbus_cmd2_i;
logic [2:0]  mbus_cmd1_i;
logic [2:0]  mbus_cmd0_i;
logic [31:0] mbus_addr3_i;
logic [31:0] mbus_addr2_i;
logic [31:0] mbus_addr1_i;
logic [31:0] mbus_addr0_i;
logic  mbus_ack3_o;
logic  mbus_ack2_o;
logic  mbus_ack1_o;
logic  mbus_ack0_o;


endinterface



