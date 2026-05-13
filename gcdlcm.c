#include <stdio.h>

int gcd(int a, int b) {
    while (b != 0) {
        int temp = a % b;
        a = b;
        b = temp;
    }
    return a;
}

int lcm (int a, int b) {
    if (a == 0 || b == 0) {
        printf("Error\n");
        return -1;
    }
    return (a * b) / gcd(a, b);
}

int main() {
    int x, y;
    scanf("%d%d", &x, &y);
    printf("gcd %d | lcm: %d", gcd(x, y), lcm(x, y));
}