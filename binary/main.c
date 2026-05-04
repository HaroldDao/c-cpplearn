#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct student {
    char name[40];
    double toan, van, anh;
    struct student *next;
} student;

typedef struct listStudent {
    student *first;
    int tong_so;
} listStudent;

void initList(listStudent *l) {
    l->first = NULL;
    l->tong_so = 0;
}

student *newStudent(char *nm, double t, double v, double a) {
    student *cre = (student *) malloc(sizeof(student));
    if (cre != NULL) {
        strcpy(cre->name, nm);
        cre->toan = t;
        cre->van = v;
        cre->anh = a;
        cre->next = NULL;
    }
    return cre;
}

void append(listStudent *l, student *app) {
    if (l == NULL || app == NULL) return;
    app->next = NULL;
    if (l->first == NULL) {
        l->first = app;
        l->tong_so++;
        return;
    }
    student *curr = l->first;
    while (curr->next != NULL) {
        curr = curr->next;
    }
    curr->next = app;
    l->tong_so++;
}

void writeFile(listStudent *l) {
    if (l == NULL || l->tong_so == 0) return;

    FILE *fw = fopen("student.dat", "wb");
    fwrite(&l->tong_so, sizeof(int), 1, fw);

    student *curr = l->first;
    while (curr != NULL) {
        fwrite(curr->name, sizeof(curr->name), 1, fw);
        fwrite(&curr->toan, sizeof(double), 1, fw);
        fwrite(&curr->van, sizeof(double), 1, fw);
        fwrite(&curr->anh, sizeof(double), 1, fw);
        curr = curr->next;
    }
    fclose(fw);
}

void showList(listStudent *l) {
    if (l == NULL || l->tong_so == 0) return;
    student *curr = l->first;
    while (curr != NULL) {
        printf("%s, %.2lf, %.2lf, %.2lf\n", curr->name, curr->toan, curr->van, curr->anh);
        curr = curr->next;
    }
}

void readFile(listStudent *l, bool check) {
    FILE *fr = fopen("student.dat", "rb");
    if (fr == NULL) return;
    
    int n;
    fread(&n, sizeof(int), 1, fr);

    char nm[40];
    double t, v, a;
    for (int i = 0; i < n; i++) {
        fread(nm, sizeof(nm), 1, fr);
        fread(&t, sizeof(double), 1, fr);
        fread(&v, sizeof(double), 1, fr);
        fread(&a, sizeof(double), 1, fr);
        append(l, newStudent(nm, t, v, a));
    }

    if (check) {
        showList(l);
    }

    fclose(fr);
}

int main() {
    listStudent *list = (listStudent *) malloc(sizeof(listStudent));
    initList(list);
    append(list, newStudent("Tuan Anh", 8.3, 8.2, 9.1));
    append(list, newStudent("Minh Tuan", 7.5, 6.5, 8.0));
    append(list, newStudent("Thu Ha", 9.0, 8.5, 9.5));
    // showList(list);
    writeFile(list);
    bool check = true;
    initList(list);
    readFile(list, check);
}