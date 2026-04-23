#include <iostream>
#include <string>
using namespace std;

struct salary{
    string name;
    int old;
    double hsL;
    double perSala() {
        int Lcb = 3000000;
        double sal;
        return sal = Lcb * hsL;
        // cout << "Tien luong trung binh cua " << n << " nhan vien la: " << sal;
    }
};

int main() {
    int n;
    cout << "how many staffs?: ";
    cin >> n;
    cin.ignore();
    salary slist[n];
    for (int i = 0; i < n; i++) {
        cout << "Nhap thong tin nhan vien " << i + 1 << "\n";
        cout << "Nhap ten: " ;
        getline(cin, slist[i].name);
        cout << "Nhap tuoi: ";
        cin >> slist[i].old;
        cout << "Nhap hsL: ";
        cin >> slist[i].hsL;
        cin.ignore();
    }

    double k = 0;
    for (int q = 0; q < n; q++) {
        k += slist[q].perSala();
    }
    // cout << "Tong tien luong trung binh cua " << n << " nhan vien: " << k/n;
    printf("Tien luong trung binh cua %d nhan vien la: %d", n, k/n);
}
