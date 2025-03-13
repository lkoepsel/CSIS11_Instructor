; stack:
; Demonstrates:
; Using a stack to store values
; Using a register return for error code
; Includes subroutines for PUSH and POP

; Usage:
; Set up two values then swap them using stack

; Registers:
; R0: Receives stack values
; R1: Not used, however, saved/used by stack subroutines
; R2: Not used, however, saved/used by stack subroutines
; R3: Stores values
; R4: Not used
; R5: Return status from stack subroutines
; R6: Stack pointer

; Memory:
; STACK: x3FFF - x3FFB: Stack memory locations
; A: x1234: Value to be pushed onto stack
; B: x5678: Value to be pushed onto stack
; SAVE_R1: x0000: Save register R1
; SAVE_R2: x0000: Save register R2
; EMPTY: xC000: Stack empty condition
; FULL: xC005: Stack full condition

                .ORIG x3000
                JSR STK_INIT    ; Initialize stack, REQUIRED
                ; Set up values to be swapped and push onto stack
                LD R0,A         ; Load a value to be pushed onto stack
                JSR PUSH        ; Push a value onto the stack
                LD R0,B         ; Load second value to be pushed onto stack
                JSR PUSH        ; Push a value onto the stack

                ; Uncomment block to show overflow error
                ; JSR PUSH      ; Extra push onto stack 
                ; BRnp ERROR    ; Branch if stack error
                ; JSR PUSH      ; Extra push onto stack 
                ; BRnp ERROR    ; Branch if stack error
                ; JSR PUSH      ; Extra push onto stack 
                ; BRnp ERROR    ; Branch if stack error

                ; Pop values and swap locations
                LEA R3, A       ; Load address of A
                JSR POP         ; Pop B from stack
                BRnp ERROR      ; Branch if stack error
                STR R0, R3, #0  ; Store B in A

                ; Uncomment block to show underflow error
                ; JSR POP       ; Pop A from stack 
                ; BRnp ERROR    ; Branch if stack error

                LEA R3, B       ; Load address of B
                JSR POP         ; Pop A from stack
                BRnp ERROR      ; Branch if stack error
                STR R0, R3, #0  ; Store A in B
                BR NORM         ; Done

                ; print error message and exit
ERROR           LEA R0, ERR_STACK
                PUTS
                BR EXIT

                ; normal termination
NORM            LEA R0, NORMAL
                PUTS       
EXIT            HALT

                ; test program data
A               .FILL x1234     ; Value to be pushed onto stack
B               .FILL x5678     ; Value to be popped fR0m stack
ERR_STACK       .STRINGZ "ERROR: Stack full or empty"
NORMAL          .STRINGZ "Normal Termination"

                ; Stack initialization, call prior to using stack
STK_INIT        LD R6,EMPTY     ; Initialize stack pointer
                LD R1, EMPTY    ; 
                NOT R1,R1       ; 
                ADD R1,R1,#1    ; 
                ST R1, EMPTY    ; Save a negative EMPTY
                LD R1, FULL     ; 
                NOT R1,R1       ; 
                ADD R1,R1,#1    ; 
                ST R1, FULL     ; Save a negative FULL
                RET

POP             ST R1,SAVE_R1   ; Save registers that
                ST R2,SAVE_R2   ; are needed by POP
                LD R1,EMPTY     ; EMPTY contains -x4000
                ADD R2,R6,R1    ; Compare stack pointer to x4000
                BRz FAIL        ; Branch if stack is empty

                LDR R0,R6, #0   ; The actual "pop"
                ADD R6,R6, #1   ; Adjust stack pointer
                BRnzp SUCCESS

PUSH            ST R1,SAVE_R1   ; Save registers that
                ST R2,SAVE_R2   ; are needed by PUSH
                LD R1, FULL     ; FULL contains -x3FFB
                ADD R2,R6,R1    ; Compare stack pointer to x3FFB
                BRz FAIL        ; Branch if stack is full

                ADD R6,R6,#-1 ; Adjust stack pointer
                STR R0,R6, #0 ; The actual "push"
SUCCESS         LD R2,SAVE_R2 ; Restore original
                LD R1,SAVE_R1 ; register values
                AND R5,R5,#0    ; R5 <-- success
                RET

FAIL            LD R2,SAVE_R2   ; Restore original
                LD R1,SAVE_R1   ; register values
                ADD R5,R5,#1    ; RS <-- failure
                RET

                ; stack data
EMPTY           .FILL x4000     ; EMPTY, 1 past top of stack
FULL            .FILL x3FFC     ; FULL is the last legal entry, 4 entry stack
SAVE_R1         .FILL x0000
SAVE_R2         .FILL x0000
                .END
