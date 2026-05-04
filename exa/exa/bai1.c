#include <stdio.h>
#include <math.h>

int isPrime(int a) {
	if (a == 0 || a == 1 || a == 2) return 0; 
	else {
		for (int i = 0; i < sqrt(a) + 1; i++) {
			if (a % i == 0) return 0;
		} return a;
	}
	
}


int main() {
	int a;
	scanf("%i", &a);
	printf("%i", isPrime(a));
}