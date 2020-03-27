.model small

.data
     
 var1 db 1      
 
 array db 1,2,3,4,5,6
 
 sum db ?
 
.code

main proc

        mov ax,@data
        mov ds,ax
        
        ;element count
        mov cx,6
        
        ;dl stores sum temporary
        mov dl,0
        
        ; indexing the array in the ax goes the offset of array
        ; in this case 1
        ; but we don't use ax ,bx or any othe data register 
        ; we use di or si 
        lea si,array
          
        ; the value of the array indicating by the offset si = [si]
        ; not the valu of the si register which is si empty.  
    for:add dl,[si]
        inc si
        loop for
        
        mov sum,dl
        
        
    main endp
end
   
