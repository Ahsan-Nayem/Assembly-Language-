.model small
.stack 100h
.data
msg db 0dh,0ah,'$'
a db ?
count db ?

.code
  main proc
           
  mov ax,@data
  mov ds,ax
 
  xor bx,bx;clear bx
  mov cl,4 ;for shifting 4

  mov ah,1
  int 21h
 
 
while:
  cmp al,13
  je enddd
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
           
 

enddd:
mov ah,4ch
int 21h  
   
  main endp
     end main
     END MAIN



