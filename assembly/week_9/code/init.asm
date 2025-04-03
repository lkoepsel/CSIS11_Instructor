; iniit
; Demonstrates:
;       How to initialize variables using a loop
;       Probably only of value, with more than 4 variables

; Registers:
;         R3 - only register used

        .ORIG x3000     ;
        BR START        ; required to skip data section
; Data Section
COUNT           .FILL #06       ; Number of digits
P_ASCII             .BLKW 1         ; Pointer for array of constants 
ASCII_0         .FILL x0030     ; ASCII for 0
ASCII_9         .FILL x0039     ; ASCII for 9
ASCII_P         .FILL x002B     ; ASCII for +
ASCII_S         .FILL x002D     ; ASCII for -
ASCII_M         .FILL x002A     ; ASCII for *
ASCII_D         .FILL x002F     ; ASCII for /

        ; initialize pointers
        ; P_ASCII = &aASCII_0;
START   LEA R3, ASCII_0         ; get the address of the first constant
        ST  R3, P_ASCII         ; store it in the a pointer

        ; set negative values of ASCII constants for easy comparison
NEXT    LDI R3, P_ASCII         ; get the value at the address stored in P_ASCII
        NOT R3, R3  ;    
        ADD R3, R3, #1          ; 2's complement of the value
        STI R3, P_ASCII         ; store in same location

        ; point to the next constant and store again
        LD R3, P_ASCII          ; load address of the a constants
        ADD R3, R3, #1          ; increment to the next constant
        ST R3, P_ASCII          ; store address in pointer

        ; boundary check
        LD R3, COUNT            ; load count
        ADD R3, R3, #-1         ; decrement the count
        ST R3, COUNT            ; store (will NOT change flags)
        BRnp NEXT               ; if count is 0, done
        .END