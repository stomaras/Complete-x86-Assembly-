
.model small

.data

    C EQU 15
    
    var1 db 12 
    
    var2 db ?



.code

main proc
               
               
    ;when the program is dealing with the varibales we need to write
    ;these instructions 
    ;need to memorize the following two rows 
    mov ax,@data
    mov ds, ax
               
    mov var2, C  
    
    mov al,var1;permutation here 
    ;here we need a register another register for example ah
    ;WRONG: !!!mov var2,var1!!!
    mov ah,var2;permutation here
    
    mov var2,al
    mov var1,ah
    
    
    main endp    

end
