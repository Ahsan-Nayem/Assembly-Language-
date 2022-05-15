
.model small 
.stack 100h
 .data
        str1_inp db "Enter 1st string[charater 5]","$" 
        str2_inp db "Enter 2nd string[charater 5]","$" 
        same db "Both strings are same", "S" 
        nsame db "Both strings are not same","$" 
        enter db 0ah, 0dh,"$"
        str1 db 11 dup(?)
        str2 db 11 dup(?) 
.code 

        mov ax, @data
        mov ds, ax
        mov ah, 09h
        mov dx,offset str1_inp
        int 21h
        mov si,offset str1
        mov cx,10 
        input1: 
        
                        mov ah,01h
                        int 21h 
                        mov [si],al
                        cmp al, 0dh 
                        je lev1
                        Inc si
        
        loop input1 
        lev1:
        mov bl,"$"
        mov [si],bl
        mov ah, 09h
        mov dx, offset enter
        int 21h 
        mov ah,09h 
        mov dx, offset str2_inp
        int 21h
        mov di,offset str2
        mov cx,10 
        input2:
                        mov ah,01h 
                        int 21h
                        mov [di],al
                        cmp al, 0dh
                        je lev2 
                        inc di

        loop input2 
        lev2: 
        mov bl,"$"
        mov [di],bl
        mov ah,09h 
        mov dx, offset enter 
        int 21h 
        mov si,offset str1 
        mov di,offset str2 
        mov cx,10 
        cmpr:
                        mov al,[si] 
                        cmp al,[di] 
                        jne nsame1 
                        inc si
                        inc di 
        loop cmpr 
        mov ah,09h 
        mov dx,offset same 
        int 21h 
        jmp quit 
        nsame1: 
        mov ah, 09h 
        mov dx,offset nsame 
        int 21h 
        jmp quit 
        quit:
        mov ah, 04ch 
        int 21h
end




