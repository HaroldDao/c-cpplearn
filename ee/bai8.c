#include <stdio.h>

int gcd(int p, int q) {
	while (q != 0) {
		int k = p % q;
		p = q;
		q = k;
	} return p;
}

int main() {
	int a, b, c;
	printf("Nhap a, b va c: ");
	scanf_s("%d%d%d", &a, &b, &c);
	printf("UCLN(UCLN(%d,%d),%d) = %d", a, b, c, gcd(gcd(a, b), c));
}