.model small

.data

 arr db 15h,12h,2h,30h,55h,0FEh
     len=($-arr)
     
 var db 25h       
 
.code

main proc
    
    
        mov ax,@data
        mov ds,ax
        
        ;indirect indexed based
        mov si,2
        mov bx,2
        
        mov al,arr[bx+si] 
        
        mov al,1[bx+si]
        
        mov al,si+[bx]
        
        mov al,si[bx]
        
        mov al,bx+[si]
        
        mov al,bx[si]
        
        mov al,[si]+bx
        
        mov al,[si]bx
        
        mov al,[bx]+si
        
        mov al,[bx]si
        
        mov al,[bx][si]
        
        
        main endp
end
