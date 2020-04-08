include C:\emu8086\inc\emu8086.inc

.model small

.data

 msg1 db 'Spyros Tom One Love',0
         len1 = ($-msg1)
 msg2 db len1 dup(0)
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    cld ;DF=0 Direction Flag Direction is +
    std ;DF=1 Direction Flag Direction is -
    
    mov cx,len1
    lea si,msg1
    lea di,msg2
    
    rep movsb
    
    lea si,msg2
    call print_string
    
    main endp
   
DEFINE_PRINT_STRING
   
end
