#include <iostream>
// #include <string>
using namespace std;

                        // ====== Bai 11 ======
void bai11() {
    int n, k;
    cin >> n;
    int arr[100];
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for (int q = 0; q < n - 1; q++) {
        for (int e = q + 1; e < n; e++) {
            if (arr[q] > arr[e]) {
                k = arr[q];
                arr[q] = arr[e];
                arr[e] = k;
            }
        }
    }

    for (int r = 0; r < n; r++) {
        cout << arr[r] << " ";
    }
}

                        // ====== Bai 12 ======
void bai12() {
    int n;
    int k = 0;
    int count = 1;
    int arr[100];
    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    int chk;
    for (int q = 0; q < n; q++) {
        chk = 1;
        for (int w = 0; w < n; w++) {
            if (q != w && arr[q] == arr[w] && chk >= count) {
                k = arr[q];
                count = chk;
                chk += 1;
                count = chk;
            }
        }
    }
    cout << k;
}

                        // ====== Bai 13 ======
void bai13() {
    int n;
    char k = '96';
    int count = 0;
    char arr[100];
    cin >> n;
    for (int y = 0; y < n; y++) {
        cin >> arr[y];
    }

    int chk;
    for (int q = 0; q < n; q++) {
        chk = 1;
        for (int w = 0; w < n; w++) {
            if ((q != w && (int) arr[q] == (int) arr[w]) && ((int) k < (int) arr[q] || chk >= count )) {
                k = arr[q];
                chk += 1;
                count = chk;
            }
        }
    }

    cout << k /*<< count*/;
}

                        // ====== Bai 14 ======
void bai14() {
    int n;
    cin >> n;
    int arr[100000];
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for (int g = 0; g < n; g++) {
        if(arr[g] % 3 != 0) {
            cout << arr[g] << " ";
        }
    }
    cout << "\n";
    for (int g = 0; g < n; g++) {
        if(arr[g] % 3 != 0 && arr[g] % 5 != 0) {
            cout << arr[g] << " ";
        }
    }
}

                        // ====== Bai 15 ======
void bai15() {
    int n, k;
    cin >> n;
    int arr[100];
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }
    cin >> k;

    for (int q = 0; q <= n - k; q++) {
        int vi = arr[q];
        for(int w = q; w < q + k; w++) {
            if (arr[w] < vi) {
                vi = arr[w];
            }
        }
        cout << vi << " ";
    }
}
                        // ====== Bai 17 ======
void bai17() {
    int n, k;
    cin >> n;
    int arr[100];
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for (int q = 0; q < n - 1; q++) {
        for (int e = q + 1; e < n; e++) {
            if (arr[q] > arr[e]) {
                k = arr[q];
                arr[q] = arr[e];
                arr[e] = k;
            }
        }
    }

    if (n % 2 == 1) {
        cout << arr[n/2];
    } else {
        cout << (float) (arr[n/2 -1] + arr[n/2])/2;
    }
}

                        // ====== Bai 18 ======
void bai18() {
    int n;
    cin >> n;
    int arr[10000];
    for (int q = 0; q < n*n; q++) {
        cin >> arr[q];
    }
    cout << "\n";
    for (int i = 0;  i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << arr[n * i + j] << " ";
        }
        cout << "\n";
    }
}

int main() {
    cout << "Nhap bai (vd: 11 || 12 || ... 20) * Cac bai da giai(11, 12, 13, 14, 15, 17, 18): ";
    int i;
    cin >> i;
    if (i == 11) {
        cout << "Bai 11: \n";
        bai11();
    } else if (i == 12) {
        cout << "Bai 12: \n";
        bai12();
    } else if (i == 13) {
        cout << "Bai 13: \n";
        bai13();
    } else if (i == 14) {
        cout << "Bai 14: \n";
        bai14();
    } else if (i == 15) {
        cout << "Bai 15: \n";
        bai15();
    } else if (i == 17) {
        cout << "Bai 17: \n";
        bai17();
    } else if (i == 18) {
        cout << "Bai 18: \n";
        bai18();
    } else {
        cout << "Khong tim thay!\n";
    }
}

