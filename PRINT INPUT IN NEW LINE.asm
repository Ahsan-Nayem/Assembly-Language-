.MODEL SMALL
.STACK 100H
.DATA 
NUM1 DB ?     
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H 
    MOV NUM1,AL 
    ; WE CAN WRITE 'MOV BL,AL' ALSO
    ; INPUT IS STORD IN AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
      
  
    
     ;MOV AH,2 
     MOV DL,NUM1
     INT 21H
     
    
    
    
    
    MOV AX,4CH
    INT 21H
    MAIN ENDP 

END MAIN
    
