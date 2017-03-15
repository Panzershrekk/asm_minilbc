extern int strncmpo(char *, char *, int);

#include <stdlib.h>
#include <stdio.h>

int main()
{
  int i;
  i = strncmpo("test", "tegst", 2);
  printf("%i\n", i);
}
