.model small

.stack 100h

.data


.code     

double macro num1
    
    LOCAL lab,lab2,lab3
    
    shl num1,1
    
    double endm




main proc

    lab:mov al,5
    double al
    
    main endp

end
