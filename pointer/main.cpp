#include <iostream>

using namespace std;

struct Person {
    string fullname;
    Person(std::string fn)
    {
        fullname = fn;
    }
};

void show_info(Person *p) {
    cout << "Dia chi: " << p << "\nGia tri: " << p->fullname << "\n\n";
}

int check_duplicate(Person *t1, Person *t2) {
    if (t1 == t2) {
        return 0;
    } else if (t1 != t2 && t1->fullname == t2->fullname) {
        return 1;
    } else return 2;
}

// Ko sua ham main
int main() {
    Person t1("Vu");
    Person *t2 = new Person("Fukada");
    Person *p3 = new Person("Tokuda");
    Person *p4 = new Person("Vu");
    Person *p5 = &t1;

    {
        cout << "Test 1 - Show info: \n";
        show_info(&t1);
    }

    {
        cout << "Test 2 - Show info: \n";
        show_info(t2);
    }

    {
        cout << "Test 3 - check_duplicate: \n";
        cout << "\t3.1 " << (check_duplicate(&t1, t2) == 2 ? "Pass" : "Failed") << "\n";
        cout << "\t3.2 " << (check_duplicate(&t1, p4) == 1 ? "Pass" : "Failed") << "\n";
        cout << "\t3.3 " << (check_duplicate(&t1, p5) == 0 ? "Pass" : "Failed") << "\n";
    }
}
