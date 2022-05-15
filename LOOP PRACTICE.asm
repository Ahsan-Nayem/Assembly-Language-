.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 'THIS LINE WILL PRINT 7 TIME $'
.CODE
 MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    
     MOV CX,7
    
    LEVEL:
    
    MOV AH,9
    MOV DX, OFFSET MSG
    INT 21H
    
     MOV AH,2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     LOOP LEVEL
     
     MAIN ENDP
 END MAIN
 RET
    
    




