.model small
.stack 100h
.data
msg1 db "Hexa Input:$"  
msg2 db "Binary Output:$" 
m0 db "0$"   
m1 db "1$"
msg db 0dh,0ah,'$'
a db ?
count db ?

.code
  main proc
           
  mov ax,@data
  mov ds,ax 
  
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h 
    
    mov dl,13
    mov ah,2
    int 21h 
    
    xor dx,dx
 
  xor bx,bx;clear bx
  mov cl,4 ;for shifting 4

  mov ah,1
  int 21h
 
 
while:
  cmp al,13
  je exit
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
  
   exit: 
    
        lea dx,msg2
        mov ah,9
        int 21h
        
        mov dl,10
        mov ah,2
        int 21h 
        
        mov dl,13
        mov ah,2
        int 21h  
        
        mov cx,16 
        
         L:
            ROL BX,1
            JNC ZERO
            lea dx,m1
            JMP DISPLAY 
            
         ZERO:
                lea dx,m0
                JMP DISPLAY
        
         DISPLAY:
             MOV AH,9
             INT 21H
             LOOP L 
  
  
           
 

enddd:
mov ah,4ch
int 21h  
   
  main endp
     end main
     END MAIN






