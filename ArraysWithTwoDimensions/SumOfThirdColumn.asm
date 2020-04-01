.model small

.data

 arr db 1h,10h,2h,3h,30h
     
     db 19h,20h,80h,13h,55h
     
     db 13h,12h,15h,20h,68h
     
     
     len=($-arr)
     
sum db ?

.code

main proc
    
        mov ax,@data
        mov ds,ax
        
        ;al will contain the sum
        mov al,0   
        ; the register bx will indicate the row
        mov bx,0
        mov si,0
        ; Access each row
 while1:cmp bx,len       
        je endw1
        mov si,0
        while2:cmp si,5
               je endw2
               ; if si=2 => column number 2
               cmp si,2
               jne endif
               
               add al,arr[bx][si]
         endif:inc si
               jmp while2
  endw2:
        add bx,si
        jmp while1
        
  endw1:mov sum,al
  
  main endp
end
