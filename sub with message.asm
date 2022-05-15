.MODEL SMALL
.STACK 100H
.DATA
NUM DB ? 
NUM2 DB ?
MSG DB "ENTER YOUR NUMBER: $"
MSG2 DB "ENTER YOUR NUMBER: $" 
MSG3 DB "YOUR RESULT IS : $"

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
  
   MOV AH,9
   LEA DX, MSG
   INT 21H 
   
   
   MOV AH,1 
   INT 21H
   MOV NUM,AL
   
   
   MOV AH,2
   MOV DL,0AH
   INT 21H
   MOV DL,0DH
   INT 21H
   
   MOV AH,9
   LEA DX,MSG2
   INT 21H 
   
   
   MOV AH,1 
   INT 21H
   MOV NUM2,AL 
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL, 13
   INT 21H
   
   MOV BH,NUM
   SUB BH,NUM2
   
   ADD BH,48 
   
   MOV AH,9
   MOV DX, OFFSET MSG3
   INT 21H
   
   
   MOV AH,2
   MOV DL,BH
   INT 21H
   
   MAIN ENDP

END MAIN

RET
   
    
    




