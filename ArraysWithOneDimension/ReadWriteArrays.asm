.model small

.data

 array db 5 dup(?)
 
 msg1 db 'enter 5 numbers',10,13,'$'
 
 msg2 db 10,13,'you have entered:',10,13,'$'
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;print msg1
    ;the interruption 21h with the code service 9 
    ; it means the offset of message in order to printed
    mov ah,9
    lea dx, msg1
    int 21h
                                                        
    ;user input
    mov cx,5
    lea di,array
        
    ; in order to read a character from the keyboard 
    ; we use code service 1 in register ah and interruption 21h
for1:mov ah,1
     int 21h
     mov [di],al
     inc di 
     
     ;carriage return 
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     loop for1
     
     mov ah,9
     lea dx,msg2
     int 21h
     
     mov cx,5
     lea si,array
     mov ah,2
     
for2:mov dl,[si]
     int 21h
     
     inc si
     
     ;carriage return 
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     loop for2
     
     mov ah, 4ch
     int 21h
     ret
     
    main endp
end
