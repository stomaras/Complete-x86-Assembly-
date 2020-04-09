include C:\emu8086\inc\emu8086.inc

.model small

.data

 msg1 db 'this is a SCASB test',0
         len = ($-msg1)
         
         
         
.code

main proc
    
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    cld
    
    mov cx,len
    lea di,msg1
    mov al,'i'
    repne scasb
    
    
    main endp



end
