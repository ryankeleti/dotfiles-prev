#include<stdio.h>

/*  prints F° and C° tables */

int main() {

  int fahr,celsius,lower,upper,step;

  lower = 0;    //  lower limit of table
  upper = 300;  //  upper limit
  step = 20;    //  step size

  fahr = lower;
  while (fahr <= upper) {
    celsius = 5 * (fahr-32) / 9;
    printf("%3d %6d\n",fahr,celsius);
    fahr = fahr + step;
  }
}

