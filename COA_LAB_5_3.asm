.model sma 11
.stack 100h
.data
array db 10 dup('$')
 msg1 db 10, 13, 'Negative Number $ '
 msg2 db 10,13, 'Positive number $'
.code
main proc
    mov ax,@data 
    mov ds, ax
    MOV si, offset array   
            
        l1:
        mov ah,1
        int 21h
        cmp al,13
        je check 
        mov [si],al
        inc si 
        jmp l1
        
        check:
        cmp array,'-'
        je l2
        
        mov dx,offset msg2
        mov ah,9
        int 21h
        
        jmp exit 
        l2:
        mov dx,offset msg1
        mov ah,9
        int 21h 
        
        exit:
        mov ah,4ch
        int 21h


    main endp 
end main       



