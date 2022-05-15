.model small
.stack 100h
.data
.code 
main proc
    
    mov cx,49
    mov bx,1 
    mov dx,0

    loop1:   
    
    add bx,4 
    add dx,bx    
    loop loop1 
    
    mov ax,dx 

    mov cx,0
    mov dx,0
    
check:
    cmp ax,0
    je print
    
    mov bx,10
    div bx
    
        
    push dx   
    inc cx
    
    mov dx,0
    jmp check
    
print: 
    cmp cx,0
    je exit
    
    pop dx
    
    add dx,48
    mov ah,2
    int 21h
    
    dec cx
    jmp print
    
exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main