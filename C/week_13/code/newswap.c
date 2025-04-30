// using pointers in functions

#include <stdio.h>

void Swap(int firstVal, int secondVal)
{
  int tempVal = firstVal;
  firstVal = secondVal;
  secondVal = tempVal;
}

void ptrSwap(int *firstVal, int *secondVal)
{
  int tempVal = *firstVal;
  *firstVal = *secondVal;
  *secondVal = tempVal;
}

void main()
{
    int a = 100;
    int b = 5000;
    printf("Before: %d %d\n", a, b);
    Swap(a, b);
    printf("After: %d %d\n", a, b);

    printf("Before: %d %d\n", a, b);
    ptrSwap(&a, &b);
    printf("After: %d %d\n", a, b);
}
