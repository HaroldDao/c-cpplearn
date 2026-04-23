#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct NhanVien {
    string fullName, position;
    int stcode, years;
    double sala;
    NhanVien (int code, string nm, string cv, int yz, double hsl) {
        fullName = nm;
        position = cv;
        stcode = code;
        years = yz;
        sala = hsl;
    }
    NhanVien *next;
};

struct StaffList {
    const int w1 = 7;
    NhanVien *first = NULL;
    int tongNv = 0;
    void append(NhanVien *nv) {
        nv->next = NULL;
        if (first == NULL) {
            first = nv;
            tongNv++;
            return;
        }
        NhanVien *curr = first;
        while (curr->next != NULL) {
            curr = curr->next;
        }
        tongNv++;
        curr->next = nv;
    }

    void y3() {
        if (first != NULL) {
            cout << left
                 << setw(w1) << "Ma NV"
                 << setw(31) << "Ten NV"
                 << setw(21) << "Chuc vu"
                 << setw(w1) << "So nam"
                 << setw(w1) <<"He so" << "\n";
            NhanVien *curr = first;
            while (curr != NULL) {
                if (curr->years >=3) {
                    cout << left
                         << setw(w1) << curr->stcode
                         << setw(31) << curr->fullName
                         << setw(21) << curr->position
                         << setw(w1) << curr->years
                         << setw(w1) << curr->sala;
                }
                curr = curr->next;
            }
        } else cout << "Nothing...!\n";
    }

    void sortByHSL() {
        if (tongNv < 2) {
            cout << "Nothing to sort!\n";
            return;
        }
        for (NhanVien *i = first; i->next != NULL; i = i->next) {
            for (NhanVien *j = i->next; j != NULL; j = j->next) {
                if (i->years > j->years) {
                    string nametmp = i->fullName;
                    int yeartmp = i->years;
                    double hsltmp = i->sala;
                    int codetmp = i->stcode;
                    string vctmp = i->position;
                    i->fullName = j->fullName;
                    i->position = j->position;
                    i->stcode = j->stcode;
                    i->years = j->years;
                    i->sala = j->sala;
                    j->fullName = nametmp;
                    j->position = vctmp;
                    j->years = yeartmp;
                    j->stcode = codetmp;
                    j->sala = hsltmp;
                }
            }
        }
    }

    void display() {
        if (tongNv < 1) cout << "Nothing...!\n";
        cout << "\t======= Danh sach =======\n";
        cout << left
             << setw(w1) << "Ma NV"
             << setw(31) << "Ten NV"
             << setw(21) << "Chuc vu"
             << setw(w1) << "So nam"
             << setw(w1) <<"He so" << "\n";
        NhanVien *curr = first;
        while (curr != NULL) {
            cout << left
                 << setw(w1) << curr->stcode
                 << setw(31) << curr->fullName
                 << setw(21) << curr->position
                 << setw(w1) << curr->years
                 << setw(w1) << curr->sala << "\n";
            curr = curr->next;
        }
    }

    // void rm() {

    // }

    // void clear() {

    // }
};

int main() {
    StaffList list;
    int cmd = 0;
    int TruongPhong = 0;
    do {
        cout << "\n\t1. Liet ke cac nhan vien lam viec tu 3 nam tro len\n"
             << "\t2. So nhan vien co chuc vu la truong phong\n"
             << "\t3. Sap xep theo hsl\n"
             << "\t4. Nhap ds nhv\n"
             << "\t5. Hien thi danh sach\n"
             << "\t0. Exit\n";
        cin >> cmd;
        if (cmd == 1) {
            cout << "\tSo nhan vien lam viec tu 3 nam tro len\n";
            list.y3();
        } else if (cmd == 2) {
            cout << "So nhan vien co chuc vu la \"Truong phong\": " << TruongPhong << "\n";
        } else if (cmd == 3) {
            list.sortByHSL();
        } else if (cmd == 4) {
            cout << "So luong nhan vien: ";
            string cv[4] = {"Truong phong", "Nhan vien", "Giam doc", "Pho giam doc"};
            string nm;
            int nam, manv, n, ps;
            double hsl;
            cin >> n;
            cin.ignore();
            for (int i = 0; i < n; i++) {
                cout << "\nThong tin nhan vien " << i + 1 << "\n";
                cout << "Ma nhan vien: ";
                cin >> manv;
                cin.ignore();
                cout << "Ho ten: ";
                getline(cin, nm);
                cout << "Chuc vu [1. Truong phong, 2. Nhan vien, 3. Giam doc, 4. Pho giam doc]: ";
                cin >> ps;
                if (ps == 1) {
                    TruongPhong += 1;
                }
                cout << "So nam lam viec: ";
                cin >> nam;
                cout << "He so luong: ";
                cin >> hsl;
                cin.ignore();
                list.append(new NhanVien(manv, nm, cv[ps-1], nam, hsl));
                cout << "\n";
            }
        } else if (cmd == 5) {
            list.display();
        } else if (cmd == 0) {
            break;
        }
    } while (cmd != 0);
}
