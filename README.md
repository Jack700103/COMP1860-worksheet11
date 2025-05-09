# COMP1860-worksheet11
// Xor.asm
@R0
D=M          
@R1
D=D^M         
@R2
M=D           




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