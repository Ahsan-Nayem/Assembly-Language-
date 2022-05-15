.model small
.stack 100h
.data
msg db "Enter 0 or 1: $"
.code

main proc

mov ax,@data
mov ds, ax

mov ah,9
lea dx,msg
int 21h 

mov bx,0




mov ah,01

while:

int 21h

cmp AL,0dh
je exit
sub al,48 
shl bx,1
or bl,al
jmp while

Exit:

mov ah,4ch
int 21h
main endp
end main