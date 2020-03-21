.model small

.data

 char db '?'
 

.code

main proc
    
    mov ah,1
    int 21h
    
    
    
    
    main endp

end
