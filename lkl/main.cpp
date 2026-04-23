#include <iostream>
#include <string>

using namespace std;

struct Number {
    int value;
    Number *next;
};


int main() {
    int *list[2] = {};
    int a = 10;
    int b = 12;
    int arr[3];

    cout << "a: " << a << " - " << "b: " << b << "\n";
    int *pointer = &a;
    cout << *arr << "\n\n";
    // here, &list will return the address of list it euqal with &list[0]
    /* it like:
    * if we have a static array
    * for instanst: int arr[3]; // we didn't set the value of elements in this array
    * arr like a poniter and it direct to arr[0]; cout << arr << " - " << &arr;
    * it will return the same output; that is a address
    * but i wonder when we print: cout << arr[1] << &arr[1]; arr[1] and &arr[1] those're diffent?
    * i know &arr[1] that is a address so what is the output of arr[1]
    * nomally, we cout arr[1] it will return the value at that index...
    * so i belive arr[1] in this case it return a value... maybe, it is a ghost value:????
    * hmmm...
    *
    * ok,now let's back to *list
    * &list[1] it will return the address of the element at the index 1
    */
    cout << &list << " - " << &list[0] << " - " << &list[1] << "\n\n";

    /*
    * now in this situation...
    * maybe it's same with cout << arr[1] << &arr[1];
    * in the case i have addressed / mentioned above
    * right?
    */
    cout << list << " - " << &list[0] << " - " << list[1] << "\n\n"; //


    /*
    * ok, let's move to this case;
    * we print *list;
    * *list mean we want to access the value of that address right.
    * but...
    * because list here is a pointer show when we print it that will return the address of that pointer.... right?
    *
    * i get confused in this part!!:((
    */
    cout << *list << " - " << list[0] << " - " << list[1] << "\n"; //


    cout << (*list == list[0] ? "true" : "flase");
}
