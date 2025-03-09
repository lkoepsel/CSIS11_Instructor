; trap_branch:
; Demonstrates:
; Trap codes for I/O
; Branching based on condition codes

; Usage:
; Program to read upto 4 numeric digits
; If input is not an ASCII digit, it is ignored


; Registers:
; R0: Receives ASCII values
; R1: Counts number of inputs
; R2: Checks if input is a number
; R3: Stores ASCII values 

; Memory:

        .ORIG x3000     ;

        ; determine negative values of ASCII 0 and 9 for easy comparison
        LD R3, ASCII_0  ; 
        NOT R3, R3      ;    
        ADD R3, R3, #1  ; 2's complement of ASCII 0
        ST R3, ASCII_0  ; store in ASCII_0
        LD R3, ASCII_9  ;
        NOT R3, R3      ;   ; 
        ADD R3, R3, #1  ; 2's complement of ASCII 0
        ST R3, ASCII_9  ; store in ASCII_9

        ; display program title and description
        LEA R0, TITLE   ; 
        PUTS            ; show program title
        LD R0, CR       ; 
        OUT             ; print new line
        LEA R0, DESC    ; 
        PUTS            ; show description

        ; read up to 4 numeric digits
        LD R1, COUNT    ; get count
INPUT   IN              ; read a character
        LD R3, ASCII_0
        ADD R2, R0, R3 ; check if <= ASCII_0
        BRn INPUT       ; if so, get another character
        LD R3, ASCII_9
        ADD R2, R0, R3 ; check if > ASCII_9
        BRp INPUT       ; if so, get another character

        ; print the character, decrement count and loop
        OUT             ; print the character
        ADD R1, R1, #-1 ; decrement count
        BRnp INPUT      ; if count is zero, exit

        ; at end, print end message and halt
        LD R0, CR       ; 
        OUT             ; print new line
        LEA R0, END_M   ; load address of END_M
        PUTS            ; show end message
EXIT    HALT                            ; stop the program

; Data Section
TITLE   .STRINGZ "I/O and Branching"    ; title at start of output
DESC    .STRINGZ "Enter numbers only"   ; description of program
END_M   .STRINGZ "End of Program"       ; end of program message
CR      .FILL x000A                     ; ASCII for CR
COUNT   .FILL #04                       ; Number of inputs
ASCII_0 .FILL x0030                     ; ASCII for 0
ASCII_9 .FILL x0039                     ; ASCII for 9
        .END                            ; end of source code
