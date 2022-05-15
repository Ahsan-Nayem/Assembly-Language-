.MODEL SMALL
.DATA  
IDD DW 1912h
ID1 DW 1941h 


.CODE  
    MAIN PROC   
        MOV AX,IDD 
            INC AH       
                   
        MOV BX,ID1
        
        
    MAIN ENDP

END MAIN