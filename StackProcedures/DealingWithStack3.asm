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
    
    mov dl,35h
    
    mov bp,sp
    mov [bp+5],dl
    
    main endp

end
