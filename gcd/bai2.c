#include <stdio.h>

int gcd(a, b) {
	int k, gcdTemp;
	if (a < b) {
		k = a;
	} else {
		k = b;
	}
	for (int i = 1; i < k + 1; i++) {
		if (a % i == 0 && b % i == 0) {
			gcdTemp = i;
		}
	}
	return gcdTemp;
}

int main() {
	int a, b, c, d;
	printf("Nhap 4 so can tim gcd: ")
	scanf("%i%i%i%i", &a, &b, &c, &d);
	printf("gcd(%i, %i, %i, %i) = %i", a, b, c, d, gcd(gcd(gcd(a, b), c) , d));
}