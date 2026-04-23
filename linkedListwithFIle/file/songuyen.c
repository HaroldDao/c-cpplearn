#include <stdio.h>
#include <stdlib.h>

char fileName1[30] = "songuyen1.txt";
char fileName2[30] = "songuyen2.txt";

int *ReadF(char *fileName, int *sl) {
    FILE *fr = fopen(fileName, "r");
    if (fr == NULL) {
        printf("Khong the mo file: %s\n", fileName);
        *sl = 0;
        return NULL;
    }
    
    int *arr = (int *)malloc(100 * sizeof(int));
    int count = 0;
    
    while (fscanf(fr, "%d", &arr[count]) == 1) {
        printf("%d ", arr[count]);
        count++;
    }
    printf("\n");
    
    fclose(fr);
    *sl = count;
    return arr;
}

// Hàm sắp xếp mảng (giảm dần)
void sort(int *arr, int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = i + 1; j < size; j++) {
            if (arr[j] > arr[i]) {  // Giảm dần
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

int main() {
    int size1 = 0;
    int size2 = 0;
    
    printf("Doc file 1: ");
    int *arr1 = ReadF(fileName1, &size1);
    
    printf("Doc file 2: ");
    int *arr2 = ReadF(fileName2, &size2);
    
    if (size1 == 0 && size2 == 0) {
        printf("Khong co du lieu!\n");
        return 1;
    }
    
    // Gộp mảng
    int totalSize = size1 + size2;
    int *merge = (int *)malloc(totalSize * sizeof(int));  // ✅ Sửa đúng
    
    for (int i = 0; i < size1; i++) {
        merge[i] = arr1[i];
    }
    for (int i = 0; i < size2; i++) {
        merge[size1 + i] = arr2[i];
    }
    
    // Sắp xếp mảng gộp
    sort(merge, totalSize);
    
    // Ghi kết quả vào file
    FILE *wres = fopen("ketqua.txt", "w");
    if (wres == NULL) {
        printf("Loi tao file ketqua.txt\n");
        return 1;
    }
    
    printf("\nKet qua sau khi sap xep: ");
    for (int i = 0; i < totalSize; i++) {
        printf("%d ", merge[i]);
        fprintf(wres, "%d ", merge[i]);
    }
    printf("\n");
    
    fclose(wres);
    
    // Giải phóng bộ nhớ
    free(arr1);
    free(arr2);
    free(merge);
    
    printf("Da ghi ket qua vao file ketqua.txt\n");
    
    return 0;
}