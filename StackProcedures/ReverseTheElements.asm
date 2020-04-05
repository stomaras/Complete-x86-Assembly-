.model small

.stack 100h

.data

    arr dw 1h,12h,5h,16h,3h,70h
           len = ($-arr)

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,6
    mov si,0
    
for1:push arr[si]
     add si,2
     loop for1
     
     mov cx,len
     xor si,si
     
for2:pop arr[si]
     add si,2
     loop for2
     
 main endp
end
