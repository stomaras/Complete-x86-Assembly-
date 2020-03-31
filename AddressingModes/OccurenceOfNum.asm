.model small

.data

 arr db 5,3,2,5,6,7,5
        len=($-arr)
 
 count db ?
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,len
    
    mov dl,0
    
    mov si,0
    
for:cmp arr[si],5
    jne lp
    inc dl
 lp:inc si
    loop for
    
    mov count,dl
    
    
    
   main endp
end
