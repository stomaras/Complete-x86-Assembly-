.model small

.data
         
.code 

main proc   

            mov al,4
            inc al
            
            jp par
            
            mov dl,0
            jmp endf
            
        par:mov dl,1
       
        endf:ret
     
    main endp

end

