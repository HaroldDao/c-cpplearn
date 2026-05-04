#include <stdio.h>

int sum(int a) {
	if (a == 0) {
		return 0;
	}
	//printf("%d_", a); 
	int s = a + sum(a - 1); 
	//rintf("\n%d", s); 
	return s;
}

int main() {
	int n;
	printf("Nhap n: ");
	scanf_s("%d", &n);
	printf("Tong tu 1 den %d la: %d", n, sum(n));
}