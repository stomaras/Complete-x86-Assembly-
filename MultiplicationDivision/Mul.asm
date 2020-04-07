include C:\emu8086\inc\emu8086.inc

.model small

.data



.code

main proc
    
    mov al,5
    mov bl,10
    
    mul bl
    
    main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


end
