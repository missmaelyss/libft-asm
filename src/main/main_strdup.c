#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void    *ft_strdup(const char *s);

int main()
{
    char *p1 = "Raja";
    char *p2;
    p2 = ft_strdup(p1);
 
    printf("Duplicated string is : %s", p2);
    return 0;
}