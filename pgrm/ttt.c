#include <stdio.h>
#include <string.h>

#define X 'X'
#define O 'O'
                                                                                    
void pBoard(char board[3][3]) {
  printf("\n\n       1       2       3     \n");
  printf("           |       |         \n");
  printf("  A    %c   |   %c   |   %c     \n",board[0][0],board[0][1],board[0][2]);
  printf("           |       |         \n");
  printf("    -------+-------+-------  \n");
  printf("           |       |         \n");
  printf("  B    %c   |   %c   |   %c     \n",board[1][0],board[1][1],board[1][2]);
  printf("           |       |         \n");
  printf("    -------+-------+-------  \n");
  printf("           |       |         \n");
  printf("  C    %c   |  %c    |   %c     \n",board[2][0],board[2][1],board[2][2]);
  printf("           |       |         \n\n");
}

void refresh(void) {

void pwin(void) {
  if () ;
  if () ;
  if () ;
  if () ;
  if () ;
  if () ;
  if () ;
  if () ;

}

int main(int argc, char *argv[]) {

  char p,c,n;
  char board[3][3] = {{' ',' ',' '},{' ',' ',' '},{' ',' ',' '}};
  char input[80];
  char player;
  int pnum;

  printf("Start?: ");
  scanf(" %c",&c);

  while(c != '\0') {

    if (c == 'y') {
      printf("\n");
      break;
    }
    else {
      return 0;
    }
  }

  while (1) {

  printf("Player 1, X || O ?: ");
  scanf(" %c",&n);

    if (n == 'x' || n == 'X') {
      p = X;
      printf("P1 = X; P2 = O;\n\n");
      break;
    }
   if (n == 'o' || n == 'O') {
      p = O;
      printf("P1 = O; p2 = X\n\n");
      break;
    }
    else {
      printf("Error: Invalid option.\n");
    }
  }

  printf("To mark a location, use the coordinate system provided (letter,number)\ni.e. 'a1' w/out the quotes.\n\n");

  if (p == X) player = X;
  else player = O;
  pnum = 2;
  if (pnum == 2) pnum = 1;
  else pnum = 2;

  while (1) {

  printf("P%d (%c): ",pnum,player);
  scanf(" %s",input);

    if (input[0]>='a' && input[0]<='c' && input[1]>='1' && input[1]<='3' && input == ' ') { 
      board[input[0]-'a'][input[1]-'1'] = player;
        
      pBoard(board);

      if (player == X) player = O;
      else player = X;
      if (pnum == 1) pnum = 2;
      else pnum = 1;
    }
  }
           

