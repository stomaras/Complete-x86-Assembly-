.model small 

.data

 arr db 4 dup(5)
     db 4 dup(?)
     db 13,12,15,20

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,len
    
    
    
    main endp
end
