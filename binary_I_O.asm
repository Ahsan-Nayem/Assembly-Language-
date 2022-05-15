.model small 
.stack 100h
.data
msg1 db "Binary Input:$"  
msg2 db "Binary Output:$" 
m0 db "0$"   
m1 db "1$"
.code 
main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov bx,0 
    
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
    
    
    mov ah,1
    int 21h
    mov ah,0
    mov dx,ax
    
    check:
        cmp dx,13
        je print
        
        cmp dx,30h
        jl exitt
        
        cmp dx,31h
        jg exitt 
        
        and dx,0fh
        
        shl bx,1
        or bx,dx

        mov ah,1
        int 21h
        mov ah,0
        mov dx,ax
        
        jmp check 
        
      
        
    print:  
        
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
                
    exitt: 
    
        
        mov ah,4ch
        int 21h
    
    main endp
end main


