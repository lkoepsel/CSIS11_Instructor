# Computer Architecture Review Exam
________________________________Name

### All multiple choice questions are worth 2 points.
### Please write letter answer to the left of the question number.

1. What is the purpose of a Base Register (BaseR) in LC-3?

   a) To store the result of arithmetic operations
   b) To compute addresses for LDR, STR, JMP, and JSRR instructions
   c) To hold immediate values
   d) To store the program counter value

2. Which registers can be used as a Base Register in LC-3?

   a) Only R0-R3
   b) Only R4-R7
   c) Any register R0-R7
   d) Only R7

 3. What is the purpose of the Destination Register (DR) in LC-3?

   a) To store memory addresses
   b) To specify the register where a result should be written
   c) To hold the base address for memory access
   d) To store temporary values

 4. What is a ```LABEL``` used for in LC-3 assembly?

   a) To define a constant value
   b) To identify a memory location symbolically
   c) To specify the data type of a variable
   d) To indicate the end of a program

 5. What does ```mem[address]``` denote in LC-3?

   a) The address of a memory location
   b) The contents of memory at the given address
   c) A register containing the address
   d) An instruction at the given address

 6. What is the Program Counter (PC) in LC-3?

   a) A register that counts the number of instructions executed
   b) A 16-bit register that contains the memory address of the next instruction to be fetched
   c) A register used for counting loop iterations
   d) A register that stores the base address of the program

 7. What does ```setcc()``` indicate in LC-3?

   a) That the program counter should be set
   b) That the condition codes N, Z, and P are set based on the result
   c) That the stack pointer should be updated
   d) That an interrupt should be triggered

 8. Which register is commonly used as the Stack Pointer (SP) in LC-3?

   a) R0
   b) R5
   c) R6
   d) R7

 9. What is the User Stack Pointer (USP) in LC-3?

   a) A pointer to the operating system kernel
   b) A stack pointer used by the operating system
   c) A stack pointer used by user programs
   d) An alternative name for the system stack pointer

 10. What does the ```HALT``` trap service routine do?

    a) Resets the system
    b) Suspends the program temporarily
    c) Halts execution and prints a message on the console
    d) Restarts the program from the beginning

 11. What is the purpose of the ```.ORIG``` assembler directive?

    a) To define a constant value
    b) To tell the assembler where in memory to place the LC-3 program
    c) To allocate a block of memory
    d) To indicate the end of the program

 12. What is the purpose of the ```.FILL``` assembler directive?

    a) To allocate a block of memory
    b) To initialize a memory location with a specific value
    c) To define a string
    d) To indicate the start of the program

 13. What is the purpose of the ```.BLKW``` assembler directive?

    a) To define a string
    b) To allocate a block of memory locations
    c) To initialize a memory location with a specific value
    d) To indicate the end of the program

 14. What is the purpose of the ```.STRINGZ``` assembler directive?

    a) To allocate a single memory location
    b) To initialize a sequence of memory locations with a string, terminated by a null character
    c) To define a constant value
    d) To indicate the start of the program

 15. What is the purpose of the ```.END``` assembler directive?

    a) To define a constant value
    b) To indicate the end of the program
    c) To allocate a block of memory
    d) To initialize a memory location

 16. What is the purpose of the LC-3 stack?

    a) To store program instructions
    b) To manage memory allocation
    c) To save register values and return addresses during subroutine calls
    d) To perform arithmetic operations

 17. What happens to the stack pointer when data is pushed onto the stack in LC-3?

    a) It increases
    b) It decreases
    c) It remains unchanged
    d) It is reset to zero

 18. Which of the following correctly describes the process of pushing a value onto the stack in LC-3?

    a) Decrement stack pointer, then store value
    b) Store value, then decrement stack pointer
    c) Increment stack pointer, then store value
    d) Store value, then increment stack pointer

 19. What is the purpose of the JSR instruction in LC-3?

    a) To jump to a specific memory location
    b) To call a subroutine and save the return address
    c) To return from a subroutine
    d) To perform a conditional branch

 20. Which register automatically stores the return address when JSR is executed?

    a) R0
    b) R5
    c) R6
    d) R7

 21. What is the purpose of the ```#include``` directive in C?

    a) To include comments in the program
    b) To include other source files in the program
    c) To include header files that contain function declarations
    d) To include variables from other programs

 22. What does the ```main()``` function represent in a C program?

    a) A library function
    b) The entry point of the program
    c) A variable declaration
    d) A preprocessor directive

 23. What is the purpose of the ```return 0;``` statement in the main function?

    a) To terminate the program
    b) To indicate successful program execution
    c) To return memory to the operating system
    d) To reset all variables

 24. Which of the following is the correct way to declare an integer variable in C?

    a) ```variable int x;```
    b) ```int x;```
    c) ```x = integer;```
    d) ```declare x as integer;```

 25. What is the purpose of the ```printf()``` function in C?

    a) To read input from the user
    b) To print formatted output to the console
    c) To calculate mathematical expressions
    d) To declare variables

 26. What is the purpose of the format specifier ```%d``` in ```printf()```?

    a) To print a floating-point number
    b) To print a character
    c) To print a decimal integer
    d) To print a string

 27. What is the purpose of the ```scanf()``` function in C?

    a) To read formatted input from the user
    b) To print output to the console
    c) To scan files for specific content
    d) To scan variables for errors

 28. What is the purpose of the ```&``` operator in ```scanf("%d", &x);```?

    a) To perform a logical AND operation
    b) To pass the address of the variable
    c) To check if the variable exists
    d) To convert the variable to an integer

 29. What is a variable in C programming?

    a) A fixed value that cannot be changed
    b) A named storage location that can hold a value
    c) A function that returns a value
    d) A type of loop

 30. Which of the following is NOT a valid variable name in C?

    a) ```count```
    b) ```_value```
    c) ```2ndNumber```
    d) ```total_sum```

 31. What is the purpose of the ```if``` statement in C?

    a) To declare variables
    b) To define functions
    c) To make decisions based on conditions
    d) To create loops

 32. What is the purpose of the ```else``` clause in an ```if-else``` statement?

    a) To provide an alternative action when the condition is false
    b) To provide an additional condition to check
    c) To terminate the if statement
    d) To repeat the if statement

 33. What is the purpose of the ```for``` loop in C?

    a) To execute a block of code a specified number of times
    b) To make decisions based on conditions
    c) To define functions
    d) To declare variables

 34. What is the purpose of the ```while``` loop in C?

    a) To execute a block of code as long as a condition is true
    b) To execute a block of code a specified number of times
    c) To make decisions based on conditions
    d) To define functions

 35. What is a function in C programming?

    a) A variable that can store multiple values
    b) A block of code that performs a specific task
    c) A type of loop
    d) A conditional statement

 36. What is the purpose of the ```return``` statement in a function?

    a) To exit the function and return control to the calling function
    b) To print the result of the function
    c) To declare the function's return type
    d) To restart the function

 37. What is the scope of a variable in C?

    a) The range of values the variable can hold
    b) The region of the program where the variable can be accessed
    c) The amount of memory allocated to the variable
    d) The data type of the variable

 38. What is a local variable in C?

    a) A variable declared inside a function
    b) A variable declared outside all functions
    c) A variable that can be accessed from any function
    d) A variable with a limited range of values

 39. What is a global variable in C?

    a) A variable declared inside a function
    b) A variable declared outside all functions
    c) A variable that can only be accessed within a specific function
    d) A variable with an unlimited range of values

 40. What is the result of X AND 0?

    a) 0
    b) 1
    c) X
    d) NOT X

 41. What is the result of Y OR 1?

    a) 0
    b) 1
    c) Y
    d) NOT Y

 42. What is the result of NOT(A AND B)?

    a) (NOT A) OR (NOT B)
    b) (NOT A) AND (NOT B)
    c) A OR B
    d) A AND B

43. Simplify: Z AND (Z OR W)
    a) Z
    b) W
    c) Z AND W
    d) Z OR W

 44. Which of the following is equivalent to (X AND Y) OR (X AND Z)?

    a) X OR (Y AND Z)
    b) X AND (Y OR Z)
    c) (X OR Y) AND (X OR Z)
    d) X OR (Y OR Z)

 45. What is the decimal value of the two's complement binary number 1010, assuming it is a 4-bit number?

    a) 10
    b) -10
    c) -6
    d) 6

 46. How many distinct values can be represented by a 7-bit unsigned integer?

    a) 7
    b) 64
    c) 127
    d) 128

 47. What is the largest decimal number that can be represented by a 5-bit unsigned integer?

    a) 15
    b) 16
    c) 31
    d) 32

 48. Using two's complement representation, what is the binary representation of -9 using 5 bits?

    a) 10111
    b) 10110
    c) 11000
    d) 11111

 49. What is the result of the following bitwise OR operation: 1010 OR 0110?

    a) 1110
    b) 0010
    c) 1100
    d) 1111

 50. What is the most negative number that can be represented in 2's complement with 6 bits?

    a) -31
    b) -32
    c) -63
    d) -64

# Answers
1. b
2. c
3. b
4. b
5. b
6. b
7. b
8. c
9. c
10. c
11. b
12. b
13. b
14. b
15. b
16. c
17. b
18. a
19. b
20. d
21. c
22. b
23. b
24. b
25. b
26. c
27. a
28. b
29. b
30. c
31. c
32. a
33. a
34. a
35. b
36. a
37. b
38. a
39. b
40. a
41. b
42. a
43. a
44. b
45. c
46. d
47. c
48. a
49. a
50. b

## C and Assembly Language Problems (Each one, 10 points)

Solve the following problems in **both C and LC-3 Assembly Language**. Points will be awarded points in the following manner:

### Total 40 points - Two C **and** LC-3 Assembly Language problems, 20 points each.
* 0-4 points - restate the problem in pseudo-code or structured algorithm
* 0-4 points - C program solution and syntax correct
* 0-4 points - LC-3 program and syntax correct
* 0-4 points - problem was solved by **both** program (algorithm was correct)
* 0-4 points - neatness, and well presented
* **0-20 points total**

### Problem 1. 
Solve the problem to request a user's name and write "Hi, yourname!" to the console, with yourname being the user's response. In LC-3 assume that a subroutine exists called GETS which will print a prompt based on an address in R0 and return via the stack an address of the character string response.

<div class="page"/>

### Problem 2. 
Solve the problem to calculate the volume of a cube using a function. Do not create in-line code to solve this problem. In both the C and LC-3 programs, pass the arguments using a pointer.


## Debugging Problems (Each one 5 points)

1. The overall code wouldn't compiled. I get the following error:
```bash
Invalid usage of the JSR instruction 
```
I believe the error is in this code snippet. **Please explain what might be the problem.**
```lc3
        ; numbers[3] = 33;
START   LD R0, p_numbers
        LD R1, test
        STR R1, R0, #3 ; Load the address of numbers[3]

    ; p_func = addition;
    ; int results = (*p_func)(x, y);
        LD R0, x
        LD R1, y
        LEA R2, addition
        JSR R2 ; Call addition function
```

```







```

2. I wrote a swap routine, however, it isn't working.  **Please explain what might be the problem.**

```c
// using pointers in functions

#include <stdio.h>

void Swap(int firstVal, int secondVal)
{
  int tempVal = firstVal;
  firstVal = secondVal;
  secondVal = tempVal;
}

void main()
{
    int a = 100;
    int b = 5000;
    printf("Before: %d %d\n", a, b);
    Swap(a, b);
    printf("After: %d %d\n", a, b);

}
```
```







```

<div class="page"/>

3. When I run this program, it seems to execute properly, however, I'm unable to enter the number 0. The numbers 1-9 work fine.  **What is the problem?**

```lc3
        .ORIG x3000     ;

        ; determine negative values of ASCII 0 and 9 for easy comparison
        LD R3, ASCII_0  ; 
        NOT R3, R3      ;    
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
        ADD R2, R0, R3 ; check if < ASCII_0
        BRn INPUT       ; if so, get another character
        LD R3, ASCII_9
        ADD R2, R0, R3 ; check if > ASCII_9
        BRp INPUT       ; if so, get another character
```
```








```
4. When I run the program below, I get the following error:
```bash
warning: format ‘%f’ expects argument of type ‘float *’, but argument 2 has type ‘double’ [-Wformat=]
```
**What is the problem?**

```c
#include <stdio.h>

int main(void)
{
    float fahrenheit, celsius;
    
    printf("Enter temperature in Fahrenheit: ");
    scanf("%f", fahrenheit);
    
    celsius = (fahrenheit - 32) * 5 / 9;
    
    printf("%.1f degrees Fahrenheit is equal to %.1f degrees Celsius\n", 
           fahrenheit, celsius);
    
    return 0;
}
```
```








```

## Binary Math (To be reviewed in Wed class)