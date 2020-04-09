include C:\emu8086\inc\emu8086.inc

.model small
.data

 msg1 db 'this is a CMPSB test',0
         len1 = ($-msg1)
         
 msg2 db 'this is a CMPSB test',0
         len2 = ($-msg1)
         
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    
    cld
    mov cx,len1
    lea si,msg1
    lea di,msg2
    repe cmpsb
    
    
    
    main endp
end
