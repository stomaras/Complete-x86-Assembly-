# Complete-x86-Assembly-

I work the project with the help of udemy instructor 

I play with assembler and microprocessor emulator 8086!

# Flag Register of 8086 Microprocessor

  - Flag Register : contains 16bits or 16 columns, there are 9 columns that have a senseand the others does not have a sense

  - There are totals 9 flags in 8086 microprocessor and the flag register is divided into 2 types: 
      - Status Flags - 6 
      - Control Flags - 3
      
  - Status Flags : They precise the state of the processor after doing a process
  - Control Flags: They actually control and manage the processor in order to do an operation or doing instructions 
  
# Status Flags

  - Sign Flag (SF) : After any operation if the MSB(8 digit) of the Result is 1, it indicates the number is (-) and the
                     sign flag set->1 .If the MSB(8digit) is 0, it indicates the number is (+) and the sign flag becomes 0
                     * from 0H to 7F, sign flag is 0
                     * from 80H to FF, sign flag is 1
                        1-MSB is 1 (Negative)
                        0-MSB is 0 (Positive)
                        
 - Zero Flag (ZF) : After any arithmetical or logical operation if the result is 0 (00)H, the zero flag becomes 1, otherwise-0
                    
 - Auxilary Crry Flag (AF) : if there is a carry from d3 to d4 of an operation this bit is set to 1 otherwise cleared(set to 0)
 
 - Carry Flag (CF) : This is carry bit. if some operations are generating carry after the operation this flag is set to 1.
 
 - Parity flag (PF) : When result has even number of 1, it will be set to 1, otherwise 0 for odd number of 1's
 
 - Overflow flag (OF) : The overflow flag is set to 1 when the result of a signed operation is too large to fit.

# BranchingPart

  - Types of Branching 
  
      - Conditional Branching : will be executed when the condition is verified
      
      - Uncoditional Branching : Executed without any condition.

  -  jz label : we test the zero flag ... So if the result is null...if it's raised we change to the label, here the label in the end
                , we execute the instruction label: inc al

  - jz = jump if zero flag is raised , zero flag(zf) = 1
  
  - jns = jump if sign flag is not raised , sign flag(sf) = 0
  
  - ja = jump if the value is unsigned
  
  - jnae = jump if not above or equal
  
  

  - A > B  X  A<=B <=>    A > B = not(A<=B)
                   <=>    not(A>B) =  A<=B
                 
  - A >= B  X  A < B  <=>  A >= B  = not(A < B)
                      <=>  not( A>= B) = A < B
                    
  - A = B   X  A<>B <=>  A=B  =  not(A<>B)
