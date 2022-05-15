.model small
.stack 100h
.data 
msg db 'Enter a character: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h
    
    cmp al,'A'
    jl ending
    cmp al,'Z'
    jl utol
    jg chk_small
    
    
    
    
    chk_small:
    
    cmp al,'a'
    jl ending
    cmp al,'z'
    jl ltou
    jg ending
    
    
    utol:
    mov dl,al
    or dl,20h
    mov ah,2
    int 21h 
    jmp ending
    
    
    
    ltou:
    mov dl,al
    and dl,0DFh
    mov ah,2
    int 21h 
    jmp ending
    
    
    ending:
    mov ah,4ch
    int 21h