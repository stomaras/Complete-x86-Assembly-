
.model small

.data

 marks db 5,6,?,5,9,8
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,marks+1
    
    
    main endp
end
