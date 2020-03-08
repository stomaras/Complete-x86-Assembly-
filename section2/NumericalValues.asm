.model small 

.data

    var1 db 15  ; -128 <= db <= 255    
    
    var3 db 1001b ; is a byte cannot be more than 8 nums 
    
                  ; mistake to say (( var1 db 257 >>
    
    var2 dw 151 ; -32768 <= dw <= 65536 
    
    var4 db 0aeh;  with this way informing processor value is hexa
    
    var5 db 12h;
    
    var6 dw 0ac15h;
    
    var7 dw 1678h; hexa
    
    
.code

main proc
    
    
    
    
    
    main endp

end
