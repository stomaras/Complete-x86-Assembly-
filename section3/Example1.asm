;Define num1 as Byte with a value 6
;Define num2 as Byte with a value 3
;Num1 = num1 + 2(using inc)
;Num2 = 1(using dec)
;Define def as Byte with a value num1-num2(using neg)

.model small

.data

    num1 db 6
    num2 db 3
    def db 0
    
    
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    inc num1
    inc num1
    
    
    dec num2
    dec num2
    
    mov al,num2
    neg al
    add al,num1 ;num1-num2 => num1+(-num2)
    mov def,al
   
    
    main endp
end
