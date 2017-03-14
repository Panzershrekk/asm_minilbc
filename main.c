extern int strcmpo(char *, char *);

#include <stdlib.h>
#include <stdio.h>

int main()
{
  int i;
  i = strcmpo("test", "test");
  printf("%i\n", i);
  if (i == 0)
    printf("%s\n", "");
  //printf("%i\n", strcmpo("test", "test"));
  /*if (strcmpo("test", "test") == 0)
    printf("%s\n", "ALAUKBAR");
  //printf("%i\n", strleno("lol"));*/
}
