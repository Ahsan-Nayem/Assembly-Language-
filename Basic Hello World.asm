
org 100h

jmp start

msg: db "Hello, World!", 0DH, 0AH, 24H

START: MOV DX, MSG

 MOV AH,09H
INT 21H


                                        
                                        
ret
        
        


