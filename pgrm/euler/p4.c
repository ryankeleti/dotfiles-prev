#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int power(int base,unsigned int ep) {
  int i, res=1;
  for(i=0;i<ep;i++) res*=base;
  return res;
}

int main() {
  int n,even,odd;

  system("clear");
  printf("prints the largest palendromic number from the product of 2 same-digit numbers.\n");
  printf("input digit size:\t");
  scanf("%d",&n);

  while (n!=0&&n!='\0') {
    if (n%2==0) {
      n = n/2;
      even = ; 
    }
    else {
      n = (n-1)/2;
      odd = ;
    }

  }


  return 0;
}

