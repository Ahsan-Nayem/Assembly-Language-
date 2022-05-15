.model small 
.stack 100h
.data 
msg db "Reverse order$"  
m0 db "0$"   
m1 db "1$"
a dw ?
.code 
main proc  
    
    mov ax,@data
    mov ds,ax
    
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
        xor ax,ax 
        
        mov cx,16 
        mov ax,bx
        xor bx,bx 
        reverse:
        shl ax,1
        rcr bx,1
        loop reverse
        
        
        lea dx,msg
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
            ROL bx,1
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
                
    exitt: 
    
        
        mov ah,4ch
        int 21h
    
    main endp
end main



