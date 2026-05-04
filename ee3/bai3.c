#include <stdio.h>

int isPrime(int a) {
	if (a == 0 || a == 1) return 0;
	else {
		for (int i = 2; i * i <= a; i++) {
			if (a % i == 0) return 0;
		} return 1;
	}
}

int main() {
	int n;
	printf("Nhap so n: ");
	scanf("%i", &n);
	printf("Cac so nguyen to trong pham vi %i: ", n);
	for (int i = 0; i < n + 1; i++) {
		if (isPrime(i) == 1) {
			printf("%i ", i);
		}
	}
}