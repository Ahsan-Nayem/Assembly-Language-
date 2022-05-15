.model small
.stack 100h
.data
.code
  main proc


    mov cx,10 
    mov bl,48


    lo1:


    mov dl,bl
    mov ah,2
    int 21h
    add bl,1

    mov dl,10
    mov ah,2
    int 21h

    mov dl,13
    mov ah,2
    int 21h



    loop lo1



   main endp
end main
ret

