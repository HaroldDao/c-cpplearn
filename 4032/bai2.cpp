#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

void inst(Node* &head, int val) {
    Node* newNode = new Node{val, nullptr};
    if (head == nullptr) {
        head = newNode;
        return;
    }
    Node* temp = head;
    while (temp->next != nullptr) temp = temp->next;
    temp->next = newNode;
}

void mke(Node* head, int newVal) {
    if (head != nullptr) {
        head->data = newVal;
    }
}

// Xoa phan tu cuoi cung
void delL(Node* &head) {
    if (head == nullptr) return;
    if (head->next == nullptr) {
        delete head;
        head = nullptr;
        return;
    }
    Node* temp = head;
    while (temp->next->next != nullptr) temp = temp->next;
    delete temp->next;
    temp->next = nullptr;
}

int main() {
    cout  << "Chon chuc nang\n";
    cout  << "1. Them vao cuoi ds\n"
         << "2. Sua phan tu dau tien\n"
         << "3. Xoa phan tu cuoi cung\n";
    int a;
    cin >> a;
    if (a == 1) {
        inst();
    } else if (a == 2) {
        mke();
    } else if (a == 3) {
        delL();
    }
}
