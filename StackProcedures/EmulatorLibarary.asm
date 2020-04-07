; In this lesson we are going to see some procedures or macros 
; that are available in the library emu8086.inc
; for example print 'hello world'
; gotoxy this instruction is to move the cursor to position 
; that you specify
; we put tha a in the position 1,1 


include C:\emu8086\inc\emu8086.inc

.model small

.data



.code


main proc
    
    print 'hello world'
    
    putc '!'
    
    gotoxy 1,1
    
    putc 'a'
    
    call clear_screen
    
    call scan_num
    
    putc 10
    
    putc 13
    
    mov ax,cx
    
    call print_num
    
    
    
    
    
    main endp  


DEFINE_CLEAR_SCREEN   

DEFINE_SCAN_NUM     

DEFINE_PRINT_NUM   

DEFINE_PRINT_NUM_UNS

end
