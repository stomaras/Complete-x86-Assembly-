.model small

.data



.code

main proc
    
    mov al,10101001b
    mov cl,1
    shr al,cl
    ;2^cl
    main endp
end
