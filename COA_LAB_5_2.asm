org 100h

jmp start ; jump over data declaration

msg1: db "Hello, World!", 0Dh,0Ah, 24h  
msg2: db "Bye, World !", 0Dh, 0Ah, 24h
key DB 5h

comp:
        cmp key,0h
        JE close 
        JNE start

start:  mov dx, msg1 ; load offset of msg into dx
                    
        mov ah, 09h ; print function is 9.           
 
        int 21h ; do it! 
           
        DEC key  
        
        jmp comp
        
close:  mov dx, msg2 

        mov ah,09h  
        
        int 21h    
        
        ret