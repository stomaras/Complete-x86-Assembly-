.model small

.data


.code

putc macro char
    
    LOCAL lab
    
    lab:mov ah,2
        mov dl,char
        int 21h
        
    
    putc endm



main proc
    
    lab:putc 'a'
    
        putc 48
        
        mov al,'g'
        putc al 
        
        mov bl,'s'
        putc bl
        
        
        
   main endp

end
