#include <strings.h>
#include <stdlib.h>
#include <stdio.h>

int 	ft_islower(int c);
int 	ft_isupper(int c);
int		ft_atoi(const char *nptr);
char 	*ft_strchr(const char *s, int c);
int 	ft_strcmp(const char *s1, const char *s2);

void	test_ft_is(char *av)
{
	unsigned long n;
	
	printf("------------\n| FT_IS... |\n------------\n");
	n = 0;
	while(n < strlen(av))
	{
		printf("Is %c:\tupper? %d\tlower? %d\n", av[n], ft_isupper(av[n]), ft_islower(av[n]));
		n++;
	}
}

void	test_ft_atoi(char *av)
{
	printf("------------\n| FT_ATOI |\n------------\n");
	printf("%d\n", ft_atoi(av));
}

void	test_ft_str(char *s1, char *s2)
{
	if (s2 && strlen(s2) > 0)
	{
		printf("------------\n| FT_STRCHR |\n------------\n");
		printf("%s\n", strchr(s1, s2[0]));
	}
	printf("------------\n| FT_STRCMP |\n------------\n");
	printf("%d\n", ft_strcmp(s1, s2));
}

int		main(int ac, char **av)
{
	int n;

	n = 1;
	while (n < ac)
	{
		test_ft_is(av[n]);
		test_ft_atoi(av[n]);
		if (n > 1)
			test_ft_str(av[n - 1], av[n]);
		n++;
		printf("\n");
	}
	return (0);
}