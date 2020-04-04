.model small
.data


.code

main proc
    
    
    mov al,00011111b
    xor bl,bl
    ; number of rotations in cx
    mov cx,8                   
    
for:rol al,1
    jnc lp
    inc bl
 lp:loop for
    
    
    
    main endp
end
