# Week 6 - Beginning LC-3 Assembly
## Instructions

1. **Copy and paste both this README and the code folder into week_6 in your CSIS11_Student folder.**
2. Follow the assignment by writing code or pasting images from the simulator into **your README file**.
3. If the assignment asks for a program file, place the file in the *code* folder with the assigned name

## 6a - Learn how to use the tools

### Objectives
1. Learn how to integrate git and Github into your homework
2. Learn how to edit simple LC-3 assembly programs
3. Learn how to use the LC-3 simulator

### Assignments

#### 1. shift_left_match.asm

1. Open the file in the *code* folder
1. Make changes such that VALUE is xB0B0 and MATCH is x1600
2. Run in the simulator and provide a screenshot showing the result when the program has **successfully** finished. 
![](../../changethistoimagename.png)

#### 2. shift_left_n.asm

1. Open the file in the *code* folder
2. Make changes such that the COUNT is #10 (decimal 10)
3. **Save the code**
#### A. What are the numbers shown in the console?

#### B. What is the **first** character and why isn't it decimal 10?



#### 3. addnums.asm
1. Open the file in the *code* folder
2. Change the file such that the **final sum is x0085 (the original sum is 55)**
2. Run in the simulator and provide a screenshot showing the result when the program has finished. 
![](../../changethistoimagename.png)

#### 4. addnums.asm -> subnums.asm
1. Open the file in the *code* folder
2. Change the file such that the values are **subtracted**, instead of added
3. **Save the code with the new name**
 
## 6b - Explore how to use data

### Objectives
1. Learn how to specify data in assembly
2. Learn how to use data in coding
3. Learn the limits of data locations

### Assignments

For each exercise, please do the following:
- Write complete, working LC-3 assembly code
- Include comments explaining your approach
- Test your code in the LC-3 simulator

#### 6. count.asm
1. Create the file
2. Create a variable named ```COUNT``` with initial value 5
3. Increment it by 1
4. Store the result back in ```COUNT```
3. **Save the code**


#### 7. case.asm
1. Create the file
2. Determine if these labels refer to the same variable:
   ```assembly
   TOTAL   .FILL   #10
   total   .FILL   #20
   Total   .FILL   #30
   ```
3. **Save the code**

#### A. Explain your answer.

#### 8. pointer.asm
1. Create the file
2. Create a pointer variable ```PTR``` that points to a value
3. Use LDI to load the value it points to into R1
4. Use STI to store a new value through the pointer
5. **Save the code**

## Simple Math Calculator

### Part 1 - Add and Subtract

1. Create a new folder in *CSIS11_Student/assembly/week_6* called *SMC*.
2. Create a file called add_sub.asm
3. Write the code which will *add* and *subtract* 2 numbers. Be sure to label your variables so they are easy to reference.
4. Use a ASCII "+" to determine if you *add* and an ASCII "-", for subtraction, think of it from a "conditional" perspective.
5. **Save the code**
