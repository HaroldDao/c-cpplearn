#include <iostream>
#include <string>

using namespace std;
const int maxList = 100;

struct name {
    string nm;
    name() : nm("") {}
    name(string na) {
        nm = na;
    }
};

struct listName {
    int cur;
    name *list[maxList];

    listName() {
        cur = 0;
    }

    void append(name *p) {
        list[cur] = p;
        cur++;
    }

    void show_list() {
        for (int i = 0; i < cur; i++) {
            cout << "Name " << i + 1 << ": " << list[i]->nm << "\n";
        }
    }
};

int main() {
    listName *lst = new listName();
    lst->append(new name("hello"));
    lst->append(new name("duy phuc"));
    lst->show_list();

}
