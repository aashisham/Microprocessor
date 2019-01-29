;To print the string "Hello World", "Good" , "Mornings" in 3 different lines

page 60, 80
title 'print strings in different lines'

 .model small
 .stack 100h
 .data
      string1 db 'Hello World $'
      string2 10,13, db 'Good $'          ; 10,13 for new line
      string3 10,13, db 'Mornings $'      ; declaring strings
                                       
 .code
    main proc
        mov ax, @data                     ; initialize the data segment
        mov ds, ax
        lea dx, string1                   ; loading the effective address
        mov ah, 09h                       ; for string diplay
        int 21                        
        mov ah, 09h
        int 21h
        lea dx, string3
        mov ah,09h
        int 21h
        mov ax, 4c00h
        int 21h
        
    main endp
  end main
