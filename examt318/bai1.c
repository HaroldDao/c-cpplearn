#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdbool.h>

int main() {
    int n;
    int arr[101];

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    for (int j = 0; j < n; j++) {
        printf("%d ", arr[j]);
    }
    printf("\n");



    printf("Tan suat: ");

    bool first = true; 

    for (int i = 0; i < n; i++) {

        bool chk = false;
        for (int j = 0; j < i; j++) {
            if (arr[i] == arr[j]) {
                chk = true;
                break;
            }
        }


        if (!chk) {
            int count = 0;
            for (int k = 0; k < n; k++) {
                if (arr[i] == arr[k]) {
                    count = count + 1;
                }
            }


            if (!first) printf(", ");
            printf("%d - %d", arr[i], count);
            first = false;
        }
    }
}