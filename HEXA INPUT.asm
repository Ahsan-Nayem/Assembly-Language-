.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER HEXA NUMBER:$"      

.CODE
   MAIN PROC
      MOV AX,@DATA      
      MOV DS,AX
      
      MOV BX,0
      MOV CL,4
      
      MOV AH,09
      MOV DL,OFFSET MSG
      INT 21H
       
      MOV AH,1
      FOR1:
      INT 21H
      CMP AL,0DH
      JE EXIT
      
      CMP AL, 41H
      JGE LETTER
      
      SUB AL,48
      JMP SHIFT
      
      LETTER:
      SUB AL,37H 
      
      SHIFT:
      SHL BX, CL
      OR BL,AL
      JMP FOR1 
      
        
      EXIT: 
      MOV AH,02
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
      
       MOV AH,2
       MOV DL,BL
       INT 21H 
        
    MAIN ENDP
   END MAIN