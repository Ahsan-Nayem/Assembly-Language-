.model small
.stack 100h
.data
msg db 0dh,0ah,'$'
msg1 db "HEXA INPUT$"
msg2 db "HEXA OUTPUT$"
a db ?
count db ?

.code
  main proc
           
  mov ax,@data
  mov ds,ax
 
  xor bx,bx;clear bx
  mov cl,4 ;for shifting 4    
  
     lea dx,msg1
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h 
    
    mov dl,13
    mov ah,2
    int 21h

  mov ah,1
  int 21h
 
 
while:
  cmp al,13
  je end_while
  cmp al,39h
  jg letter
  and al,0fh
  jmp shift
 
 
  letter:
  sub al,37h
 
  shift:
  shl bx,cl
  or bl,al
  int 21h
 
  jmp while
           
 
end_while:  

     lea dx,msg2
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h 
    
    mov dl,13
    mov ah,2
    int 21h
    xor dx,dx
  
  
  mov count,4
 
  mov ah,9
  lea dx,msg
  int 21h
 
 
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