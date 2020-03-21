.model small

.data

 userChar db ? 

.code

main proc
    
            mov ax,@data
            mov ds,ax
            
            ;read a char
            mov ah,1
            int 21h ;al=char
            mov bl,al
            
            ;verify if it is an uppercase char
            cmp al,65
            jb endf
            cmp al,90
            ja endf
            
            ;carriage return 
            ; in order to create a new line new line in ascci table is 10
            mov ah,2
            mov dl,10
            int 21h 
            ; in order to go to the beggining of the new line the instruction is cret
            mov dl,13
            int 21h
            
            ;print and store the char 
            mov dl,bl
            add dl,32
            mov userChar,dl
            
            int 21h ; ah already has 2  
            
       endf:mov ah,4ch
            int 21h
            ret
    
    main endp

end
