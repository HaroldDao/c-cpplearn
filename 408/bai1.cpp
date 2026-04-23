#include <iostream>
using namespace std;
int main() {
    int n, k = 1, s = 0;
    cout << "Nhap n: ";
    cin >> n;
    for(int i = 1; i <= n; i++) {
        k = k * i;
        s = s + k;
    }
    cout << "S(" << n << ") = " << s;
}
