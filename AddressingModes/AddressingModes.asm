.model small

.data

 C EQU 12
 var db 15
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;Immediate
    mov al,5
    add ah,C
    mov var,2
    
    ;Register
    xchg al,ah
    mov bl,cl
    
    ;direct
    mov var,5
    mov al,var
    xchg bl,var
    
    main endp
end
