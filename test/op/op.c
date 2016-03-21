#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
    int a = atoi(argv[1]);
    char op = argv[2][0];
    int b = atoi(argv[3]);
    int r = 0;

    switch (op)
    {
    case '+':
        r = a + b;
        break;
    case '-':
        r = a - b;
        break;
    case '*':
        r = a*b;
        break;
    case '/':
        r = a/b;
        break;
    default:
        printf("Unknown operation %s\n", op);
        return 1;
    }
    printf("%d %c %d = %d\n", a, op, b, r);
    return 0;
}
