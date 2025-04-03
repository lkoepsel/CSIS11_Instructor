; array
; Demonstrates using pointers to create an array
; Use one pointer to store the address of a set of constants
; and another pointer to store it in an array.
; The program uses the following variables:
; a_n (n = 1-4): a set of constants
; p_a: a pointer for the current address of the a constant
; b: an array to store the values of a constants
; p_b: a pointer for the current address of b

; Registers:
; R4: used for all calculations

        .ORIG x3000
        BR START        ; required to skip data section

        ; data section
COUNT   .FILL x0004     ; number of values to be stored
a_1     .FILL x1111     ; fill with a known number
a_2     .FILL x2222     ; fill with a known number
a_3     .FILL x3333     ; fill with a known number
a_4     .FILL x4444     ; fill with a known number
p_a     .BLKW 1         ; pointer for array of constants a
p_b     .BLKW 1         ; pointer for array b
b       .BLKW 4         ; fill array b with a_n (n = 1-4)

        ; initialize pointers
        ; p_a = &a;
START   LEA R4, a_1     ; get the address of the first constant
        ST  R4, p_a     ; store it in the a pointer

        ; p_b = &b;
        LEA R4, b       ; get the address of the b array
        ST  R4, p_b     ; store it in the b pointer

        ; loop through, storing values of a_n in b()
        ; b(n) = *a_n;
NEXT_a  LDI R4, p_a     ; get the value at the address stored in p_a
        STI  R4, p_b    ; store it in b

        ; point to the next constant and store again
        LD R4, p_a      ; load address of the a constants
        ADD R4, R4, #1  ; increment to the next constant
        ST R4, p_a      ; store address in pointer

        LD R4, p_b      ; load
        ADD R4, R4, #1  ; increment
        ST R4, p_b      ; store

        ; boundary check (notice it is counting down)
        LD R4, COUNT    ; load count
        ADD R4, R4, #-1 ; decrement the count
        ST R4, COUNT    ; store (will NOT change flags)
        BRnp NEXT_a     ; if count is 0, done
        HALT
        .END