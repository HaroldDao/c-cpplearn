#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

int main() {
    int n;
    cout << "Nhap so luong sv: ";
    cin >> n;
    cin.ignore();
    struct student{
        string mSsv, stName, stGender;
        double diem1, diem2;
        // student() {

        // }
        // student(int mS, string name, string gend, double d1, double d2) {
        //     mSsv = mS;
        //     stName = name;
        //     stGender = gend;
        //     diem1 = d1;
        //     diem2 = d2;
        // }
    };

    student stList[n];
    for (int i = 0; i < n; i++) {
        string ms, nm, gd;
        cout << "Ma so sinh vien " << i + 1<< ": ";
        getline(cin, ms);
        stList[i].mSsv = ms;
        cout << "Ten sinh vien " << i + 1<< ": ";
        getline(cin, nm);
        stList[i].stName = nm;
        cout << "Gioi tinh sinh vien " << i + 1<< ": ";
        getline(cin, gd);
        stList[i].stGender = gd;
        // double s1, s2;
        cout << "Nhap diem 1: ";
        cin >> stList[i].diem1;
        cout << "Nhap diem 2: ";
        cin >> stList[i].diem2;
        cin.ignore();
        cout << "\n";
    };
    cout << "\n";

    cout << "============ Danh sach sinh vien da nhap ============\n";
    cout << left << setw(10) << "MS"
         << setw(30) << "Ho ten"
         << setw(8) << "Gioi tinh"
         << setw(8) << "Diem 1"
         << setw(8) << "Diem 2" << "\n";

    for (int q = 0; q < n; q++) {
        cout << setw(10) << stList[q].mSsv
             << setw(30) << "123456789_123456789_123456789_"
             << setw(8) << stList[q].stGender
             << setw(8) << stList[q].diem1
             << setw(8) << stList[q].diem2;
        cout << "\n";
    }
    cout << "\n";
    cout << "============ Danh sach sinh vien do ============\n";
    cout << left << setw(10) << "MS" << "|"
         << setw(30) << "Ho ten" << "|"
         << setw(20) << "Gioi tinh" << "|"
         << setw(8) << "Diem 1" << "|"
         << setw(8) << "Diem 2";
    cout << "\n";
    for (int q = 0; q < n; q++) {
        if ((stList[q].diem1 + stList[q].diem2)/ 2 >= 5.0) {
            cout << left << setw(10) << stList[q].mSsv << "|"
                 << setw(30) << stList[q].stName << "|"
                 << setw(20) << stList[q].stGender << "|"
                 << setw(8) << stList[q].diem1 << "|"
                 << setw(8) << stList[q].diem2 << "\n"
                 << "-----------------------------------------------------------------------------";
        }
        cout << "\n";
    }

}
