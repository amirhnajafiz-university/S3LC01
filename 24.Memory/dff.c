#include <stdio.h>
#include <stdlib.h>

int levelTrigger (int state, int data, int write) {
  if (write == 1) {
    state = data;
  }
  return state;
}

int main () {
  int (*funPtr)(int, int, int);
  funPtr = &levelTrigger;
  printf("%p", funPtr);
  return 0;
}