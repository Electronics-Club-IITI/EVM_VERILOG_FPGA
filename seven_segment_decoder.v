module seven_segment_decoder(output[6:0] led1,output[6:0] led2,input[3:0] votes);
reg a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2;

assign led1= {~a1,~b1,~c1,~d1,~e1,~f1,~g1}; // ones place led
assign led2= {~a2,~b2,~c2,~d2,~e2,~f2,~g2}; // tens place led
always@(votes)
begin
   case(votes)
   4'd0: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd1: begin {a1,b1,c1,d1,e1,f1,g1}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd2: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd3: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd4: begin {a1,b1,c1,d1,e1,f1,g1}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd5: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd6: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd7: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd8: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd9: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; end
   4'd10: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   4'd11: begin {a1,b1,c1,d1,e1,f1,g1}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   4'd12: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   4'd13: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   4'd14: begin {a1,b1,c1,d1,e1,f1,g1}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   4'd15: begin {a1,b1,c1,d1,e1,f1,g1}={1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1};{a2,b2,c2,d2,e2,f2,g2}={1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}; end
   
   
   endcase
end


endmodule
