`timescale 1ns / 1ps

module tb_touch_led();

//reg define
reg     sys_clk;
reg     sys_rst_n;     
reg     touch_key;

//wire define
wire          led ;
        
always #10 sys_clk = ~sys_clk;

initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    touch_key = 0;
    #200
    sys_rst_n = 1'b1;
    //touch_key�źű仯
    #40  touch_key = 1'b1 ;  //40ns������������
    #200 touch_key = 1'b0 ;  //200ns��������̧��
    #40  touch_key = 1'b1 ;  //40ns������������
    #200 touch_key = 1'b0 ;  //200ns��������̧��
    #40  touch_key = 1'b1 ;  //40ns������������
    #200 touch_key = 1'b0 ;  //200ns��������̧��
    #40  touch_key = 1'b1 ;  //40ns������������
    #200 touch_key = 1'b0 ;  //200ns��������̧��             
end

touch_led  u_touch_led(
    .sys_clk   (sys_clk), 
    .sys_rst_n (sys_rst_n), 
    .touch_key (touch_key),
    .led       (led)
);

endmodule
