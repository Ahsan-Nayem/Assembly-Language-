.MODEL SMALL
.STACK 100H
.DATA
ID DW 1941h
ID1 DW 2122h   
 
    .code 
        MAIN PROC
            
            MOV AX,@DATA 
            MOV DS,AX
            MOV AX, ID
            MOV BX, ID1  
            
            INC BX
            DEC AX
            

            
        MAIN ENDP 
        
        
END MAIN

