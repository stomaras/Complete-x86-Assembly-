; Jump if the zero flag is not raised

.model small

.data



.code

main proc 
    
    mov al,255 ; unsigned
    add al,1
    
    jnz of
    
    mov bl,5
    
 of:mov dl,1
 
 main endp
end
