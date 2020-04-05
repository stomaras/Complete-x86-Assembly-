.model small

.data

msg db 'enter a binary number ',10,13,'$'



.code

main proc
    
        mov ax,@data
        mov ds,ax
        
        ;print msg
        mov ah,9
        lea dx,msg
        int 21h
        
        ;reset bl
        xor bl,bl
        
        ;while loop
        
  while:;user input
        ; with this instructions we receive input from user
        mov ah,1
        int 21h
        
        ;if user input is CR then go to endw
        cmp al,13
        je endw
        
        ;convert from ASCII to bin
        sub al,48
        
        ;shift left bl
        shl bl,1
        
        ;insert bin value to bl's LSB
        or bl,al
        
        jmp while
        
        ;the rest to be continued
        ;convert from bin to ASCII
   endw:add bl,48
        
        ;CR
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        ;print it
        mov ah,2
        mov dl,bl
        int 21h
        
        ;the rest to be continued
        
        mov ah,4ch
        int 21h
        
        main endp

end
