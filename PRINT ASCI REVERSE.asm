.model small
.stack 100h
.data

var dw "Hello World!!!!!!!$"


.code
  main proc

    mov ax,@data
    mov ds,ax


    mov cx,255 
    mov bl,255

    lo1:

    mov dl,bl
    mov ah,2
    int 21h


    mov dl,10
    mov ah,2
    int 21h 

    mov dl,13
    mov ah,2
    int 21h 

    dec bl 


    loop lo1



   main endp
end main
ret



