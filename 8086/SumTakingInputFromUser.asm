; To find sum  of two numbers as input from  user  and print  sum in the  screen 

page 60, 80
title 'to find sum'

 .model small
 .stack 100h
 .data
     msg1 db 'Enter first number : $'
     msg2 db 'Enter second number : $'
     msg3 db 'The sum is : $'
     
 .code
     main proc
        mov ax, @data
        mov ds, ax
        lea dx, msg1
        mov ah, 09h     ; to display message1
        int 21h
        mov ah, 01h     ; input first number
        int 21h
        mov bl, al      ; copy that number to bl
        and bl, 0fh     ; converting ascii to hex code
        
        lea dx, msg2    ; to display message2
        mov ah, 09h
        int 21h
        mov ah, 01h     ; input second number
        int 21h  
        and al, 0fh     ; converting ascii to hex code 
        
        add bl, al
        lea dx, msg3
        mov ah, 09h
        int 21h 
        
        mov dl, bl      ; copying sum to register dl  
        or dl, 30h      ; converting hexcode to ascii
        mov ah, 02h     ; to print sum on screen
        int 21h
        
        mov ax, 4c00h
        int 21h
        
     main endp
  end main
         
        
        
