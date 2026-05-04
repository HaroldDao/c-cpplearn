#include <stdio.h>

int giaiThua(int a) {
	if (a == 0 || a == 1) {
		return 1;
	} return a * giaiThua(a - 1);
}

int main() {
	int k, n;
	printf("Nhap k va n: ");
	scanf_s("%d %d", &k, &n);
	printf("To hop chap %d cua %d la: %d",k, n, (giaiThua(n)/(giaiThua(k)*giaiThua(n-k))));
}