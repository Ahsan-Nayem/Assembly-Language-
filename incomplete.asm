.MODEL SMALL
.STACK 100H
.DATA  
NUM DB ?
MSG DB "hELLO WORLD $"
MSG2 DB "BYE WORLD $"
.CODE

MAIN PROC 
      MOV AX,@DATA
      MOV DS, AX
      
      MOV AH,1
      MOV BL,AL  
        
      MOV AH,2
      MOV DL,BL
      
    
    
    
    MAIN ENDP
END MAIN

ret




