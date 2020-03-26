
.model small

.data

 var1 db 5
 
 var2 db 3
 
 var3 dw 7
 
 var4 db 2
 
 
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov [1],1 ; mov var2 the value 1
    
    
    
    ret
    
    main endp

end
