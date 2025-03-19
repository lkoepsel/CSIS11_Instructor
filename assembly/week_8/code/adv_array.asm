        .ORIG x3000      ; print out an abbreviation of the R0-th month

        ; determine negative values of ASCII 0 and 9 for easy comparison
        LD R3, ASCII_0  ; 
        NOT R3, R3      ;    
        ADD R3, R3, #1  ; 2's complement of ASCII 0
        ST R3, ASCII_0  ; store in ASCII_0
        LD R3, ASCII_9  ;
        NOT R3, R3      ;   ; 
        ADD R3, R3, #1  ; 2's complement of ASCII 0
        ST R3, ASCII_9  ; store in ASCII_9

        LEA R0, PROMPT   ; print out the prompt
        PUTS
INPUT   GETC
        LD R3, ASCII_9
        ADD R2, R0, R3  ; check if > ASCII_9
        BRp INPUT       ; if so, get another character

        LD R3, ASCII_0
        ADD R2, R0, R3 ; check if < ASCII_0
        BRn INPUT       ; if so, get another character

        ADD R0, R0, R3 ; convert to integer, by subtracting ASCII 0

        LD R4, SIZEOF
        AND R3, R3, #0  ; clear R3

MULT    ADD R3, R3, R0  ; adder for multiplication
        ADD R4, R4, #-1 ; decrement tens multiplier count
        BRp MULT        ; loop if not done

        LEA R1, NUMS    ; R1 is the address of the beginning of the array
        ADD R0, R3, R1  ; R0 contains address of the I-th element
        PUTS            ; print out the Latin word for the number

        HALT
ASCII_0 .FILL x0030     ; ASCII for 0
ASCII_9 .FILL x0039     ; ASCII for 9
I      .FILL 1          ; the variable I (1-12)
                        ; an array of strings each 10 characters long
                        ; 9 char plus terminating null
TITLE .STRINGZ "Latin words for numbers"
PROMPT .STRINGZ "Enter a number (0-9): "
SIZEOF .FILL 10         ; the size of each string in the array
NUMS    .STRINGZ "nullus   "
        .STRINGZ "unus     "
        .STRINGZ "duo      "
        .STRINGZ "tres     "
        .STRINGZ "quattuor "
        .STRINGZ "quinque  "
        .STRINGZ "sex      "
        .STRINGZ "septem   "
        .STRINGZ "octo     "
        .STRINGZ "novem    "
        .END
