#include <stdio.h>

#include <iostream>
#include <fstream>

using namespace std;

struct Person {
    string name, nation;
    int old;
    double tall, weight;
};

int load_person(string filename, Person *person_list) {
    return 0;
}

void add_person(string filename) {

}

void print_persons(Person *person_list, int count) {

}

int main() {
    const string filename = "Data.txt";
    const int MAX = 100;
    Person person_list[MAX];

    int count = load_person(filename, person_list);

    int command;
    cout << "Nhap lua chon (1 - Print / 2 - Add): ";
    cin >> command;
    if(command == 1)
    {
        print_persons(person_list, count);
    }
    else if(command == 2)
    {
        add_person(filename);
    }
}
