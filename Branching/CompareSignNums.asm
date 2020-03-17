; Define num1 and num2 as Byte 
; Assuming num1 and num2 are signed numbers
; Do:
;    compare Num1 and Num2 
;    DL = 0 IF num1 = num2
;    DL = 1 IF num1 > num2
;    DL = 2 IF num1 < num2

.model small


.data

    num1 db 6
    num2 db 7


.code        

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,num1
    sub al,num2
    
    jz eq ; check the zero flag     
    
    jns sup
    
    mov dl,2
    jmp endf
    
 eq:mov dl,0
    jmp endf
    
sup:mov dl,1
    jmp endf
    
endf:ret

main endp

end
