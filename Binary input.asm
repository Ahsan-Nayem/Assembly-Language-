.model small
.stack 100h
.data
msg db "Enter 16 BIT BINARY NUMBER: $"
msg2 db "even $"
msg3 db "odd $"
.code

main proc

mov ax,@data
mov ds, ax 

mov bx, 0h
mov cx,0

while:
mov ah,01h
int 21h

cmp al,0dh
je end_while

cmp al,'0'
je store

cmp al, '1'
je  store
je count



print:

mov ah,9
mov dl,offset msg
int 21h

count:
inc cx
jmp even 

even:
cmp cx,2
je print3
cmp cx,4
je print3
cmp cx,6
je print3
cmp cx,8
je print3
cmp cx,10
je print3
cmp cx,12
je print3 
cmp cx,14
je print3 
cmp cx,16
je print3

 mov ah,9
mov dl,offset msg3
int 21h
 
 print3:
 mov ah,9
mov dl,offset msg2
int 21h

store:
shl bx,01h
and al,0fh
or bl,al
jmp while

end_while:


main endp
end main
