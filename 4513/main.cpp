#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct student;

struct lophoc {
    string monhoc;
    int amountofClass = 0;
    student *sv;
    // lophoc() {
    //     amountofClass = 0;
    // }
};

struct student {
    string name;
    lophoc *subjects;
    int amountofStudent;
    // student() {
    //     amountofStudent = 0;
    // }
};



int main() {
    student *sinhvien[50];
    lophoc *mon[10];
    int soSv, soLh;
    cout << "so sinh vien: ";
    cin >> soSv;
    cout << "so lop hoc: ";
    cin >> soLh;
    cin.ignore();
    cout << "Tao lop hoc\n";
    for (int i = 0; i < soLh; i++) {
        mon[i] = new lophoc;
        cout << "Mon " << i + 1 << ": ";
        getline(cin, mon[i]->monhoc);
        cout << "\n";
    }
    cout << "Danh sach sinh vien\n";
    for (int q = 0; q < soSv; q++) {
        sinhvien[q] = new student;
        cout << "Sinh vien " << q + 1 << ": ";
        getline(cin, sinhvien[q]->name);
        cout << "\n";
    }

    for (int w = 0; w < soSv; w++) {
        int k;
        cout << "Moi sinh vien " << sinhvien[w]->name << " dang ki mon hoc!\n";
        for (int m = 0; m < soLh; m++) {
            cout << m + 1 << ". " << mon[m]->monhoc << "\n";
        }
        cin >> k;

        if (k > 0 && k <= soLh) {
            if (mon[k - 1]->amountofClass < 2) {
                mon[k - 1]->amountofClass++;
                sinhvien[w]->subjects = mon[k - 1];
                cout << sinhvien[w]->name << " Da dang ky thanh cong mon " << mon[k - 1]->monhoc << "!\n";
            } else {
                cout << "Lop hoc da day!\n";
            }
        } else {
            sinhvien[w]->subjects = nullptr;
            cout << "Mon hoc hop khong ton tai!\n";
        }
    }

    cout << "Danh sach dang ky mon hoc\n";
    cout << left
         << setw(30) << "Ho ten"
         << setw(5) << "| Mon hoc\n";
    for (int i = 0; i < soSv; i++) {
        cout << "------------------------------|--------\n";
        cout << left
             << setw(30) << sinhvien[i]->name
             << "| "
             << setw(5) << (sinhvien[i]->subjects != nullptr ? sinhvien[i]->subjects->monhoc : "Chua dang ky")
             << "\n";
    }
}
