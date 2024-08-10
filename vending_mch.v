`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 12:03:33
// Design Name: 
// Module Name: vending_mch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_mch(
input clk,
input rst,
input [1:0]in,
output reg out,
output reg[1:0] change

    );
    parameter s0=2'b00;
    parameter s1=2'b01;
    parameter s2=2'b10;
    reg[1:0] c_state,n_state;
    
    always@ (posedge clk)
      begin
         if(rst == 1)
             begin
               c_state=0;
               n_state=0;
               change= 2'b00;
             end
             else
            c_state=n_state;
            
       case(c_state)
       s0://state 0 ie Rs 0
       if(in==0)
        begin
         n_state=s0;
         out=0;
         change=2'b00;
        end
       else if(in==2'b01)
        begin
         n_state=s1;
         out=0;
         change=2'b00;
        end
       else if(in==2'b10)
        begin
         n_state=s2;
         out=0;
         change=2'b00;
        end
        
        s1:// state 1 ie Rs 5
        if(in==0)
         begin
          n_state=s0;
          out=0;
          change=2'b01;
         end
        else if(in==2'b01)
         begin
          n_state=s2;
          out=0;
          change=2'b00;
         end
        else if(in==2'b10)
         begin
          n_state=s0;
          out=1;
          change=2'b00;
         end
          
        s2://state 2 :Rs10
        if(in==0)
         begin
          n_state=s0;
          out=0;
          change=2'b10;
         end
        else if(in==2'b01)
         begin
          n_state=s0;
          out=1;
          change=2'b00;
         end
        else if(in==2'b10)
         begin
          n_state=s0;
          out=1;
          change=2'b01;
         end
       endcase
      end
        
         
        
         
endmodule
