; Define num1 and num2 as Byte
; Assuming num1 and num2 are unsigned numbers
; Do:
;       Num1 + Num2
;       DL = 1 if there is an overflow
;       DL = 0 if not
; We use the carry flag because we have unsigned values and we want 
; to figure out the overflow

.model small

.data   

    num1 db 250
    num2 db 6



.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,num1
    add al,num2
    
    jc of
    
    mov dl,0
    jmp endf
    
  of:mov dl,1
  
 endf:ret
 
 main endp

end
