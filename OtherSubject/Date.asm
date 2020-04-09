; code service: 2ah, give us the date of the system
; code service: 2ch, give us the time of the system



include C:\emu8086\inc\emu8086.inc

.model small

.data

    sec db ?
    min db ?
    hour db ?
    day db ?
    month db ?
    year dw ?
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,2ah
    int 21h
    
    mov year,cx
    mov month,dh
    mov day,dl
    
    xor ax,ax
    
    mov al,day
    call print_num
    putc '/'
    
    mov al,month
    call print_num
    putc '/'
    
    mov ax,year
    call print_num
    putc ':'
    
    mov ah,2ch
    int 21h
    
    mov sec,dh
    mov min,cl
    mov hour,ch
    
    xor ax,ax
    
    mov al,hour
    call print_num
    putc ':'
    
    mov al,min
    call print_num
    putc ':'
    
    mov al,sec
    call print_num 
    
    
    
    main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end
