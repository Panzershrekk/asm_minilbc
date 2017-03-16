#include <stdio.h>
#include <string.h>

extern char *strchro(const char *, char);
extern int strncmpo(char *, char *, int );

int main ()
{
   /*const char str[] = "http://www.tutorialspoint.com";
   const char ch = 'z';
   char *ret;

   ret = strchr(str, ch);

   printf("String after |%c| is - |%s|\n", ch, ret);*/
   printf("%i\n", strncmp("toi", "toto", 3));
   return(0);
}
