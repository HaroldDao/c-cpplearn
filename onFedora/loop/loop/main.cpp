#include <iostream>
#include <string>
using namespace std;

struct address {
    int homeNumber;
    string street;
    string province;
};

struct person {
    string name;
    int old;
    address addr;
    string hobbies[10];

};

int main() {
    person perList[100];
    int n, h;
    cout << "How many persons do you want?: ";
    cin >> n;
    cin.ignore();
    for (int i = 0; i < n; i++) {
        cout << "Person " << i + 1 << "\n";
        cout << "Name's person " << i + 1 << ": ";
        getline(cin, perList[i].name);
        cout << "old's person " << i + 1 << ": " ;
        cin >> perList[i].old;
        cin.ignore();
        cout << "Their address " << i + 1 << "(format: numhome, street, province): ";
        cin >> perList[i].addr.homeNumber;
        cin.ignore();
        getline(cin, perList[i].addr.street);
        getline(cin, perList[i].addr.province);
        cout << "How many hobbies may you have?: ";
        cin >> h;
        cin.ignore();
        for (int j = 0; j < h; j++) {
            cout << "Hobby's " << j + 1 << "person " << i + 1 << " ";
            getline(cin, perList[i].hobbies[j]);
        }
        cout << "\n";
    }

    cout << "STT    "
         << "Name           "
         << "Old            "
         << "Address        "
         << "Hobbies        "
         << "\n";
    for (int q = 0; q < n; q++) {
        for (int w = 0; w < 1; w++) {
            cout << q;
            cout << "   " << perList[q].name;
            cout << "   " << perList[q].old;
            cout << "   " << perList[q].addr.homeNumber;
            cout << "   " << perList[q].addr.street;
            cout << "   " << perList[q].addr.province;
            // cout <<
        }
    }
}
