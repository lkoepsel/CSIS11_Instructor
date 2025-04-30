        .ORIG x3000
        ; init R5
        LEA  R5, i       ; load address of i into R5
        ; i = 4;
        AND  R0, R0, #0  ; clear R0
        ADD  R0, R0, #4  ; put 4 in R0
        STR  R0, R5, #0  ; store in i

        ; ptr = &i;
        ADD  R0, R5, #0  ; R0 = R5 + 0 (addr of i)
        STR  R0, R5, #1 ; store in ptr

        ; *ptr = *ptr + 1;
        LDR  R0, R5, #1 ; R0 = ptr
        LDR  R1, R0, #0  ; load contents (*ptr)
        ADD  R1, R1, #1  ; add one
        STR  R1, R0, #0  ; store result where R0 points
        HALT
i       .BLKW 2 ; space for i and ptr
        .END