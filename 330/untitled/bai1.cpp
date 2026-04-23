#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

int main() {
    int n, k;
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
        if (arr[i] % 2 != 0) {
            k = arr[i];
        }
    }
    cout << k;
}
