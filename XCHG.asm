.MODEL SMALL
.STACK 100H
.CODE
 MAIN PROC
    
  MOV BH,7
  MOV BL,6
  XCHG BH,BL
  
  
 
  MOV AH,2
  MOV DL,0AH
  INT 21H
  MOV DL,0DH
  INT 21H
  
  
   ADD BH,48 
  MOV AH,2
  MOV DL,BH
  INT 21H
          
  MOV AH,2
  MOV DL,0AH
  INT 21H
  MOV DL,0DH
  INT 21H 
  
  
   ADD BL,48 
    MOV AH,2
  MOV DL,BL
  INT 21H
  
  
  MAIN ENDP
 END MAIN