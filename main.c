#include <stdio.h>
#include <string.h>

int main ()
{
   int len;
   const char str1[] = "";
   const char str2[] = "";

   len = strcspno(str1, str2);

   printf("First matched character is at %d\n", len + 1);

   return(0);
}
