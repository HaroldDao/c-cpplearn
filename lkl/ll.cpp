#include <iostream>

using namespace std;

const int maxElement = 100;
struct Number {
    int value;
    Number *next;
    Number () {}
    Number(int giatri) {
        value = giatri;
    }
};

struct numberList {
    Number *first = NULL;
    int amountofElement = 0;

    void append(Number *a) {
        a->next = NULL;
        if (first == NULL) {
            first = a;
            amountofElement++;
            return;
        }
        Number *current = first;
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = a;
        amountofElement++;
    }

    void appendAt(int index, Number *b) {
        int whereami = 0;
        if (index > amountofElement || index < 0) {
            cout << "cannot append at here!\n";
            return;
        } else if (index == 0) {
            Number *cloneFirst = first;
            first = b;
            first->next = cloneFirst;
            amountofElement++;
            return;
        } else if (index == amountofElement) {
            append(b);
            return;
        }
        Number *addAt = first;
        Number *prev;
        while (addAt != NULL) {
            if (whereami == index) {
                Number *cloneNext = addAt;
                prev->next = b;
                b->next = cloneNext;
                amountofElement++;
                return;
            }
            whereami++;
            prev = addAt;
            addAt = addAt->next;
        }
        amountofElement++;
    }

    void sort() {
        if (first == NULL) {
            cout << "Nothing to sort!\n";
            return;
        }
        for (Number *i = first; i->next != NULL; i = i->next) {
            for (Number *j = i->next; j != NULL; j = j->next) {
                if (i->value > j->value) {
                    int tempvalue= i->value;
                    i->value = j->value;
                    j->value = tempvalue;
                }
            }
        }
    }

    void display() {
        if (first == NULL) {
            cout << "\nEmpty list!\n";
            return;
        }
        Number *curr = first;
        while (curr != NULL) {
            cout << curr->value << " ";
            curr = curr->next;
        }
        cout << "|it has " << amountofElement << " elements.\n";
    }

    void remove(int index) {
        int iamhere = 1; // if we want to remove at the index, we will set = 0;
        if (index > amountofElement || index <= 0) {
            cout << "Nothing to rm.\n";
            return;
        } else if (index == 1) { // and also set = 0 at here;
            Number *cloneNext = first->next;
            Number *rmFirst = first;
            first = cloneNext;
            delete rmFirst;
            amountofElement--;
            return;
        }
        Number *rm = first;
        Number *prev;
        while (rm != NULL) {
            if (index == iamhere) {
                prev->next = rm->next;
                delete rm;
                amountofElement--;
                return;
            }
            iamhere++;
            prev = rm;
            rm = rm->next;
        }
    }

    void clear() {
        Number *clear = first;
        first = NULL;
        while (clear != NULL) {
            Number *nodeNext = clear->next;
            delete clear;
            clear = nodeNext;
        }
    }

};


int main() {
    numberList *ls = new numberList;
    int feature;

    do {
        cout << "\t=======MENU=======\n"
             << "\t1. Import n elements\n"
             << "\t2. Add a element at...\n"
             << "\t3. Remove a element at...\n"
             << "\t4. Sort\n"
             << "\t5. Display list\n"
             << "\t6. Delete list\n";
        cout << "Choose the feature you want to use: ";
        cin >> feature;
        if (feature == 1) {
            int n;
            cout << "how many elements do you want to import:? ";
            cin >> n;
            cin.ignore();
            for (int i = 0; i < n; i++) {
                int temp;
                cout << ls->amountofElement << ": ";
                cin >> temp;
                ls->append(new Number(temp));
            }
        }
        else if (feature == 2) {
            int index, val;
            cout << "where do you want to add?: ";
            cin >> index;
            cout << "\nvalue?: " ;
            cin >> val;
            ls->appendAt(index, new Number(val));
            cout << "\n";
        }
        else if (feature == 3) {
            int index;
            cout << "where do you want to remove?: ";
            cin >> index;
            ls->remove(index);
        }
        else if (feature == 4) {
            ls->sort();
        }
        else if (feature == 5){
            ls->display();
        } else {
            ls->clear();
            delete ls;
        }
    } while(feature !=6);
}
