.model small


.data
        
.code 

main proc   
    
            mov al, 5 ;signed
            mov bl, -2
    
            cmp al,bl
    
            jg great
            jle loweroreq
    
   loweroreq:mov dl,0
             jmp endf
             
       great:mov dl,1
       
        endf:ret
    
    
    main endp

end
