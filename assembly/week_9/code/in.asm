; in
; Demonstrates how to input character using GETC

; Registers:
;     R0 - register used for I/O
;     R1 - counter for number of digits entered
;     R3 - temp register for calculations and comparisons

            .ORIG x3000
            BR START
COUNT       .FILL #04                       ; Number of inputs
ASCII_0     .FILL x0030                     ; ASCII for 0
ASCII_9     .FILL x0039                     ; ASCII for 9
DESC        .STRINGZ "Enter 4 digit number, " ; description of program
START       LEA R0, DESC
            PUTS

            LD R1, COUNT    ; get count
            LD R3, ASCII_0  ; 
            NOT R3, R3      ;    
            ADD R3, R3, #1  ; 2's complement of ASCII 0
            ST R3, ASCII_0  ; store in ASCII_0
            LD R3, ASCII_9  ;
            NOT R3, R3      ;   ; 
            ADD R3, R3, #1  ; 2's complement of ASCII 0
            ST R3, ASCII_9  ; store in ASCII_9

INPUT       GETC              ; read a character
            LD R3, ASCII_9
            ADD R3, R0, R3  ; check if > ASCII_9
            BRp INPUT       ; if so, error and get another character
            LD R3, ASCII_0
            ADD R3, R0, R3  ; check if < ASCII_0            
            BRn INPUT       ; if so, error and get another character
            OUT
            
            ADD R1, R1, #-1 ; decrement count
            BRnp INPUT      ; if count is 0, done
            HALT
            .END