; Jump if the party flag is not raised

.model small

.data



.code

main proc 
    
    mov al,4 ; unsigned
    add al,1
    
    jnp of
    
    mov bl,5
    
 of:mov dl,1
 
 main endp
end
