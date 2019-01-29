; program to print 'Hello World  

page 60, 80

title 'To print Hello World'

 .model small 
 .stack 100h
 .data
    string123 db 'Hello World'  
    
 .code
     main proc              ; main procedure
        mov ax, @data       ; initialize the data segment
        mov ds, ax        
        lea dx, string123   ; loading the effective address
        mov ah, 09h         ; to display the string
        int 21h             ; 
        mov ax, 4c00h       ; end request
        int 21h
        
     main endp
  end main
        
        
