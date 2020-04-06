.model small

.stack 100h

.data


.code

main proc
    
    
    mov ax,5
    mov bx,7
    mov cx,9
    push ax
    push bx
    push cx
    
    mov bp,sp
    mov dx,[bp+4]
    
    main endp

end
