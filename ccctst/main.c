#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <Windows.h>
#include <stdbool.h>

typedef struct Student {
    char maSv[10], ho_ten[40];
    int y;
    struct Student *next;
} Student;

typedef struct ListStudent {
    Student *first;
    int tong_so;
} ListStudent;

void initList(ListStudent *l) {
    l->first = NULL;
    l->tong_so = 0;
}

Student *new_Student(char ms[], char fn[], int yy) {
    Student *cre = (Student *) malloc(sizeof(Student));
    if (cre != NULL) {
        strcpy(cre->maSv, ms);
        strcpy(cre->ho_ten, fn);
        cre->y = yy;
        cre->next = NULL;
    }
    return cre;
}

void append(ListStudent *lst, Student *app) {
    if (lst->first == NULL) {
        lst->first = app;
        lst->tong_so++;
        return;
    }
    Student *curr = lst->first;
    while (curr->next != NULL) {
        curr = curr->next;      
    }
    curr->next = app;
    lst->tong_so++;
}

void updateStudent(int index, ListStudent *l) {
    if (index < 0 || index > l->tong_so) {
        printf("Khong ton tai!\n");
        return;
    }
    int choice;
    printf("\t1. Sua ma sinh vien\n\t2. Sua ten\n\t3. Sua nam sinh\n\t0. (default): Sua tat ca\nNhap lua chon:" );
    scanf("%d", &choice);
    getchar();
    Student *curr = l->first;
    int i = 0;
    while (curr != NULL) {
        if (i == index) {
            break;
        }
        curr = curr->next;
        i++;
    }
    char ms[10], fn[40];
    int y;
    switch (choice) {
        case 1:
            printf("Msv: ");
            scanf("%s", &ms);
            strcpy(curr->maSv, ms);
            break;
        case 2:
            printf("Ho ten: ");
            scanf("%s", &fn);
            strcpy(curr->ho_ten, fn);
            break;
        case 3:
            printf("Nam sinh: ");
            scanf("%s", &y);
            curr->y = y;
            break;
        default:
            printf("Msv: ");
            scanf("%s", &ms);
            printf("Ho ten: ");
            scanf("%s", &fn);
            printf("Nam sinh: ");
            scanf("%d", &y);
            strcpy(curr->maSv, ms);
            strcpy(curr->ho_ten, fn);
            curr->y = y;
            break;
    }
}

void swapStudent(Student *a, Student *b) {
    char tempms[10], tempfn[40];
    int tempy;
    strcpy(tempms, a->maSv);
    strcpy(tempfn, a->ho_ten);
    tempy = a->y;
    strcpy(a->maSv, b->maSv);
    strcpy(a->ho_ten, b->ho_ten);
    a->y = b->y;
    strcpy(b->maSv, tempms);
    strcpy(b->ho_ten, tempfn);
    b->y = tempy;
}

void sortList(ListStudent *l) {
    if (l->tong_so < 1) return;
    int choice;
    printf("Sort by:\n1. MSV\n2. Ho Ten\n3. Nam sinh\n\tLua chon: ");
    scanf("%d", &choice);
    for (Student *i = l->first; i->next != NULL; i = i->next) {
        for (Student *j = i->next; j != NULL; j = j->next) {
            bool needSwap = false;
            switch (choice) {
                case 1:
                    if (strcmp(i->maSv, j->maSv) > 0) {
                        needSwap = true;
                    }
                    break;
                case 2:
                    if (strcmp(i->ho_ten, j->ho_ten) > 0) {
                        needSwap = true;
                    }
                    break;
                case 3:
                    if (i->y > j->y) needSwap = true;
                    break;
            }
            if (needSwap) swapStudent(i, j);
        }
    }
}

void showList(ListStudent *l) {
    if (l->tong_so == 0) {
        printf("Khong co gi de show");
        return;
    }
    printf("=== Danh sach da nhap ===\n");

    printf("!%-5s|%-12s|%-40s|%-10s|\n", "STT", "MSV", "Ho Ten", "Nam sinh");
    Student *curr = l->first;
    int i = 1;
    while (curr != NULL) {
        printf("|%5d|%12s|%-40s|%10d|\n", i, curr->maSv, curr->ho_ten, curr->y);
        curr = curr->next;
        i++;
    }
}

void appendAT(int index, ListStudent *l, Student *app) {
    int i = 0;
    Student *curr = l->first;
    Student *prev = NULL;
    app->next = NULL;
    if (index < 0 || index > l->tong_so) {
        printf("Khong ton tai!");
        return;
    } else if (index == 0) {
        Student *tempFirst = l->first;
        l->first = app;
        l->first->next = tempFirst;
        l->tong_so++;
        return;        
    } else if (index == l->tong_so -1) {
        while (i != index) {
            i++;
            curr = curr->next;
        }
        curr->next = app;
        l->tong_so++;
        return;
    }
    while (curr != NULL) {
        if (i == index) {
            Student *currC = curr;
            curr = app;
            prev->next = curr;
            curr->next = currC;
            l->tong_so++;
            break;
        }
        prev = curr;
        curr = curr->next;
        i++;
    }
}

void rm(int index, ListStudent *l) {
    if (index < 0 || index > l->tong_so) {
        printf("Khong ton tai! ");
        return;
    } else if (index == 0) {
        Student *posteriolyFirst = l->first->next;
        free(l->first);
        l->first = posteriolyFirst;
        l->tong_so--;
        return;
    }
    int i = 0;
    Student *curr = l->first;
    Student *prev = NULL;
    while (curr != NULL) {
        if (i == index) {
            prev->next = curr->next;
            free(curr);
            l->tong_so--;
            break;
        }
        prev = curr;
        curr = curr->next;
        i++;
    }
}

void clear(ListStudent *l) {
    if (l->tong_so <= 0) return;
    Student *curr = l->first;
    while (curr != NULL) {
        Student *currNext = curr->next;
        free(curr);
        curr = currNext;
    }
}

int main() {
    ListStudent *ls;
    initList(ls);
    int ft;
    do {
        printf("\n\t1. Feature is been updating...\n\t2. Append\n\t3. Update Student\n\t4. Sort\n\t5. append at\n\t6. rm at\n\t7. show list\n\t0. Exit\n");
        scanf("%d", &ft);
        if (ft == 1) {
            printf("This feature is been updating... ");
        } else if (ft == 2) {
            int hm;
            printf("Them bao nhieu sv: ");
            scanf("%d", &hm);
            getchar();
            char ms[10], fn[40];
            int y;
            for (int i = 0; i < hm; i++) {
                printf("Thong tin sinh vien %d\n", i + 1);
                printf("Msv: ");
                scanf("%s", &ms);
                getchar();
                printf("Ho ten: ");
                scanf("%s", &fn);
                getchar();
                printf("Nam sinh: ");
                scanf("%d", &y);
                append(ls, new_Student(ms, fn, y));
            }
        } else if (ft == 3) {
            int ind;
            printf("Vi tri (index) cua sinh vien can sua: ");
            scanf("%d", &ind);
            updateStudent(ind, ls);
        } else if (ft == 4) {
            sortList(ls);
        } else if (ft == 5) {
            int where = 0;
            char ms[10], fn[40];
            int y;
            printf("apd at: ");
            scanf("%d", &where);
            getchar();
            printf("Thong tin sinh vien\n");
            printf("Msv: ");
            scanf("%s", &ms);
            getchar();
            printf("Ho ten: ");
            scanf("%s", &fn);
            getchar();
            printf("Nam sinh: ");
            scanf("%d", &y);
            appendAT(where, ls, new_Student(ms, fn, y));
        } else if (ft == 6) {
            int where = 0;
            printf("rm at: ");
            scanf("%d", &where);
            rm(where, ls);
        } else if (ft == 7) {
            showList(ls);
        } else if (ft == 0) {
            clear(ls);
            free(ls);
            break;
        }
    } while (ft != 0);
}