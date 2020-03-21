.model small

.data

 char db '?'
 

.code

main proc
    
    mov ah,2
    mov dl,49; same with mov dl, '1'
    
    int 21h
    
    
    
    
    main endp

end
