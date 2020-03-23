;Now we will see how to print a message

.model small

.data

 msg db 'Hello',10,13,'world !!!',14,'$'
 
.code

main proc
    
        mov ax,@data
        mov ds,ax
        
        ; The code service here is 9 
        ; When we want to print a charcter we uses the code service 1
        ; In order to read some character from the keyboard we use the 
        ; code service 2
        ; lea = load effective address
        ; and then we have the interruption 21h
        mov ah,9
        lea dx,msg
        int 21h
        
        ; last instruction is leaving the DOS
        ; and go back to the operating system
        mov ah,4ch
        int 21h
        ret
        
    main endp
end
