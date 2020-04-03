.model small

.data


.code

main proc
    
    
    ; see if MSB and LSB are 0
    
    mov al,10101011b
    test al,10000001b
    
    ; see if bl is negative
    
    mov al,-3
    test al,10000000b
    
    
    
    main endp
end
