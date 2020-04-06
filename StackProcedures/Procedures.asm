.model small

.stack 100h

.data



.code

main proc
    
    mov ax,1
    
    call proc1
    
    mov bx,2
    
    call proc2
    
    mov dx,4
    
    ret
    main endp


proc1 proc
    
    add ax,1
    
    ret
    proc1 endp

proc2 proc
    
    add bx,1
    mov cx,3
    
    call proc3
    
    ret
    proc2 endp

proc3 proc
    
    add cx,1
    ret
    
    proc3 endp
end
