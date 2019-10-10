#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

void ft_cat(int fd);

int		main(int ac, char **av)
{
	int fd;

	if (ac == 2)
	{
		fd = open(av[1], O_RDONLY);
		if (fd > 0)
		{
			ft_cat(fd);
			close(fd);
		}
	}
	else if (ac == 1)
	{
		fd = 1;
		if (fd > 0)
		{
			ft_cat(fd);
			close(fd);
		}
	}
	return (0);
}