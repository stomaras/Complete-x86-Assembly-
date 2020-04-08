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
    
    mov cx,len1
    mov si,0
    mov di,0
for:mov al,msg1[si]
    mov msg2[di],al
    inc di
    inc si
    loop for
    lea si,msg2
    
    call print_string
    
    
    main endp      

DEFINE_PRINT_STRING
end
