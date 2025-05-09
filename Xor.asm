// Xor.asm
@R0
D=M          
@R1
D=D^M         
@R2
M=D           

//@R0: Load the address of register R0 into register A.
//D=M: Load the value of the memory unit (i.e. R0) pointed to by register A into register D.
//@R1: Load the address of register R1 into register A.
//D = D ^ M: XOR the contents of the D register with the contents of the memory cell addressed by A (R1) and return it to D.
//@R2: Load the address of register R2 into register A.
//M=D: Store the value in the D register in the memory location pointed to by the A register (i.e. R2).

