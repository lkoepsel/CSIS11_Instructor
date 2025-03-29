# Week 9 Assignment
This week we will wrap up our work in LC-3 Assembly Code. We will do this by completing the Simple Math Calculator.

## Simple Math Calculator Overview
1. Enter each character, one at a time
1. For each number entered:
    1. Assume 4 digits must be entered, as in 0012 for 12 and 1023 for 1,023
    2. Convert each digit from ASCII to an integer
    3. Multiply each digit by its appropriate 10's multiplier, as rightmost digit x10^0 and leftmost digit, x10^3
    4. Once each digit has been multiplied, add it to a running sum of the number
    5. Once all four digits have been summed, push the value on to the stack
1. Two numbers must be entered, 4 digits each
2. Once two numbers have been entered, the next character must be +, -, *, / or ignored. The characters correspond to arithmetic operations; add, subtract, multiply, and divide. 
3. Call the appropriate subroutine to calculate a result of two numbers on the stack and store in RESULT. (*For now, I'm skipping printing the number out using ASCII, as it adds to the complexity of the problem. Final project, perhaps?)*

## Example Process
### Simple Addition
1000 2000 +
```
1000
2000
+
```
1. It sees a "+", so it calls the PLUS subroutine which pops two numbers on the stack, adds them and stores the result in RESULT. 

### Simple Addition
0025 0015 *
```
0025
0015
*
```
1. It sees a "*", so it calls the MULT subroutine which pops two numbers from the stack, multiplies them then stores the result in RESULT. 

