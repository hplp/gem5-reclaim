#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	double a = atof(argv[1]);
	char op = argv[2][0];
	double b = atof(argv[3]);
	double r;

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
		printf("Unknown operation %c\n", op);
		return 1;
	}

	printf("%f %c %f = %f\n", a, op, b, r);

	return 0;
}
