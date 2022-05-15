.model small
.stack 100h
.data
var db "HELLO WORLD!!!!!!!!$"
var2 db "BYE WORLD!!!!!!!!!$"

.code
 main proc

    mov ax,@data
    mov ds,ax
    mov bl,5


    check:

    cmp bl,0
    jne l1
    je end

    l1:
    lea dx,var 
    mov ah,9
    int 21h 
    dec bl 

    mov dl,10
    mov ah,2
    int 21h

    mov dl,13
    mov ah,2
    int 21h

    jmp check


    end:

    lea dx, var2
    mov ah,9
    int 21h 
    mov ah,4ch
    int 21h



    main endp
end main


