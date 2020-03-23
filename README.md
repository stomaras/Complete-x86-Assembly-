# Complete-x86-Assembly-

- I work with microprocessor 8086

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
  
  - jp : jump if the parity flag is raised (pf = 1)
  
  - jnp : jump if the parity flag is not raised (pf = 0) (jnp same instrucyion with jpo)
  
  

  - A > B  X  A<=B <=>    A > B = not(A<=B)
                   <=>    not(A>B) =  A<=B
                 
  - A >= B  X  A < B  <=>  A >= B  = not(A < B)
                      <=>  not( A>= B) = A < B
                    
  - A = B   X  A<>B <=>  A=B  =  not(A<>B)
  # Data types -chars
  
  - In this chapter we are going to see another type of information which is the character.
  - The character is actually a group of example English letters located in the Upper keys , the numbers from 0 to 9 e.t.c
  - How we define a varible as a data type: char db 'a'
  - We represent the characters by table that we call ascii codes.
  - In the ascii code we have unsigned numbers
  - All the information are stored in memory as 1's and 0's
  - These 1's and 0's , has no base without the representation base.
  - For example we have => char db '?'
                        => then . . .  the processor is going to look for the ? character in the ASCII table in their own 
                           memory so will keep looking for this character ... so when the processor find the ? will take the 
                           assigned value that's refer to this character which we have here is 063
                           next step is to convert this value to the binary system and then stock the variable => 00111111
                           and then take these for you and refer it to th chracter to the code to the char variable in the
                           memory ... ALL THE ABOVE IS THE PROCESS THAT HAPPENED IN THE PROCESSOR
                           
  - We have the ASCII Table in order to represent the chars
  - The ASCII Table contain 0-255 letters
  
  - What is interruption operation ?
      - Is to interrupt the program to do something in our case here, we are going to interrupt the program 
        in order to print a character.
        
      - Printing a character it's actually based on three steps.
      
         - mov ah,2
         - mov dl,'1'
         - int 21h
         
        - First Step : is to move to the register ah and 2 is actually a code series.We are going to tell more on code series
                       in the next chapter now we are going to see the print service. Now code service here is 2
        - Second Step: is what we want to print , we want to print the value 1
        - Third Step:  int 21h = the code of interruption 21h
       
        - The interruption which used in order to print a char in the DOS Screen is 21h
        - The service code which used in order to print a char in the DOS Screen is 2
        - We put the char which we want to print in the DOS screen in dl
        - We put the service code '2' to print a char in the DOS Screen in ah
        - char db 48 is a char data type definition
        
  - We are going to see another service which is how to enter a character from the keyboard
      - this operation is actually based on two steps.
      
      - mov ah,1
      - int 21h
      
      - First Step: we move 1 in the register ah, we have the code service 1
      - Second Steo: we have an interruption 21h, so the character that we will enter will be in the register al
      
      - To read a char from the keyboard we use the interruption 21h
      - To read a char from the keyboard we use the service code 1
      - we can obtain the char which is entered from the keyboard in AL
      - the format of the char which is obtained from the keyboard in AL register is the unsigned number which is assigned to that char
      
 - We are going to see practical example about the services of the DOS.
     
      - We are going to ask the user to enter a character and then we are going to print this character 
        
        - So first we have move ah,1 the 1 is the code service of entering a character from the keyboard 
          and then interruption 21h
            
            - mov ah, 1
            - int 21h
          
        - Then we are going to print this character so we type move ah,2...where 2 is code service of printing
          then we have move dl,al because we say that we are going to print anything ...we put it on the al register
          so we move what we want to print in the register dl and then we have interruption 21h
          
            - mov ah, 2
            - mov dl, al
            - int 21h
            
        - Then we got the message programm has returned control to the operating system 
       
            - We got the message due to the above code. When we dealing with the DOS is better actually to write this instruction
            - So after reading or printing it would be better to write mov ah, 4ch and then interruption 21h, in order to leave the 
              DOS and go back to the operating system.
              
              
            - mov ah,4ch
            - int 21h
            
 - We are going to see the different operations on the characters.So since the character is represented in the unsigned nums
   so actually all the operations that we can use them in the assigned numbers we can use them on the characters. So there are 
   sub , inc, dec and so on... also we can use branching instruction , jump if below, jump if above  and this is it
   
      - First Step
          - mov dl,'A'
          - add dl,1
          
      - Second Step
           - mov ah,2
           - int 21h
      
      - Third Step
          - mov ah,4ch
          - int 21h
     
                       
 - Convert from Lowercase to Uppercase  
 
      - Here 65 -a if we add 32 we will have 97 which is A
      - Here if we have b - 66  and we add 32 we will have 98 which is B
      
 - 20h = 32
 - The uppercase chars are from 65 to 90
 - The lowercase chars are from 97 to 122
 
 - Now we are going to see a program that asks from the users to send a number and we have actually the numbers from 0 to 9 
   and the number which we enter will appear in the AL 
   
    - .model small
    - .data
    
    - .code
    - main proc
    -         mov ah,1
    -         int 21h
    -
    -         cmp al,48
    -         jb endf
    -         cmp al,57
    -         ja endf
    -
    -         sub al,48
    -
    -     endf:mov ah,4ch
    -          int 21h
    -          ret
    -     main endp
    - end
    
# Text Messages 

- In order to read messages we write the code service - 9
- In the declaration of a message at the end we write a $
- lea (instruction) = load effective address
- The text message that we want to print in DOS must end up at $
- to print a text message in the DOS screen we use the interruption 21h
- the instruction lea dx,msg ... put the address of the variable msg in DX register
- to print a text message in the DOS screen we use the service code 9
- to print a text message in the DOS screen we use lea dx,msg

                       
                       
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
                           
 - 
                           
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
