#include <strings.h>
#include <stdlib.h>
#include <stdio.h>

void 	ft_bzero (void *s, size_t n);
int		ft_isalnum (int c);
int		ft_isalpha (int c);
int		ft_isascii (int c);
int		ft_isdigit (int c);
int		ft_isprint (int c);
int 	ft_puts(const char *s);
char 	*ft_strcat(char *dest, const char *src);
int 	ft_tolower (int c);
int 	ft_toupper (int c);

void	test_ft_bzero(char *av)
{
	char	*str;
	int		n;

	printf("------------\n| FT_BZERO |\n------------\n");
	n = strlen(av);
	printf("str = %s\n", av);
	while (n >= 0)
	{
		str = strdup(av);
		bzero(&str[n], strlen(&str[n]));
		printf("Real: %s | ", str);
		free(str);
		str = strdup(av);
		ft_bzero(&str[n], strlen(&str[n]));
		printf("Mine: %s\n", str);
		free(str);
		n = n / 2 - 1;
	}
}

void	test_ft_is(char *av)
{
	unsigned long n;
	
	printf("------------\n| FT_IS... |\n------------\n");
	n = 0;
	while(n < strlen(av))
	{
		printf("Is %c:\talnum? %d\talpha? %d\tascii? %d\tdigit? %d\tprint? %d\n", av[n], ft_isalnum(av[n]), ft_isalpha(av[n]), ft_isascii(av[n]), ft_isdigit(av[n]), ft_isprint(av[n]));
		n++;
	}
}

void	test_ft_puts(char *av)
{
	printf("------------\n| FT_PUTS |\n------------\n");
	puts(av);
	ft_puts(av);
}

void	test_ft_strcat(char *dest, char *src)
{
	char	*tmp = strdup(dest);

	printf("------------\n| FT_STRCAT |\n------------\n");
	printf("Real: %s\n", strcat(tmp, src));
	free(tmp);
	tmp = strdup(dest);
	printf("Mine: %s\n", strcat(tmp, src));
	free(tmp);
}

void	test_ft_tolower_toupper(char *av)
{
	unsigned long n;
	
	printf("------------\n| FT_TO... |\n------------\n");
	n = 0;
	while(n < strlen(av))
	{
		printf("%c:\tupper: %c\tlower: %c\n", av[n], ft_toupper(av[n]), ft_tolower(av[n]));
		n++;
	}
}

int		main(int ac, char **av)
{
	int n;

	n = 1;
	while (n < ac)
	{
		test_ft_bzero(av[n]);
		test_ft_is(av[n]);
		test_ft_puts(av[n]);
		if (n > 1)
			test_ft_strcat(av[n -1], av[n]);
		test_ft_tolower_toupper(av[n]);
		n++;
	}
	return (0);
}