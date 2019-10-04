#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *ft_strchr(const char *s, int c);

int main() {

    const char * source = "The C Language";
    char * destination;
    char * pointer;
    int length = strlen( source );
    
    /* We clone the inital string */
    destination = (char *) malloc( sizeof( char) * (length+1) );
    strcpy( destination, source );
        
    /* We replace all 'a' characters */
    while (pointer = ft_strchr( destination, 'a' ) ) {
        *pointer = 'A';
    }
    
    /* Display result : The C LAnguAge */
    printf( "Result : %s\n", destination );
        
    /* Release dynamicly allocated memory */
    free( destination );
    
    return 0;
}