#include <iostream>
using namespace std;
int main() {
    int arr[12] = {1,2,3, 4,5,6,7,8,9,1,2,3};
    int m = 3;
    int n = 4;
    for(int i = 0; i < m; i++) {
        for(int j = 0; j < n; j++) {
            cout << arr[n * i + j] << " "; // lay so hang (m) nhan so hang hien tai (i = 0, 1,... m) + so cot hien tai (j = 0, 1,... n)
        }
        cout << "\n";
    }
}
