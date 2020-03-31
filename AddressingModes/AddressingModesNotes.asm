.model small

.data

    C EQU 4
    var db 15h
    arr db 15h, 12h, 13h, 25h, 11h, 37h
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ; indirect
    
    mov al,2[var]
    mov cl,[2]+arr 
    mov bl,[5]+1
    mov ah,[C]
    
    ; indirect indexed      
    
    mov di,3
    mov al,arr[di]  ; al will have the value 25
    mov cl,di[arr]
    
    mov si,2
    mov bl,[si]
    lea di,arr+3
    mov bh,[di]
    
    ; indirect based
    
    mov bx,3
    mov cl,[bx] 
    lea bx,var
    mov ch,[bx]
    
    main endp
end
