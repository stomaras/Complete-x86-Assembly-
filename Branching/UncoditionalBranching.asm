; Uncoditional Branching

.model small

.data



.code

main proc 
    
    begin: mov al,5
           add bl,12
           add al,bl
           
           jmp begin
           
           mov bl,5
           sub bl,2
           
       med:mov dl,1
           inc dl
           dec bl
           neg al
      endf:ret; is going to stop the procedure where you are
 
 main endp    

end
