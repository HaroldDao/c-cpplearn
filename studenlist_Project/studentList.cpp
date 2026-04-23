#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct student {
    string firstName, lastName, stdCode, fullName;
    int old;
    double mathS, engS, chemS, bioS, phyS; // S is a contraction that mean score
    student *next;
    student (string code, string ftn, string ln, int o, double t, double e, double c, double b, double p) {
        stdCode = code;
        firstName = ftn;
        lastName = ln;
        old = o;
        mathS = t;
        engS = e;
        chemS = c;
        bioS = b;
        phyS = p;
        fullName = ftn + " " + ln; // default: firstName is ten cua ban, lastName: ho va ten dem
    }
};

struct studentList {
    int count = 0;
    student *first = NULL;

    void append(student *apd) {
        apd->next = NULL;
        if (first == NULL) {
            first = apd;
            count++;
            return;
        }
        student *current_student = first;
        while (current_student->next != NULL) {
            current_student = current_student->next;
        }
        current_student->next = apd;
        count++;
    }

    void add(int index, student *ad) {
        if (index == 0) {
            student *cloneFisrt = first;
            first = ad;
            first->next = cloneFisrt;
            count++;
            return;
        }
        int whereami = 0;
        student *curr = first;
        student *prev;
        while (curr != nullptr) {
            if (whereami == index) {
                ad->next = curr;
                prev->next = ad;
                count++;
                break;
            }
            whereami++;
            prev = curr;
            curr = curr->next;
        }
    }

    void sort(int criteria) {
        if (first == NULL || first->next == NULL) return;

        for (student *i = first; i->next != NULL; i = i->next) {
            for (student *j = i->next; j != NULL; j = j->next) {
                bool needSwap = false;

                // Chọn tiêu chí so sánh
                switch (criteria) {
                case 1:
                    needSwap = i->mathS > j->mathS;
                    break;
                case 2:
                    needSwap = i->engS > j->engS;
                    break;
                case 3:
                    needSwap = i->chemS > j->chemS;
                    break;
                case 4:
                    needSwap = i->bioS > j->bioS;
                    break;
                case 5:
                    needSwap = i->phyS > j->phyS;
                    break;
                case 6:
                    needSwap = i->fullName > j->fullName;
                    break;
                case 7:
                    needSwap = i->old > j->old;
                    break;
                }

                if (needSwap) {
                    swap(i->stdCode, j->stdCode);
                    swap(i->firstName, j->firstName);
                    swap(i->lastName, j->lastName);
                    swap(i->fullName, j->fullName);
                    swap(i->old, j->old);
                    swap(i->mathS, j->mathS);
                    swap(i->engS, j->engS);
                    swap(i->chemS, j->chemS);
                    swap(i->bioS, j->bioS);
                    swap(i->phyS, j->phyS);
                }
            }
        }
    }


    void remove(int index) {
        if (index == 0) {
            student *cloneNext = first->next;
            delete first;
            first = cloneNext;
            count--;
            return;
        }
        int iamhere = 0;
        student *curr = first;
        student *prev;
        while (curr != nullptr) {
            if (iamhere == index) {
                prev->next = curr->next;
                delete curr;
                count--;
                return;
            }
            iamhere++;
            prev = curr;
            curr = curr->next;
        }
    }

    void display() {
        cout << "\tDanh sach sinh vien\n";
        if (first  == nullptr) {
            cout << "Nothing to print!\n";
            return;
        }
        cout << left
             << setw(10) << "Ma sv"
             << setw(30) << "Ho ten"
             << setw(10) << "Nam sinh"
             << setw(7) << "Toan"
             << setw(7) << "Anh"
             << setw(7) << "Hoa"
             << setw(7) << "Sinh"
             << setw(7) << "Ly" << "\n";
        student *curr = first;
        while (curr != nullptr) {
            cout << left
                 << setw(10) << curr->stdCode
                 << setw(30) << curr->fullName
                 << setw(10) << curr->old
                 << setw(7) << curr->mathS
                 << setw(7) << curr->engS
                 << setw(7) << curr->chemS
                 << setw(7) << curr->bioS
                 << setw(7) << curr->phyS << "\n";
            curr = curr->next;
        }
    }

    void clear() {
        student *clearthis = first;
        while (clearthis != nullptr) {
            student *Nxt = clearthis->next;
            delete clearthis;
            count--;
            clearthis = Nxt;
        }
    }
};


int main() {
    studentList list;
    int ft;
    do {
        cout << "\n\tMENU\n";
        cout << "\t1. Append\n"
             << "\t2. Add at...\n"
             << "\t3. Remove at...\n"
             << "\t4. Sort\n"
             << "\t5. Display\n"
             << "\t6. Clear\n";
        cin >> ft;
        cin.ignore();

        if (ft == 1) {
            int n;
            cout << "How many students you want to append: ";
            cin >> n;
            cin.ignore();
            for (int i = 0; i < n; i++) {
                string cd, ftn, ltn;
                int o__;
                double t, a, h, s, l;
                cout << "\nStudent " << i + 1 << "\n";
                cout << "Ma sv: ";
                getline(cin, cd);
                cout << "Ho va ten dem: ";
                getline(cin, ftn);
                cout << "Ten: ";
                getline(cin, ltn);
                cout << "Nam sinh: ";
                cin >> o__;
                cout << "Diem toan: ";
                cin >> t;
                cout << "Diem Anh: ";
                cin >> a;
                cout << "Diem Hoa: ";
                cin >> h;
                cout << "Diem Sinh: ";
                cin >> s;
                cout << "Diem Ly: ";
                cin >> l;
                cin.ignore();
                list.append(new student(cd, ftn, ltn, o__, t, a, h, s, l));
            }
        }

        if (ft == 2) {
            int in;
            cout << "where you want to add: ";
            cin >> in;
            if (in + 1 < 0 || in + 1 > list.count) {
                cout << "qwer\n";
                continue;
            }
            string cd, ftn, ltn;
            int o;
            double t, a, h, s, l;
            cout << "\nStudent " << in + 1 << "\n";
            cout << "Ma sv: ";
            cin >> cd;
            cin.ignore();
            cout << "Ho va ten dem: ";
            getline(cin, ftn);
            cout << "Ten: ";
            getline(cin, ltn);
            cout << "Nam sinh: ";
            cin >> o;
            cout << "Diem toan: ";
            cin >> t;
            cout << "Diem Anh: ";
            cin >> a;
            cout << "Diem Hoa: ";
            cin >> h;
            cout << "Diem Sinh: ";
            cin >> s;
            cout << "Diem Ly: ";
            cin >> l;
            list.add(in, new student(cd, ftn, ltn, o, t, a, h, s, l));
        }

        if (ft == 3) {
            int in;
            cout << "Where you want to rm: ";
            cin >> in;
            list.remove(in);
        }

        if (ft == 4) {
            cout << "\n\tMENU\n";
            cout << "\t1. Append\n"
                 << "\t2. Add at...\n"
                 << "\t3. Remove at...\n"
                 << "\t4. Sort\n"
                 << "\t\t4.1 Sort by Math score\n"
                 << "\t\t4.2 Sort by Eng score\n"
                 << "\t\t4.3 Sort by Chem score\n"
                 << "\t\t4.4 Sort by Bio score\n"
                 << "\t\t4.5 Sort by Phy score\n"
                 << "\t\t4.6 Sort by Name\n"
                 << "\t\t4.7 Sort by old\n"
                 << "\t5. Display\n"
                 << "\t6. Clear\n";
            int ft4;
            cout << "4.......?";
            cin >> ft4;
            list.sort(ft4);
        }

        if (ft == 5) {
            list.display();
        }

        if (ft == 6) {
            list.clear();
        }
    } while (ft != 6);
}
