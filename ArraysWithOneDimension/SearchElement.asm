
.model small

.data

 array dw 12h,5h,15h,3h,17h
 
 max dw ?
 
.code

main proc
    
    
    mov ax,@data
    mov ds,ax
    
    lea si,array
    mov ax,[si]
    
    mov cx,5
    
for:add si,2
    cmp [si],ax
    jb lp
    mov ax,[si]
 lp:loop for
 
    mov max,ax
    
    main endp

end
