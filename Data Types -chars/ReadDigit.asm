.model small

.data

 userChar db ? 

.code

main proc
    
            mov ah,1
            int 21h
            
            cmp al,48
            jb endf
            cmp al,57
            ja endf
            
            sub al,48 
            
       endf:mov ah,4ch
            int 21h
            ret
    
    main endp

end
