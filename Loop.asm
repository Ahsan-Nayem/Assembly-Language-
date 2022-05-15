.model small
.stack 100h
.data

var db "Hello World!!!!!!!$" 


.code
  main proc

    mov ax,@data
    mov ds,ax 


    mov cx,10


    lo1:

    lea dx,  var
    mov ah,9
    int 21h 
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H

    loop lo1



   main endp
end main
ret




;.MODEL SMALL
;.STACK 100H
;.DATA
 ; MSG DB 'HELLO WORLD$'
;  
;.CODE

;MAIN PROC
 ;   MOV AX,@DATA
  ;  MOV DS, AX
    
    
   ; MOV AH,2
    ;MOV DL,OFFSET MSG
;    INT 21H
    
 ;   
    MAIN ENDP
;END MAIN