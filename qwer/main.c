#include <stdio.h>


int main() {
	int n, a;
	scanf("%d", &n);
	int b = n;
	int arr[b];

	for (int i = 0; i < n; i++) {
		scanf("%d", &a);
		arr[i] = a;
	}

	int k = arr[0];
	for (int j = 1; j < n; j++) {
		if (arr[j] > k) {
			k = arr[j];
		}
	}

	printf("So lon nhat trong day da nhap: %d", k);
}
