#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int power(int base,unsigned int ep) {
  int i,res=1;
  for(i=0;i<ep;i++) res*=base;
  return res;
}

int main() {


  return 0;
}

