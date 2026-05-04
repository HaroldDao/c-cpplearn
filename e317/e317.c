#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main() {
	int arr[9] = { 1, 4, 5, 3, 6, 7, 9, 6, 4 };
	int k = 0;
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			printf("%d ", arr[k + j]);
		}
		k += 3;
		printf("\n");
	}
}