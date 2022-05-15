.model small
.stack 100h
.data

var db "Nayem bhai wants to whats your input???$" 
var2 db "Ashique wants to know what will happen??$" 

.code
  main proc

    mov ax,@data
    mov ds,ax 


    mov dx, offset var
    mov ah,9
    int 21h

    mov dx,10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h 




    mov dx, offset var2
    mov ah,9
    int 21h

    mov dx,10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h


    mov ah,1
    int 21h
    mov dl,al


    mov ah,2
    int 21h



