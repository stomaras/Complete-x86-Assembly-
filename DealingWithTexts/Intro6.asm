
include C:\emu8086\inc\emu8086.inc
.model small

.data

 msg1 db 26 dup(0)
 
.code

main proc
    
        mov ax,@data
        mov ds,ax
        mov es,ax
        
        cld ;DF=0
        ; rep do the same work with loop 
        ; so it's going to repeat the instrutions cx times
        mov cx,26
        
        lea di,msg1
        
        mov al,'a'
        
    for:stosb 
        inc al
        loop for
        
        
        lea si,msg1
        
        call print_string
        
        
        main endp
   
   
DEFINE_PRINT_STRING
   
   
end
