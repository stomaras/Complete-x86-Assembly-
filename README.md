# Complete-x86-Assembly-

-I work with assembler and microprocessor emulator 8086!

# Assembly Language

- is a low level programming language

# Types of programming language

- High Level: Requires Syntax, function and libraries

- Low Level: Synatx, Hardware Architecture, Basci knowledge of data representation

# Basic Digital Computer Architecture 

- The Computer consists of the Central Processing Unit which is CPU and There is memory which is RAM and we have as well the inputs
  and outputs unit for example the keyboard, the screen, the printer and so on...
  
- We have the external Storage for example the hard disk or the local disk

- Memory is like a stocker where the CPU use it in order to stock the data

- When CPU needs to read data from the memory it sends a request by the control bus.In addition it sends with it the address of this 
  data. In this Case the CPU is informing the Memory that its need to read the Data that is in the address for exampe 722
  or wherever is the address. After nanoseconds, the Data will be available in the CPU, the second operation is writing operation
  In the writing operation the CPU sends address and the data.
  
  

# What is Computer Architecture

-The view of a Computer as represented to Software designers.It is an interface or specification that the Software designers see

# Computer Organization 

-The actual Implementation of a Computer in Hardware

-We have computer in a Desktop
                       Laptop
                       Phone
                       ipod
                      
- Computer is a general purpose Device that can be programmed to process information, and yield meaningful Results

- Computer should be able to program it, so circuit that does a specific action is actually not a Computer. So for example
  let's say that you have a small time monitors on top of the room which is showing what is the Current temperature, that's
  not a Computer, even though you know it's showing it's temperature on a nice screen. The reason is that this Device cannot be 
  programmed
  
  Second it needs to be able to process some information that is given from outside like you enter some keyboard, some information
  via a keyboard or a mouse, it's processing that information, it needs to eat meaningful Results.
  
- Program: List of instructions given to the Computer

- Informations Store: data, image, files, videos

- Computer : Process the information store according to the instructions on the program

- Hard Disk Capacity > RAM Capacity 

- Hard Disk Speed < RAM speed

- switch off: - Hard Disk remain
              - RAM don't remain anything 
              
- Memory : Store programs and Data. Gets destroyed when the Computer is powered off.

- Hard Disk: Stores programs / data permanently

- Each row in the Central Memory has a special address

- Actually better to use the hexa Decimal System, the hexa system in order to read these addresses in the central memory.
  The first bit on the right is actually called LSB and the bit on the left is called MSB(7bit).

# Microprocessor 8086

- Microprocessor 8086is actually consisting of 2 importants units: 

1) ALU: Taking charge of the mathematical operations, for Logical operations we take an example of the AND,OR,XOR and so on.
2) Registers: The register is a unity in memory that contains 16 bits so when the microprocessor is treating a program is 
              executing a program, it's actually needs to save the data of this program in the memory.It needs a unity 
              in the memory in order to save the data and actually
              the microprocessor 8086 is using the Register. Each Register contains 16 bits.It's column call bits, on it's
              column we can save data which is 0 or 1. Each row called byte, each column called bit.
              8bits = 1byte.


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
  
  - jae = jump if above or equal
  
  - jnb = jump if not below
  
  - jg = jumpi if it is greater
  
  - jge = jump if it is greater or equal
  
  - gl = It performs a signed comparison jump after a cmp if the destination operand is less than the source operand. 
  
  - gl = gb (first for sign numbers comparison, second for unsigned number comparison)
  
  - cmp    bl, 78h
    jl  short loc_402B1D ; if bl < 78h, jump to loc_402B1D
    
  - jle = jump if it is lower or equal 
  
  

  - A > B  X  A<=B <=>    A > B = not(A<=B)
                   <=>    not(A>B) =  A<=B
                 
  - A >= B  X  A < B  <=>  A >= B  = not(A < B)
                      <=>  not( A>= B) = A < B
                    
  - A = B   X  A<>B <=>  A=B  =  not(A<>B)
