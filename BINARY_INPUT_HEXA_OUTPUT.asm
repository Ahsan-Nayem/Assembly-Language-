.model small
.stack 100h
.data
msg db 'binary input:$'
msg1 db 0dh,0ah,'hexa output:$'
a db ?
count db ?

.code
  main proc
           
  mov ax,@data
  mov ds,ax
 
  xor bx,bx
  mov cl,4
 
  mov ah,9
  lea dx,msg
  int 21h
 
 
  mov ah,1
  int 21h
 
 
while:
  cmp al,0dh
  je end_while
  and al,0fh
  shl bx,1
  or bl,al
  int 21h
  jmp while
           
 
end_while:  

  mov ah,9
  lea dx,msg1
  int 21h
 
  mov count,4
   
loop_p:
  mov dl,bh
  mov cl,4
  shr dl,cl
  mov a,dl
  add a,30h
  mov dl,a
  cmp dl,'9'
  jle print
  mov a,dl
  add a,07h
  mov dl,a
  mov ah,2
  int 21h
  mov cl,4
  rol bx,cl
  dec count
  cmp count,0
  jg loop_p
  je end_if
 
  print:
  mov ah,2
  int 21h
  mov cl,4
  rol bx,cl
  dec count
  cmp count,0
  jg loop_p
  je end_if
                   
 
     

end_if:
mov ah,4ch
int 21h  
   
  main endp
     end main