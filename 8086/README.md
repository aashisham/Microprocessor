## General Pattern for Writing ALP in MASM:

```
[PAGE DIRECTIVE]
[TITLE DIRECTIVE]
[MEMORY MODEL DEFINATION]
[SEGMENT DIRECTIVES]
[PROC DIRECTIVES]

Instuction 1
Instruction 2
 ........
Instruction n

[END DIRECTIVE]
```

## Basic Format of ALP

```
page 6o, 80
title 'ALP to find the sum of two numbers'
.model small
.stack 100h
.data
    ; declaration of data variables
.code
   main proc 
    ; instructions 
     .........
     .........
   main endp
end main
```
