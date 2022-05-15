org 100h
key db 32h
msg db 1h
array db 10 dup('$')
    mov ah,1
    int 21h
    mov msg,al
    
print:
    mov ah,2
    mov dl,0Dh
    int 21h
    mov Dl,0AH
    int 21h
    mov dl,msg   
    
    mov array,offset dl  
    int 21h
    
    dec key
    jmp comp
    
comp:
    cmp key,0h
    jne print        

