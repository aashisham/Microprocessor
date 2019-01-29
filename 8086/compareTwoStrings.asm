; ALP in 8086 to compare two strings

page 60, 80
 .model small
 .stack 100h
 .data
            str1 db "Pokhara"
            str2 db "City"
            msg1 db "Strings are equal$"
            msg2 db "Strings are different$"
 .code
        main proc
                mov ax, @data
                mov ds, ax
                lea si, str1
                lea di, str2
                cld
                mov cx,8
                repe cmpsb
                mov ah, 09h
                jz skip
                lea dx, msg2
                jmp over
                skip : lea dx, msg1
                over : int 21h

                mov ax, 4c00h
                int 21h
        main endp
 end main
