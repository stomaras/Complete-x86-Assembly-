.model small

.stack 100h

.data


.code

main proc
    
    
    mov ax,3015h
    mov bx,7
    mov cx,9
    push ax
    push bx
    push cx
    
    mov bp,sp
    mov dl,[bp+5]
    
    main endp

end
