#include <stdio.h>

int gcdOf(a, b) {
	int k;
	if (a < b) {
		k = a;
	} else {
		k = b;
	}
	int gcdTemp;
	for (int i = 0; i < k; i++) { 
		if (a % i == 0 && b % i == 0) {
			gcdTemp = i;
		}
	}
}


int main() {
	int a, b;
	scanf_s("%i%i", &a, &b);
	printf("gcdOf %i%i%i:", a, b, gcdOf(a, b));
}