# Week 8 Assignment

## Pointers Example
Using the code/pointers_example, change the code sufficiently such that:
1. You print a different set of text other than months
2. The length of text, must be different than 5
3. **Once the code successfully runs, provide both the code in pointers_example_v2.asm and a screenshot showing a successful run.**

## Advanced Array
Similar to the exercise above, use the code/adv_array, change the code sufficiently such that:
1. You print a different set of text other than Latin 0-9
2. The length of text (SIZEOF), must be different than 10
3. **Once the code successfully runs, provide both the code in adv_array_v2.asm and a screenshot showing a successful run.**

## Stack Example
In the code/stack_example, please do the following:
In lines 14, 17, 21, the comments read; *;  ...code that places a value into R0 which you want to reuse*
Replace the lines with actual code which performs an operation using R0. Think about TRAP codes which use R0 or something else.
**Once the code successfully runs, provide both the code in stack_example_v2.asm and a screenshot showing a successful run.**

## SMC

In this exercise, you will write a more detailed **algorithm** using **subroutines** and the **stack**, to execute the algorithm provided in class and below:

### Begin to Develop Algorithm for SMC

1. Ask for four numbers
2. Convert to decimal value
3. Ask for four numbers
4. Convert to decimal value
5. Ask for operation
6. Perform operation
7. Output ASCII Equiv

In other words, you will end up with a numbered list which not only exceeds the 7 steps above, it provides names of subroutines which you have already written (or will write) and it will indicate how you will use the stack to pass values.