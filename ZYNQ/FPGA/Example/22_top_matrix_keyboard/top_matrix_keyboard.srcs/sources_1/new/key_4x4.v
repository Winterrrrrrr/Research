module key_4x4(
	input                sys_clk   ,   //50MHZ
	input                sys_rst_n ,
	input       [3:0]    key_row   ,   //行
	output reg  [3:0]    key_col   ,   //列
	output reg  [3:0]    key_value ,   //键值
	output reg           key_flag
	
);

//reg define	
reg [2:0] state       ;  //状态标志
reg [3:0] key_col_reg ;  //寄存扫描列值
reg [3:0] key_row_reg ;  //寄存扫描行值
reg [31:0]delay_cnt   ;
reg [3:0] key_reg     ;
reg       key_flag_row;  //消抖完成标志

//*****************************************************
//**                    main code                      
//*****************************************************

always @(posedge sys_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) begin 
        key_reg   <= 4'b1;
        delay_cnt <= 32'd0;
    end
    else begin
        key_reg <= key_row;
            if(key_reg != key_row)             
                delay_cnt <= 32'd1000000;      
            else if(key_reg == key_row) begin  
                 if(delay_cnt > 32'd0)
                     delay_cnt <= delay_cnt - 1'b1;
                 else
                     delay_cnt <= delay_cnt;
            end           
    end   
end

always @(posedge sys_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n)  
        key_flag_row  <= 1'b0;              
    else begin
            if(delay_cnt == 32'd1)    
                key_flag_row  <= 1'b1;
            else 
                key_flag_row  <= 1'b0;
    end   
end

always @(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n) begin
	   key_col<=4'b0000;
	   state<=0;
	end
    else begin 
	   case (state)
	       0: 
	           begin
		          key_col[3:0]<=4'b0000;
		          key_flag<=1'b0;
		              if((key_row[3:0]!=4'b1111)&&(key_flag_row)) begin   
				          state<=1;
				          key_col[3:0]<=4'b1110;
			          end 
		              else 
				          state<=0;
		       end
	       1: 
		       begin
		              if(key_row[3:0]!=4'b1111) 
				         state<=5;
		              else begin
				         state<=2;
				         key_col[3:0]<=4'b1101; 
			          end
		       end  
	       2:
	           begin    
		              if(key_row[3:0]!=4'b1111) 
			             state<=5;
		              else  begin               
			             state<=3;
			             key_col[3:0]<=4'b1011;
			          end  
	           end
	       3:
	           begin    
		              if(key_row[3:0]!=4'b1111)  
			             state<=5;   
		              else begin 
			             state<=4;
			             key_col[3:0]<=4'b0111;
			          end  
	           end		
	       4:
	           begin    
		              if (key_row[3:0]!=4'b1111) 
			             state<=5;
		              else  
			             state<=0;
	           end		
	       5:
	           begin  
		              if(key_row[3:0]!=4'b1111)  begin
			             key_col_reg<=key_col;  
			             key_row_reg<=key_row;  
			             state<=5;
			             key_flag<=1'b1;  
		              end             
		              else
			             state<=0;
	          end    
	   endcase 
end             

always @ ( posedge sys_clk ) begin
	if(key_flag==1'b1) 
		begin
			case ({key_col_reg,key_row_reg})

			     8'b1110_1110:key_value<=4'd0;
			     8'b1110_1101:key_value<=4'd4;
			     8'b1110_1011:key_value<=4'd8;
			     8'b1110_0111:key_value<=4'd12;
			
			     8'b1101_1110:key_value<=4'd1;
			     8'b1101_1101:key_value<=4'd5;
			     8'b1101_1011:key_value<=4'd9;
			     8'b1101_0111:key_value<=4'd13;

			     8'b1011_1110:key_value<=4'd2;
			     8'b1011_1101:key_value<=4'd6;
			     8'b1011_1011:key_value<=4'd10;
			     8'b1011_0111:key_value<=4'd14;
		
			     8'b0111_1110:key_value<=4'd3;
			     8'b0111_1101:key_value<=4'd7;
			     8'b0111_1011:key_value<=4'd11;
			     8'b0111_0111:key_value<=4'd15; 
			endcase 
		end   
end  

endmodule
