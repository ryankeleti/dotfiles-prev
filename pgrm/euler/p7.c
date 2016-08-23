#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

int power(int b,unsigned int e) {
  int i,res=1;for(i=0;i<e;i++) res*=b;return res;
}

int main() {

  long int n = 10001;

  for (int i=3;i<=sqrt(n);i+=2) {
    while (n%i==0) {
      printf("%d\n",i);
      n/=i;
    }
  }

  return 0;

}

