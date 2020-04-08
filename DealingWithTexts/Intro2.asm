
include C:\emu8086\inc\emu8086.inc

.model small

.data

 username db 10 dup(0)
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dx,10
    
    lea di,username
    
    call get_string
    
    putc 10
    putc 13
    
    lea si,username
    call print_string
    
    
    main endp

DEFINE_GET_STRING

DEFINE_PRINT_STRING


end
