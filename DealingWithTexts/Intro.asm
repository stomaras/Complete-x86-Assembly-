
.model small

.data

str1 db 'this is a string',0
        len1=($-str1)
    
        
str2 db 25 dup(?)

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dl,str1+3
    mov ah,2
    int 21h
    
    mov cx,len1
    mov si,0; we start from the offset 0 or first letter
    
    xor al,al
    
for:mov bl,str1[si]
    cmp bl,'s'
    jne lp
    inc al
 lp:inc si
    loop for
    
    
    
    
    main endp
end
