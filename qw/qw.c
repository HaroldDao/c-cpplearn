#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>


int main() {
	int n, a;
	scanf("%d", &n);
	int arr[101];

	for (int i = 0; i < n; i++) {
		scanf("%d", &a);
		arr[i] = a;
	}

	int k = 0;
	for (int q = 0; q < n -1; q++) {
		for (int w = q + 1; w < n; w++) {
			if (arr[q] > arr[w]) {
				k += 1;
			}
		}
	}


	printf("\n");
	printf("so cap thoa man q < w && arrq > arrw: %d", k);
}