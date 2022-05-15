.MODEL SMALL
.STACK 100H
.DATA
   ID  DW 1941H
   ID2 DW 2122H
   MSG DB 'HELLO HERE MY SELF AHSAN NAYEM'
   
.CODE

MAIN PROC
    
     MOV AX,@DATA
     MOV DS,AX
     MOV AX,ID
     MOV BX,ID2
     
     LEA CX,MSG
     
     
     MOV AX,09H
     MOV DS,MSG
     INT 21H
    
    
    
    
   
    MAIN ENDP

END MAIN
    


