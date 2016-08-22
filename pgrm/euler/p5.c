#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

int main() {

  system("clear");
  int i,j,n;

  printf("range:  ");
  scanf("%d ",&j);

  bool found = false;

  for (n=1;n<j;n++) { 

    for (i=1;i<21;i++) { 
      if (n%i==0) {
        printf("%d ",n);
        found = true;
    }
    }
  }
  if (found==true) return 0;

}

