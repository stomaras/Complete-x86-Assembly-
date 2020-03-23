; we are going to see a program tha ask from the user to enter a lowercase letter
; and then we are going to convert it to upper case letter

.model small

.data

 msg1 db 'Please enter a lower case',10,13,'$'
 
 msg2 db 10,13,'The upper case of your char is:$'
 
 msgerr db 10,13,'this is not a lower case char$'
 
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
        
        ;in the third step we are going to verify the lowercase  
        ; if the number is below 97 go to the error
        ; if the number is above 122 go to error again 
        cmp al,97
        jb err
        cmp al,122
        ja err
        
        ; print result
        mov ah,9
        lea dx,msg2
        int 21h
        
        ; code service print a char is 2   
        ; and in order to have the uppercase letter we substtract 
        ; from register dl 32.
        ; at the end we have interruption 21h in oeder to print 
        ; the result
        mov ah,2
        mov dl,bl
        sub dl,32
        int 21h
        jmp endf                                         
    
   err:mov ah,9
       lea dx,msgerr
       int 21h
           
       ; Go the control to the Operating System
  endf:mov ah,4ch
       int 21h
       ret                                     
       
 main endp
end
