#include <stdio.h>

int main() {
	int n;
	printf("Nhap n: ");
	scanf_s("%d", &n);
	int arrInp[n];

	for (int i = 0; i < n; i++) {
		scanf_s("%d", &arrInp[i]);
	}

	for (int j = 0; j < n; j++) {
		printf("\narrInp[%d]: %d", j, arrInp[j]);
	}

}