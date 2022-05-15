.model small 
.stack 100h
.data 
.code 
main proc
    
    mov bx,0
    
    mov ah,1
    int 21h
    mov ah,0
    mov dx,ax
    
    check:
        cmp dx,13
        je exit
        
        cmp dx,30h
        jl exit
        
        cmp dx,31h
        jg exit 
        
        and dx,0fh
        
        shl bx,1
        or bx,dx

        mov ah,1
        int 21h
        mov ah,0
        mov dx,ax
        
        jmp check
        
        
        
    exit:
        mov ah,4ch
        int 21h
    
    main endp
end main