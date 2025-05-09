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



//@R0: Load the address of register R0 into register A.
//D=M: Give the value of A (R0) to D.
//@POSITIVE D; JGE: If D ≥ 0, jump to POSITIVE.
//If x<0:
//@R1: Load the address of register R1 into register A.
//M=- D: Send the negative value of the D register to the memory (R1) indicated by A.
//@R2: Load the address of register R2 into register A.
//M=1: Write 1 to the address indicated by register A, which is the unit indicated by R2. Here, R2 is used to indicate that x is negative.
//@END and 0; JMP: Unconditionally jump to END tag.
//If x ≥ 0 (i.e. jumps to POSITIVE label):
//@R1: Load the address of register R1 into register A.
//M=D: Move the number in the D register into the memory (R1) at the address specified by the A register.
//@R2: Load the address of register R2 into register A.
//M=0: Write 0 to the address pointed to by the A register, which is the address pointed to by R2. The meaning is that x is a non negative number.
