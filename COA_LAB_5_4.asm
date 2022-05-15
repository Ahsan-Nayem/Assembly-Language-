
.model small 
.stack 100h 
.data 
msg1 db ' number is equals $' 
msg2 db ' Less than 5 $'  
msg3 db ' Greater than 5 $' 

.code 
main proc 
    mov ax, @data 
    mov ds, ax 
    mov dl, '5' 
    mov ah, 1 
    int 21h 
    cmp al, dl 
    je l1
    jl l2
    jg l3

             
   l1: 
    mov dx, offset msg1 
    mov ah, 9 
    int 21h   
    
    mov ah, 4ch 
    int 21h   
   l2: 
    mov dx, offset msg2 
    mov ah, 9 
    int 21h   
    
    mov ah, 4ch 
    int 21h
   l3: 
    mov dx, offset msg3 
    mov ah, 9 
    int 21h   
    
    mov ah, 4ch 
    int 21h 
    
    
    
    
    main endp
end main