
.model small

.data
 
 msg1 db 10,13,'enter a number between 0 and 9 $'
 
 msg2 db 10,13,'you have entered the number: $'
 
 msgLuck db 10,13,'you are lucky !!!$'
 
.code

main proc
            mov ax,@data
            mov ds,ax
            
            ;print msg1
     repeat:mov ah, 9
            lea dx,msg1
            int 21h
            
            ;user input
            mov ah,1
            int 21h
            
       while:cmp al,'0'
            jb repeat
            cmp al,'9'
            ja repeat
            mov bl,al
            
            ;print the number
            mov ah,9
            mov dx,msg2 offset
            int 21h
            
      endif:mov ah,4ch
            int 21h   

            
      main endp
end
