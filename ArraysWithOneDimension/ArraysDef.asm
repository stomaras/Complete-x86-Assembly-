
.model small

.data
    
 ; define 10 variables in this array with initial value 5   
 marks db 10 dup(5)
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,marks+9
    
    
    main endp
end
