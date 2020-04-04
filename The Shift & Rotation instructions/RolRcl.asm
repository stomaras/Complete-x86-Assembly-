.model small
.data


.code
main proc
    
    mov al,10001000b
    ; Num of rotations
    mov cl,1          
    rol al,cl 
    rcl al,cl
    
    
    
    main endp
end
