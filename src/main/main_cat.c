#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void ft_cat(int fd);

int main(int ac, char **av)
{
    int n;
    int fd;

    n = 1;
    while (n < ac)
    {
        fd = open(av[n], O_RDONLY);
        ft_cat(fd);
        n++;
    }
    if (ac < 2)
        ft_cat(0);
    return (0);
}