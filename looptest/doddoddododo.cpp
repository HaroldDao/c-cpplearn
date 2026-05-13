#include <iostream>

using namespace std;

int main() {
    int i = 1;
    do {
        if (i % 2 == 0) {
            cout << "Hello " << i << "\n";
        }
        i += 1;
    } while (i > 10);
}