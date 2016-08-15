#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

int main() {

  system("clear");

  bool found = false;
  for (int i=1;i<21;i++) {
    for (int n=1;n<1000000;n++)  {

      if (n%i==0) {
        printf("%d\n",n);
        found = true;
        break;
      }
      else continue;
    }
  if (found) break;
  }

}

