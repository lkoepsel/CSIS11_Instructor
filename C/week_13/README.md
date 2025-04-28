# Understanding Storage with C and LC-3 Assembly

## Function Argument Storage

Similar to the example provided in class as how local and global storage is handled by R4 and R6, function storage is typically handled by the stack. When a parameter is passes, the offsets are determined by the function based on the order and type of the arguments being passes.

For example, if a function has three arguments in order to calculate volume, and if the function is declared to be:
```int volume(int length, int width, int height)```
The stack will be set up as follows:
| variable | offset |
| -------- | ------ |
| length | 0 |
| width | 1 |
| height | 2 |

## Problem

Solve the volume calculation in two ways:
* *C Language* - use a function to calculate the volume and print the result from the main routine
* *LC-3* - convert the program to LC-3 Assembly, using the stack to pass both the arguments and the result. Remember the best practices of using the stack require checking for overflow and underflow after every stack operation (Pop/Push) The LC-3 version **does NOT need to print the result to the console**. Save the result from the function to a memory location called RESULT.

Use the example from the class lecture as a guide to how to setup and document the LC-3 Assembly code.

## Stack code
The LC-3 stack code is in the code folder for this week.