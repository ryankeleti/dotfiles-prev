#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

int main() {

char input[80];

while (1) {

  printf(" ");
  scanf("%s ",input);

  if ((strcmp(input,"sudo !!")== 0 ) || (strcmp(input,"sudo make me a sandwich")==0)) {
    return 0;
    break;
  }
  else continue;

}

printf("OK.\n\n");  

sleep(1);

int txt;
FILE *file = fopen("~/dotfiles/pgrm/sandwich.txt","r");
if (file) {
  while ((txt = fgetc(file)) != EOF) {
      putchar(txt);
      fflush(stdout);
      usleep(100);
      }
      fclose(file);
      }

}

