#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

// slowprintf, refresh {{{
void slowprintf(char *str) {
  int i = 0;                                                      
  while (str[i] != '\0') {
    putchar(str[i]);
    i++;
    fflush(stdout);
    usleep(10000);
  }
}

void refresh(void) {
  system("clear && printf '\033[3J'");
}
// }}}
// progressbar {{{
void progressbar(void) {
#define W 50
#define M 50000

long p;
float progress = 0.0;
int ch = 0; int x = 0; int lch = 0;

  fprintf(stdout, ":: %3d%% [",(int)progress*2);
  for (x = 0; x < ch; x++) {
    fprintf(stdout, "#");
  }
  for (x = ch; x < W; x++) {
    fprintf(stdout, "-");
  } 
  fprintf(stdout, "]");
  for (p = 1; p < M+1; p++) {
    progress = p*50.0/M;
    ch = (int)progress;
fprintf(stdout, "\n\033[F");
    fprintf(stdout, ":: %3d%%",(int)progress*2);
    fprintf(stdout, "\033[1C");
    fprintf(stdout, "\033[%dC#",lch);
    for (x = lch; x < ch; x++) {
      fprintf(stdout, "#");
    }
    if (x < W) {
      fprintf(stdout, "#");
    }
    lch = ch;
  }
  fprintf(stdout, "\033[E:: done\n");
}
// }}}

void prompt(void) {
  char in[80];
  char wd[80] = "/";

  while (1) {
    fprintf(stdout,"[root@core1 /]# ");
    scanf("%s",in);
    //printf("%s\n",in);

    while (1) {
      if ((strcmp(in,"ls")==0)&&(strcmp(wd,"/")==0)) {
        //printf("bin  boot  dev  etc  home  lib  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var\n\n");
        system("ls core/");
        break;                       
      }      
      else break;
    } 
    void cd(void) {
      while (1) {
        if (((strcmp(in,"cd")==0)||(strcmp(in,"cd /")==0))&&(strcmp(wd,"/")==0)) {
          printf("cd /\n\n");
          break;                       
        }      
        if ((strcmp(in,"cd")==0)&&(strcmp(wd,"/")!=0)) {
          printf("cd /\n\n");
          wd[80] = "/";
          break;                       
        } 
        else break;
      }
    }
  }
  //Segmentation fault (core dumped)
}

int main () {
// {{{
char c;
refresh();
printf(":: ");
slowprintf("Boot [Y/n] ");
scanf("%c",&c);

  while (c != '\0') {
    if (c == 'y') break;
    else return 0;
  }
                                               
  int f;
  FILE *file = fopen("coreboot.txt", "r");
  if (file) {
    while ((f = fgetc(file)) != EOF) {
    putchar(f);
 fflush(stdout);
    usleep(40);
    }
    fclose(file);
  }

sleep(2);
  printf(":: ");
  slowprintf("Loading initial ramdisk ...\n");
  progressbar();
sleep(1);
  printf(":: ");
  slowprintf("Security framework up\n");
  printf(":: ");
  slowprintf("Scanning for low memory corruption\n");
sleep(1);
  progressbar();
  printf(":: ");
  slowprintf("Initialize system trusted keyring\n");
sleep(1);
  progressbar();
  printf(":: ");
  slowprintf("ACPI: bus type PCI registered\n");
  printf(":: ");
  slowprintf("SCSI subsystem initialized\n");
  printf(":: ");
  slowprintf("Disabling non-boot CPUs ... done\n");
  printf(":: ");
  slowprintf("CPU1 is up\n");
  printf(":: ");
  slowprintf("Enabling non-boot CPUs ... done\n");
sleep(1);
  printf(":: ");
  slowprintf("PM: Syncing filesystems ...\n");
sleep(1);
  progressbar();
  printf(":: ");
  slowprintf("PM: Finishing wakeup ... done\n");
  printf(":: ");
  slowprintf("Restarting tasks ...\n");
  progressbar();
sleep(1);
  printf(":: ");
  slowprintf("Initializing system processes ...\n");
sleep(1);
  progressbar();
sleep(1);
  printf(":: ");
  slowprintf("Boot complete\n\n");
sleep(2);
  // }}}
refresh();
printf("Last login: Thu Oct 16 15:17:01 UTC 2067 on tty1\n");
prompt();

  
}

