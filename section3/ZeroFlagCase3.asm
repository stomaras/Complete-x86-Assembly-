; Define num1 and num2 as Byte 
; Change the values of the variables and compare it 
; Using flags register 

; Note
; Num1 = num2 => num1 - num2 = 0
; Num1 > num2 => num1 - num2 > 0
; Num1 < num2 => num1 - num2 < 0

.model small

.data

num1 db 15
num2 db 20

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al, num1
    mov bl, num2
    
    sub al,bl  ; Result is negative  
    
    
    main endp
end 
