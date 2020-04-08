
include C:\emu8086\inc\emu8086.inc

.model small

.data
 
 msg1 db 'this is LODSB test',0
         len=($-msg1)



.code                

main proc
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    
    cld ;DF=0
    
    mov cx,len
    lea si,msg1
    rep lodsb
    
    
    
    
    
    main endp

end
    
