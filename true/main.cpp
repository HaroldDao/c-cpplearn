#include <iostream>

using namespace std;

int giaiThua(int a) {
    if (a == 0) return 0;
    else if (a == 1) return 1;
    int result = a * giaiThua( (a - 1));
    return result;
}

int main() {
    cout << giaiThua(4);
}
