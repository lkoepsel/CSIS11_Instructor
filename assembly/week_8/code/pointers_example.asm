; pointers_example - demonstrate how to use pointers
; illustrates the limitations of LC-3 opcodes
; offset must be hard-coded, not dynamic (unless you use a register)

            .orig   x3000
            ; get the number of months
            ; get the address of the first month
            ; print the month
            LD R2, COUNT
            LEA R0, MONTHS
            ST R0, WHICH

            ; print the month
NEXT        PUTS

            ; decrement the count
            ; point to the next month
            ADD R2, R2, #-1
            BRz DONE
            ADD R0, R0, #5  ; #5 is hard-coded length of each month
            ST R0, WHICH
            BR NEXT

            ; terminate when COUNT is zero
DONE        HALT

WHICH       .FILL 0
COUNT       .FILL 6
MONTHS      .STRINGZ "JAN\n"
            .STRINGZ "FEB\n"
            .STRINGZ "MAR\n"
            .STRINGZ "APR\n"
            .STRINGZ "MAY\n"
            .STRINGZ "JUN\n"
            .END
