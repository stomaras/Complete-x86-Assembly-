.model small

.data

 arr db 12,15,11,2,5,3
 
 ;This instruction gives the length of the array dynamically
 len=($-arr)
                                                            
 min db ?
 
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;cx = len -1
    mov cx,len
    dec cx
    
    ;lea si,arr same thing
    mov si,arr offset     
    
    ;al will contain the min at the end
    mov al,[si]
    
for:inc si
    cmp [si],al
    ja lp
    mov al,[si]
 lp:loop for
 
 
 mov min,al
 
 main endp
end
