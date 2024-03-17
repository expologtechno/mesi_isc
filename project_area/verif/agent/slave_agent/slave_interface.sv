//************************SLAVE_INTERFACE*****************

interface cb_intf();
logic  cbus_ack3_i;
logic  cbus_ack2_i;
logic  cbus_ack1_i;
logic  cbus_ack0_i;
logic [31:0]cbus_addr_o;
logic [2:0] cbus_cmd3_o; 
logic [2:0] cbus_cmd2_o;
logic [2:0] cbus_cmd1_o;
logic [2:0] cbus_cmd0_o;
    
endinterface
