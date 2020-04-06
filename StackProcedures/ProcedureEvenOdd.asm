; we are going to read five values and then save them in an array
; and then we are going to fill another array with only the even values
; after that we print them the user. So we are going to solve this problematic in 4 procedures 
; The first procedure is to print this message which is enter 5 numbers 
; in order to save them in an array 
; the third procedure is for testing the values ... sowe test these values they are even values or not 
; the user is ging to enter a number from 0 to 9 only 
; after that we have the last procedure which is the user_output 



.model small

.stack 100h

.data        

 msg db 'enter 5 numbers',10,13,'$'
 
 input db 5 dup(?)
 
 output db 5 dup(?)
 

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    call user_req
    call user_input
    call test_even
    call user_output
    
    hlt
    main endp
    
           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     user_req procedure      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

   
user_req proc  
    
    mov ah,9
    lea dx,msg
    int 21h
    
    ret
    user_req endp
        
     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    user_input procedure     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   
user_input proc
    
    mov si,0
    mov cx,5
    
    mov ah,1
    
for1:int 21h
     call convert_dec
     mov input[si],al
     inc si
     loop for1
     
     ret
 user_input endp       


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    convert_dec  procedure     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


convert_dec proc
    
    sub al,48
    
    ret
    convert_dec endp                                                                                                   
                                                                                                                                                                                                                                                                                 
                                                                                                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    test_even  procedure     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 


test_even proc
    
    mov si,0
    xor di,di
    mov cx,5
    
for2:test input[si],1 ;00000001b
     jnz lp
     mov al, input[si]
     mov output[di],al; di is the offset of new array 
     inc di
     
  lp:inc si
     loop for2
     
 

    ret
 test_even endp


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    user_output  procedure     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
user_output proc
    
    mov si,0
    mov ah,2
    mov cx,5
    
    ;CR
for3:mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     mov dl,output[si]
     call convert_ascii
     int 21h
     inc si
     loop for3
     
     ret
     
user_output endp

                                                                                                  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    convert_ascii  procedure     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


convert_ascii proc
    
    add dl,48
    
    ret
    convert_ascii endp

end

        
main endp
