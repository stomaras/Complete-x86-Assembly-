.model small 

.data

.code

main proc
    
   mov ax,3
   mov bx,5
   mov cx,7
   
   ;the value of the register ax save in the register dx
   mov dx,ax
   mov ax,cx
   mov cx,bx
   mov bx,dx
    
    
    main endp
end
