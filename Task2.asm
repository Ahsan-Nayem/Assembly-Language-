.model small
.stack 100h
.data 
msg db 'Enter a character: $' 
msg1 db 'Even Number $' 
msg2 db 'Odd Number $'     
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h
    
    Test al,1 
    jz even
    lea dx,msg2
    mov ah,9
    int 21h 
    jmp ending
    

    
    
    
    even:
    lea dx,msg1
    mov ah,9
    int 21h
    jmp ending 
    
   
    
    
    ending:
    mov ah,4ch
    int 21h 
    
    main endp
end main



