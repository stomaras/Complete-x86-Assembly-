.model small

.stack 100h

.data

 var1 dw 15h
 var2 dw 12h
 var3 dw 5h


.code

main proc
    
    mov ax,@data
    mov ds,ax   
    
    mov var1,1
    mov bx,5
    
    push var1
    push bx
    call addition
    pop bx
    
    
    hlt
    main endp

addition proc
    
    pop cx
    pop dx
    
    add cx,dx
    
    push cx
    
    
    ret
    addition endp

end
