; Compare AL with AH if:
;                       AL > AH => var1 = 1
;                       Else var1 = 0
; Compare BL with BH if: 
;                       Bl<BH => var1 = 1
;                       Else var1 = 0
;
;


.model small


.data
     
     var1 db ?

.code 

main proc        

        mov ax,@data
        mov ds,ax
        
        mov al,5
        mov ah,6
        
        cmp al,ah
        
        ja above
        
        mov var1,0
        jmp endf
    
  above:mov var1,1
  
  endf:ret
  
  main endp
end
