
.model small

.data

 msg1 db 'enter an number between 0 and 9',10,13,'$'
 
 msg2 db 10,13,'you have entered the number: $'
 
 msgLuck db 10,13,' you are lucky !!!$'
 
.code

main proc
    
            mov ax,@data
            mov ds,ax
            
            ;print msg1
            mov ah,9
            lea dx,msg1
            int 21h
            
            ;user input
            mov ah,1
            int 21h
            mov bl,al
            
            ;print the number   
            ; mov dx,msg2 offset == lea dx,msg2
            mov ah,9
            mov dx,msg2 offset                 
            int 21h
            
            mov ah,2
            mov dl,bl
            int 21h
            
            ;if bl = 5
            cmp bl, '5'
            jne endif
            
            ;print lucky
            mov ah,9
            lea dx,msgLuck
            int 21h
            
      endif:mov ah,4ch
            int 21h
            ret
            
            
    main endp
end
