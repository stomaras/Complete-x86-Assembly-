.model small

.data




.code

main proc 
    
    mov al,11010010b
    
    and al,00000001b
    
    ; a and 0 = 0
    
    ; a and 1 = a
    
    main endp
end
