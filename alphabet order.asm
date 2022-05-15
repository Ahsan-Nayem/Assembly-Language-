.model small
.stack 100h 
.data
msg1 db '?$'
.code
main proc 
    
    mov ax,@data
    mov ds,ax
    mov ax,0    
    
    lea dx,msg1
    mov ah,9
    int 21h 
    
    
    mov ah,1 
    int 21h
    mov bl,al 
    int 21h
    mov cl,al 
    
    
    
    cmp bl,cl 
    jl print 
    xchg bl,cl
    jmp print
 
print: 
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h



    mov ah,2
    mov dl,bl
    int 21h
    
    mov dl,cl
    int 21h
    
    jmp exit 
    
exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main