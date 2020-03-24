.model small

.data


.code

main proc
    
            
            mov ah,2
            mov dl,'a'
            
      while:cmp dl,'z'
            ja endwhile
            
            int 21h
            inc dl
            
            jmp while
            
   endwhile:mov ah,4ch
            int 21h
            ret
            
            
    main endp
end
