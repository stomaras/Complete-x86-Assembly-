.model small 

.data 

.code

main proc
    
    mov al,255
    add al,2
    ; after this we got one but this is a mistake 
    ; so what the reason of this mistake ;
    ;it is actually the memory limits , memory cannot 
    ; accomodate this number 
    
    mov al,127
    add al,2
    ; the result in register al is 127 WRONG 
    ; the correct answer should be 129 but is 127 
    ; due to the memory limits 
    
    mov al,-128
    add al,-2
    ;expext to have -130 
    ;but the result is 126 totally wrong due to the memory limits
    
    
    
    
    main endp
end
