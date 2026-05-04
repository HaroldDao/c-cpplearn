#include <stdio.h>

int main() {
	int n;
	scanf_s("%d", &n);
	int i = 10;
	do {
		printf("%d \n", i);
		i++;
	} while (i < n);
}