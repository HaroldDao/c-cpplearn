#include <stdio.h>

int main() {
    int q = 1;
    int mid = 7;
    for (int i = 1; i < 7; i++) {
        for (int j = 1; j < 12; j++) {
            if (j == mid -i || j == mid + i) {
                printf(" ");
            } else {
                printf("*");
            }
        }
        mid = mid - i;
        q++;
        printf("\n");
    }
}
