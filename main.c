#include <stdio.h>
#include <string.h>

extern char *rindexo(const char *, char);
extern int strncmpo(char *, char *, int );

int main ()
{
   const char str[] = "http://www.tutorialspoint.com";
   const char ch = '\0';
   char *ret;

   ret = rindexo(str, ch);

   printf("String after |%c| is - |%s|\n", ch, ret);
   //printf("%i\n", rindex("toi", "toto", 3));
   return(0);
}
