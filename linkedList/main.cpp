#include <iostream>
#include <string>

using namespace std;

struct Number {
    int val;
    Number *next;
    Number() {}
    Number(int a) {
        val = a;
    }
};

struct numberList {
    Number *first;

    numberList() {
        first = NULL;
    }

    void append(Number *a) {
        a->next = NULL;
        if (first == NULL) {
            first = a;
        } else {
            Number *imp = first;
            while (imp->next != 0) {
                imp = imp->next;
            }
            imp->next = a;
        }
    }

    void show_all() {
        Number *check = first;
        while (check != NULL) {
            cout << check->val << " ";
            check = check->next;
        }
        cout << "\n";
    }

    void sort() {
        for (Number *i = first; i->next != NULL; i = i->next) {
            for (Number *j = i; j != NULL; j = j->next) {
                if (i->val > j->val) {
                    int temp = i->val;
                    i->val = j->val;
                    j->val = temp;
                }
            }
        }
        cout << "\n";
    }

    void rm(int index) {
        int i = 0;
        Number *temp = first;
        Number *prev = NULL;
        for (int w = 0; temp != NULL; w++) {
            if (w == index - 1) {
                // truong hop index = 0
                if (index == 0) {
                    first = temp->next;
                } else { // truong hop con lai
                    prev->next = temp->next;
                }
                delete temp;
                break;
            }
            prev = temp;
            temp = temp->next;
        }
    }
};


void test() {
    Number *n1 = new Number(93);
    Number *n2 = new Number(23);
    Number *n3 = new Number(84);
    Number *n4 = new Number(20);
    n1->next = n2;
    n2->next = n3;
    n3->next = NULL;
    Number *first = n1;

    Number *p = first;
    while (p->next != NULL) {
        // cout << p->val << " ";
        p = p->next;
    }
    p->next = n4;
    n4->next = NULL;
    for (Number *p = first; p != NULL; p = p->next) {
        cout << p->val << " ";
    }
}

int main() {
    numberList list;
    int n;
    cout << "how many elements do you want to import:? ";
    cin >> n;
    cin.ignore();
    for (int i = 0; i < n; i++) {
        int k;
        cin >> k;
        cin.ignore();
        list.append(new Number(k));
    }

    list.show_all();

    // list.sort();
    int st;
    cout << "Where do you want to rm? ";
    cin >> st;
    list.rm(st);
    list.show_all();
}
