.model small

.data




.code

main proc
    
    
    ; multiply al with 4
    
    mov al,5
    
    mov cl,2
    
    shl al,cl
    
    ;2^cl 
    ;We multiply al with 4 if i had in cl 3 then,
    ;2^3 = 8, so 5x8 = 40!!!
    
    
    main endp
end
