#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct Student {
    string maSV, ho_ten;
    int nam_sinh;
    Student *next;
    Student (string ms, string nm, int yod) {
        maSV = ms;
        ho_ten = nm;
        nam_sinh = yod;
    }
};

struct ListStudent {
    Student *first = NULL;
    void append(Student *app) {
        app->next = NULL;
        if (first == NULL) {
            first = app;
            return;
        }
        Student *currentS = first;
        while (currentS->next != NULL) {
            currentS = currentS->next;
        }
        currentS->next = app;
    }

    void show_list() {
        const int w1 = 10;
        cout << "=== Danh sach hoc sinh ===\n";
        cout << left <<
        setw (w1) << "STT"
        << setw(w1) << "MSV"
        << setw(40) << "Ho ten"
        << setw(w1) << "Nam sinh" << "\n";
        Student *curr = first;
        int i = 1;
        while (curr != NULL) {
            cout << left
            << setw (w1) << i
            << setw(w1) << curr->maSV
            << setw(40) << curr->ho_ten
            << setw(w1) << curr->nam_sinh << "\n";
            i++;
            curr = curr->next;
        }
    }

    // void change(int index, Student *re) {

    // }
};

int main() {
    ListStudent list;
    int ft;
    do {
        cout << "\nWhat do you want to do? \n"
             << "\t1. Tao danh sach\n"
             << "\t2. Hien thi danh sach\n"
             << "\t3. Sua thong tin\n"
             << "\t4. Ket thuc\n";
        cin >> ft;

        if (ft == 1) {
            int slsv, ns;
            string stc, fn;
            cout << "Ban muon them bao nhieu sinh vien: ";
            cin >> slsv;
            cin.ignore();
            for (int i = 1; i <= slsv; i++) {
                cout << "==== Thong tin sinh vien " << i << " ====\n";
                cout << "Ma sinh vien: ";
                getline(cin, stc);
                cout << "Ho ten: ";
                getline(cin, fn);
                cout << "Nam sinh: ";
                cin >> ns;
                cin.ignore();
                list.append(new Student(stc, fn, ns));
                cout << "\n";
            }
        }

        if (ft == 2) {
            list.show_list();
        }
        if (ft == 4) break;
    } while (ft != 4);
}
