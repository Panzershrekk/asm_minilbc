extern int strncmpo(char *, char *, int);

#include <stdlib.h>
#include <stdio.h>

int main()
{
  int i;
  i = strncmpo("test", "qqq", 2);
  printf("%i\n", i);
}
