.model small

.data

 max db ?
 
 arr db 1h, 10h, 2h,3h
     
     db 19h,20h,80h,13h
     
     db 13h,12h,15h,20h
     
     db 5h,2h,3h,17h
     
     len=($-arr)
     
     
     
.code

main proc
    
    
        mov ax,@data
        mov ds,ax
        
        mov cx,len
        dec cx
        
        mov si,0
        mov al,arr[si]
        
    for:inc si
        cmp arr[si],al
        jb lp
        mov al,arr[si]
     lp:loop for
        mov max,al
        
        
        
        
     main endp
end
