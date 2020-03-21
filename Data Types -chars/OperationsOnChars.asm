.model small

.data


 

.code

main proc
    
    mov dl,'A'
    add dl,1
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    
    
    main endp

end
