
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>


int main() {
    int n = 0;
    double s = 0;
    printf("Nhap n: ");
    scanf("%d", &n);
    if (n != 0) {
        for (int i = 1; i <= n; i++) {
            s = s + 1.0 / (i * i);
			printf_s("%.3lf\n", s);
        }
    }
    printf("S = %.3lf", s);
}