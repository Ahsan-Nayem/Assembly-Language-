.MODEL SMALL
.STACK 100H
.DATA
ID  DW 1941h
ID1 DW 1912h   
MSG  DB 'THIS IS A MESSAGE'
    .code 
        MAIN PROC
            
            MOV AX,@DATA 
            MOV DS,AX
            MOV AX, ID
            MOV BX, ID1  
            
            LEA CX,MSG

            
        MAIN ENDP 
        
        
END MAIN    


