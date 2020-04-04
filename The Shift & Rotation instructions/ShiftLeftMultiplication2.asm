.model small

.data

 var db 5
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cl,3
    shl var,cl 
    
    main endp
end
