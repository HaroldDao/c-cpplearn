#include <iostream>
#include <string>

using namespace std;

const int MAX = 100;

struct Person {
    string ho_ten;
    int tuoi;
    Person() {}
    Person(string ht, int t) : ho_ten(ht), tuoi(t) {}
};

struct PersonList {
    Person *person_list[MAX];
    int count;

    PersonList() {
        // count = 0;
    }

    void show_all() {
        for (int i = 0; i < count; i++) {
            /*if(person_list[i] != NULL) */{
                cout << "\t" << (*person_list[i]).ho_ten /*->ho_ten << " - " << person_list[i]->tuoi*/<< "\n";
            }
        }
    }

    void append(Person *new_person) {
        person_list[count] = new_person;
        count += 1;
    }

    void remove(int index) {
        person_list[index] = NULL;
        // for (int i = index; i < count - 1; i++) {
        //     person_list[i] = person_list[i + 1];
        // }
        // count--;
    }

    string get_oldest_person() {
        string name = person_list[0]->ho_ten;
        int old = person_list[0]->tuoi;
        for (int i = 0; i < count; i++) {
            if (person_list[i]->tuoi > old) {
                name = person_list[i]->ho_ten;
                old = person_list[i]->tuoi;
            }
        }
        return name;
    }
};

int main() {

    PersonList list_fake; // Khai báo trực tiếp, không dùng 'new'
    cout << "Gia tri cua count khi khong khoi tao: " << list_fake.count << endl;
    PersonList *list = new PersonList;
    list->append(new Person("Anh Vu", 30));
    list->append(new Person("Eimi Fukada", 25));
    list->append(new Person("Ngoc Trinh", 27));
    list->append(new Person("Khac Tiep", 29));

    {
        cout << "Test 1 - Print all person:\n";
        list->show_all();
    }

    {
        cout << "Test 2 - Append Tokuda:\n";
        list->append(new Person("Tokuda", 60));
        list->show_all();
    }

    // {
    //     cout << "Test 3 - Remove Ngoc Trinh:\n";
    //     list->remove(2);
    //     list->show_all();
    // }

    {
        cout << "Test 4 - Oldest person: ";
        cout << list->get_oldest_person() << "\n";
    }
}
