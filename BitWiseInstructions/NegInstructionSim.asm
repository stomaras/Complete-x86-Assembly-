.model small

.data


.code

main proc
    
    ; reset MSB of al register to 0
    
    mov al, 10001110b
    and al, 01111111b;reset Mask
    
    ; set MSB and LSB of bl register to 1
    
    mov bl, 01001010b
    or  bl, 10000001b;setMask
    
    ; reverse the sign of ch register  
    
    mov ch, 50
    xor ch, 0ffh
    inc ch
    
    
    main endp
end
