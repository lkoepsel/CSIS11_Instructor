; stack_example - stack include code as an example
; to use stack copy and paste "stack include section" code into your program
; Be aware of the following:
;   1. The stack is a 4 entry stack, with the stack pointer starting at x4000
;   2. Change FULL to be a lower number for a larger stack
;   3. To use the stack, call STK_INIT before using the stack
;   4. To push a value onto the stack, load the value into R0 and call PUSH
;   5. PUSH will return with R5 = 0 if successful, R5 = 1 if the stack is full
;   6. To pop a value from the stack, call POP, the result will be in R0
;   7. POP will return with R5 = 0 if successful, R5 = 1 if the stack is empty
; Example code:
                .ORIG x3000
                JSR STK_INIT    ; Initialize the stack
;  ...code that places a value into R0 which you want to reuse
                JSR PUSH        ; PUSH R0 onto the stack
                BRnp ERR        ; always call BRnp ERR after PUSH to check for success
;  ...code that does something else with R0
                JSR POP         ; Get DATA back into R0
;                JSR POP         ; Get DATA back into R0, uncomment for stack error
                BRnp ERR        ; always call BRnp ERR after PUSH to check for success
; ...resume code that uses the original R0
                HALT
ERR             LEA R0,ERRMSG ; Load the error message
                PUTS            ; Print the error message
                HALT
ERRMSG          .STRINGZ "Stack error\n"

; stack include section, add this to use the stack
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

                ADD R6,R6,#-1   ; Adjust stack pointer
                STR R0,R6, #0   ; The actual "push"
SUCCESS         LD R2,SAVE_R2   ; Restore original
                LD R1,SAVE_R1   ; register values
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
