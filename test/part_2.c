#include <strings.h>
#include <stdlib.h>
#include <stdio.h>

void	*ft_memcpy(void *dest, const void *src, size_t n);
void	*ft_memset (void *s, int c, size_t n);
char	*ft_strdup(const char *s);
size_t	ft_strlen(const char *s);

void	test_ft_strlen(char *av)
{
	printf("------------\n| FT_STRLEN |\n------------\n");
	printf("Real: len = %lu\n", strlen(av));
	printf("Mine: len = %lu\n", ft_strlen(av));
}

void	test_ft_memset()
{
	printf("------------\n| FT_MEMSET |\n------------\n");
	int array [] = { 54, 85, 20, 63, 21 };
    size_t size = sizeof( int ) * 5;
    int length;

    for( length=0; length<5; length++) {
        printf( "%d ", array[ length ] );
    }
    printf( "\n" );

    /* Reset the memory bloc */
    ft_memset( array, 0, size );

    /* Display the new values */
    for( length=0; length<5; length++) {
        printf( "%d ", array[ length ] );
    }
    printf( "\n" );
}

void	test_ft_memcpy()
{
	printf("------------\n| FT_MEMCPY |\n------------\n");
	int array [] = { 54, 85, 20, 63, 21 };
    int * copy = NULL;
    int length = sizeof( int ) * 5;
       
    /* Memory allocation and copy */
    copy = (int *) malloc( length );
    ft_memcpy( copy, array, length );
        
    /* Display the copied values */
    for( length=0; length<5; length++ ) {
        printf( "%d ", copy[ length ] );
    }
    printf( "\n" );
        
    free( copy );
}

void	test_ft_strdup(char *av)
{
	char	*tmp = ft_strdup(av);

	printf("------------\n| FT_STRDUP |\n------------\n");
	printf("Real: %s\n", av);
	printf("Mine: %s\n", tmp);
	free(tmp);
}

int		main(int ac, char **av)
{
	if (ac == 2)
	{
		test_ft_strlen(av[1]);
		test_ft_memset();
		test_ft_memcpy();
		test_ft_strdup(av[1]);
	}
	return (0);
}