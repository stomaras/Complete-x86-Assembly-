include C:\emu8086\inc\emu8086.inc

.model small

.data



.code

main proc
    
    
    mov cx,5
    
    for:mov ax,cx
        
        call print_num
        
        cmp ax,4
        
        loop for
        
        
    
    
    main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


end
