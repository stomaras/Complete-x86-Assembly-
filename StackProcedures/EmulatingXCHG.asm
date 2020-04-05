.model small

.stack 100h

.data      



.code

main proc
    
    ;emulating xchg instruction
    mov ax,7
    
    mov bx,3
    
    push ax
    
    push bx
    
    pop ax
    
    pop bx    
    
    
    main endp
end
