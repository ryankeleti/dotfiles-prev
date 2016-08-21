#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

int main() {

  system("clear");
  int i,n,mod;

  bool found = false;
  for (i=1;i<21;i+=2) {

  }
  for (n=1;n<100000;n++)  mod = n%i;
  while (mod!=0) {
  if (mod==0) {
        printf("%d\t",n);
        found = true;
        break;
  }
  }
  if (found==true) return 0;

}

