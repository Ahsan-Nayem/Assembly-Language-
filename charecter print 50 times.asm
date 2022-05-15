.model small
.stack 100h
.data 
msg db 'Thank you.$'
msg1 db 'Enter a character: $'
.code
 main proc 
    
    
    mov ax,@data
    mov ds,ax 
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov cx,49
    mov ah,1
    int 21h 
    mov bl,al
    
    
    mov dl,13
    mov ah,2
    int 21h
      
    mov dl,10
    mov ah,2
    int 21h 
    
    
       
    mov dl,bl
    sub dl,32
      
    mov ah,2
    int 21h 
    add dl,32
    
    loop1: 
    
    mov ah,2
    int 21h
    
    loop loop1
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h 
    
    lea dx,msg
    mov ah,9
    int 21h
        
     main endp
 end main