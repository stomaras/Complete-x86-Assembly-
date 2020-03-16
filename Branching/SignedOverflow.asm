; Define num1 and num2 as Byte
; Assuming num1 and num2 are signed numbers
; Do different operations and:
;   DL = 1 if there is an overflow
;   DL = 0 if not 

.model small

.data

    num1 db 127 ;signed
    num2 db 5 ;signed
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bl,num1
    add bl,num2
    
    jo of
    
    mov dl,0
    jmp endf
    
 of:mov dl,1
 
 endf:ret
 
 main endp

end
