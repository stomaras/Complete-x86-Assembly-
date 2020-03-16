; Jump if the carry flag is raised 

.model small

.data



.code

main proc 
    
    mov al,255 ; unsigned
    add al,1
    
    jc of
    
    mov bl,5
    
 of:mov dl,1
 
 main endp
end
