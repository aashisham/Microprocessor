
; ALP in 8086 to perform 16 bit additiom

page 60,80

title 'to perform 16 bit addition'

 .model small
 .stack 100h
 .data
     
       val1 dw 2030h
       val2 dw 4050h
       
 .code
    
    main proc
        mov ax, @data
        mov ds, ax
        mov bx, val1
        mov bx, val2
        
        mov ax, 4c00h
        int 21h
        
    main endp
  end main
