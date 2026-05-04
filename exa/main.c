#include <stdio.h>

int main() {
	int n;
	printf("Nhap n: ");
	scanf_s("%d", &n);
	int arrInp[n];

	for (int i = 0; i < n; i++) {
		scanf_s("%d", &arrInp[i]);
	}

    int temp;
    for (int q = 0; q < n - 1; q++) {
        for (int w = q + 1; w < n; w++) {
            if (arrInp[q] > arrInp[w]) {
                temp = arrInp[q];
                arrInp[q] = arrInp[w];
                arrInp[w]= temp;
            }
        }

    }

	for (int j = 0; j < n; j++) {
		printf("\narrInp[%d]: %d", j, arrInp[j]);
	}

}
