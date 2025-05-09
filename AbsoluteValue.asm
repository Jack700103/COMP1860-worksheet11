// AbsoluteValue.asm
@R0
D=M          
@POSITIVE
D;JGE        
@R1
M=-D         
@R2
M=1          
@END
0;JMP        

(POSITIVE)
@R1
M=D          
@R2
M=0          

(END)