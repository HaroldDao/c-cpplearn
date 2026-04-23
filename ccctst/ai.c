#include <stdio.h>
#include <stdlib.h> // Thu vien de dung malloc va free
#include <string.h> // Thu vien de dung strcpy

// 1. Dinh nghia cau truc Sinh vien
typedef struct Student {
    char maSv[10];
    char ho_ten[40];
    int y;
    struct Student *next; 
} Student;

// 2. Dinh nghia cau truc Danh sach (quan ly nut dau tien)
typedef struct ListStudent {
    Student *first;
} ListStudent;

// 3. Ham khoi tao mot sinh vien moi (Thay the Constructor)
Student *createSt(char ms[], char fn[], int yy) {
    // Ep kieu (Student*) de xac dinh kieu du lieu cho vung nho malloc
    Student *newS = (Student*) malloc(sizeof(Student));
    
    if (newS != NULL) {
        strcpy(newS->maSv, ms);   // Dung strcpy vi khong gán chuoi truc tiep duoc
        strcpy(newS->ho_ten, fn);
        newS->y = yy;             // So nguyen thi gán binh thuong
        newS->next = NULL;        // Mac dinh nut moi chua tro vao dau ca
    }
    return newS;
}

// 4. Ham them sinh vien vao cuoi danh sach
void append(ListStudent *list, Student *app) {
    app->next = NULL;
    
    // Neu danh sach dang rong
    if (list->first == NULL) {
        list->first = app;
        return;
    }
    
    // Neu danh sach da co phan tu, tim den nut cuoi cung
    Student *curr = list->first;
    while (curr->next != NULL) {
        curr = curr->next;
    }
    curr->next = app;
}

// 5. Ham in danh sach de kiem tra
void printList(ListStudent list) {
    Student *curr = list.first;
    printf("\n--- DANH SACH SINH VIEN ---\n");
    while (curr != NULL) {
        printf("Ma SV: %s | Ho ten: %s | Nam sinh: %d\n", curr->maSv, curr->ho_ten, curr->y);
        curr = curr->next;
    }
}

int main() {
    // Khoi tao danh sach rong
    ListStudent ls = {NULL};
    
    // Them cac sinh vien moi
    append(&ls, createSt("001", "Nguyen Van A", 2005));
    append(&ls, createSt("002", "Tran Thi B", 2006));
    append(&ls, createSt("003", "Le Van C", 2005));
    
    // In ket qua
    printList(ls);
    
    return 0;
}