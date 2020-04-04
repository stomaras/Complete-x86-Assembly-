.model small

.data

.code

main proc
    
    mov al,11101101b  
    ;we repeat 8 times the shiflt left operation
    ;as times as the al register capacity
    mov cx,8
    
for:shl al,1
    ; jump to lp if carry flag = 0
    jnc lp
    ; in the register al we count the occurence of 1's in al
    inc bl
 lp:loop for
 
 main endp

end
