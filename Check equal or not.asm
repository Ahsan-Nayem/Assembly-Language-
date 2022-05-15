.model small
.stack 100h
.data
var db "Number is matched...$"
var2 db "Number is not matched...$"

.code
 main proc

    mov ax,@data
    mov ds,ax

    mov ah,1
    int 21h
    mov cl,al

    mov ah,1
    int 21h
    mov bl,al

    cmp cl,bl
    je check

    lea dx,var2
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h


    check:

    lea dx,var
    mov ah,9
    int 21h


    main endp
end main
