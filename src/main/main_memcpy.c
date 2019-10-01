#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void    *ft_memcpy(void *dest, const void *src, size_t n);

int main() {

    int array [] = { 54, 85, 20, 63, 21 };
    int * copy = NULL;
    int length = sizeof( int ) * 5;
       
    /* Memory allocation and copy */
    copy = (int *) malloc( length );
    ft_memcpy( NULL, array, length );
        
    /* Display the copied values */
    for( length=0; length<5; length++ ) {
        printf( "%d ", copy[ length ] );
    }
    printf( "\n" );
        
    free( copy );
    
    return 0;
}