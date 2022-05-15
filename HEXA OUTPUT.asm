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
      JE END_FOR
      
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
      
        
      END_FOR:
       
      MOV AH,02
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
      
      
      MOV CX,4
      MOV AH,2
      
      FOR2:
      MOV DL,BH
      SHR DL ,4
      SHL BX,4
      
      CMP DL,10
      JGE LETTER2 
      
      ADD DL,48
      INT 21H
      JMP END_LOOP2
      
      LETTER2:
      ADD DL,55
      INT 21H 
       
       END_LOOP2:
       LOOP FOR2   
    MAIN ENDP
   END MAIN