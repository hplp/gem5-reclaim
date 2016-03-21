#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdlib.h>

int main(void)
{
    struct stat sb[3];
    for (int i = 0; i < 3; i++)
    {
        int err = fstat(i, &sb[i]);
        if (err < 0)
        {
            perror("fstat");
            exit(1);
        }
        else
            printf("fstat %d success!\n", i);
    }
    return 0;
}
