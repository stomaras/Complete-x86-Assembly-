.model small

.data



.code

main proc
    
    mov al,5
    mov bl,5
    sub al,bl
    
    jz label
    
    mov cl,12
    add cl,bl
    
    label: inc al
           
           
           
    main endp
end
