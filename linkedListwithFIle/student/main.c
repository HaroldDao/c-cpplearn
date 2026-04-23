#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

char fN[40] = "hocsinh.txt";

typedef struct student {
    char fn[40];
    double toan, van, anh, tb;
    struct student *next;
} student;

typedef struct listst {
    student *first;
    int tongso;
} listst;

void clear(listst *l) {
    if (l->first == NULL) {
        return;
    }
    student *curr = l->first;
    while (curr != NULL) {
        student *currNextTemp = curr->next;
        free(curr);
        curr = currNextTemp;
    }
}

void initList(listst *l) {
    l->first = NULL;
    l->tongso = 0;
} 

student *new_st(char *nm, double t, double v, double a) {
    student *cre = (student *) malloc(sizeof(student));
    if (cre != NULL) {
        strcpy(cre->fn, nm);
        cre->toan = t;
        cre->van = v;
        cre->anh = a;
        cre->tb = (t + v + a) / 3.0;
        cre->next = NULL;
    }
    return cre;
}

void append(listst *l, student *app) {
    app->next = NULL;
    if (l->first == NULL) {
        l->first = app;
        l->tongso++;
        return;
    }

    student *curr = l->first;
    while (curr->next != NULL) {
        curr = curr->next;
    }
    curr->next = app;
    l->tongso++;
}

void writeFile(listst *l, int sohs) {
    FILE *fw = fopen(fN, "w");
    if (fw == NULL) {
        printf("Loi mo file!\n");
        return;
    }
    
    for (int i = 1; i <= sohs; i++) {
        char nm[40];
        double t, v, a;
        printf("Thong tin hoc sinh %d:\n", i);
        printf("Ho ten: ");
        fgets(nm, sizeof(nm), stdin);
        nm[strcspn(nm, "\n")] = 0;
        printf("Diem toan: ");
        scanf("%lf", &t);
        printf("Diem van: ");
        scanf("%lf", &v);
        printf("Diem anh: ");
        scanf("%lf", &a);
        getchar();
        append(l, new_st(nm, t, v, a));
    }

    student *curr = l->first;
    while (curr != NULL) {
        fprintf(fw, "%s|%.2lf|%.2lf|%.2lf|%.2lf\n", curr->fn, curr->toan, curr->van, curr->anh, curr->tb);
        curr = curr->next;
    }

    fclose(fw);
    // printf("Da xong!\n");
}

void readFile(listst *l, int showlist) {
    clear(l);
    initList(l);
    FILE *fr = fopen(fN, "r");
    if (fr == NULL) {
        printf("Loi mo file!\n");
        return;
    }

    char data[200];
    int i = 1;
    while (fgets(data, sizeof(data), fr) != NULL) {
        data[strcspn(data, "\n")] = 0;

        char *nm = strtok(data, "|");
        char *t = strtok(NULL, "|");
        char *v = strtok(NULL, "|");
        char *a = strtok(NULL, "|");

        if (nm == NULL || t == NULL || v == NULL || a == NULL) {
            printf("%d - Loi!!!\n", i);
            continue;
        }
        append(l, new_st(nm, atof(t), atof(v), atof(a)));
        i++;
    }
    if (showlist == 1) {
        student *curr = l->first;
        printf("%-40s %15s %15s %15s %15s\n", "Ho ten", "Toan", "Van", "Anh", "Trung Binh");
        printf("--------------------------------------------------------------------------------------------------------\n");
        while (curr != NULL) {
            printf("%-40s %15.2lf %15.2lf %15.2lf %15.2lf\n", curr->fn, curr->toan, curr->van, curr->anh, curr->tb);
            curr = curr->next;
        }
        // printf("Da xong!\n");
    }
    
    fclose(fr);
}

void swap(student *a, student *b) {
    char nmt[40];
    double tt = a->toan, vt = a->van, at = a->anh, tbt = a->tb;
    strcpy(nmt, a->fn);

    strcpy(a->fn, b->fn);
    a->toan = b->toan;
    a->van = b->van;
    a->anh = b->anh;
    a->tb = b->tb;

    strcpy(b->fn, nmt);
    b->toan = tt;
    b->van = vt;
    b->anh = at;
    b->tb = tbt;
}

void sort(listst *l, int standard) {
    clear(l);
    initList(l);
    readFile(l, 0);
    for (student *a = l->first; a->next != NULL; a = a->next) {
        for (student *b = a->next; b != NULL; b = b->next) {
            bool needswap = false;
            switch (standard) {
                case 1: // toan
                    needswap = a->toan > b->toan;
                    break;
                
                case 2: // van
                    needswap = a->van > b->van;
                    break;
                
                case 3: //anh
                    needswap = a->anh > b->anh;
                    break;
                
                case 4: // tb
                    needswap = a->tb > b->tb;
                    break;

                // case 0: //ten
                    // needswap = strcmp(a->fn, b->fn) > 0;
                    // break;
                default: 
                    needswap = strcmp(a->fn, b->fn) > 0;
                    break;
            }
            if (needswap) { 
                swap(a, b);
            }
        }
    }
    writeFile(l, 0);
    student *curr = l->first;
    printf("%-40s %15s %15s %15s %15s\n", "Ho ten", "Toan", "Van", "Anh", "Trung Binh");
    printf("--------------------------------------------------------------------------------------------------------\n");
    while (curr != NULL) {
        printf("%-40s %15.2lf %15.2lf %15.2lf %15.2lf\n", curr->fn, curr->toan, curr->van, curr->anh, curr->tb);
        curr = curr->next;
    }
    // printf("Da xong!\n");
}

void appendFile(listst *l) {
    clear(l);
    initList(l);
    readFile(l, 0);
    int line;
    printf("Them vao dong: ");
    scanf("%d", &line);
    if (line < 1 || line > l->tongso + 1) {
        printf("Khong ton tai!\n");
        return;
    }
    getchar();
    int i = 1;
    char nm[40];
    double t, v, a;
    printf("Thong tin hoc sinh %d:\n", i);
    printf("Ho ten: ");
    fgets(nm, sizeof(nm), stdin);
    nm[strcspn(nm, "\n")] = 0;
    printf("Diem toan: ");
    scanf("%lf", &t);
    printf("Diem van: ");
    scanf("%lf", &v);
    printf("Diem anh: ");
    scanf("%lf", &a);
    getchar();
    student *needAppend = new_st(nm, t, v, a);
    if (line == 1) {
        student *firstNextTemp = l->first;
        l->first = needAppend;
        needAppend->next = firstNextTemp;
    } else if (line == l->tongso) {
        writeFile(l, 1);
    } else {
        student *curr = l->first;
        for (int q = 1; q < line - 1; q++) {
            curr = curr->next;
        }
        student *currNextTemp = curr->next;
        curr->next = needAppend;
        needAppend->next = currNextTemp;
    }
    l->tongso++;
    writeFile(l, 0);
}

void editFile(listst *l) {
    sort(l, 0); // set defualt sort by name
    int line = 1;
    printf("STT hoc sinh (sort by name): ");
    
    if (line > l->tongso || line < 1) {
        printf("Khong ton tai!\n");
        return;
    }

    scanf("%d", &line);
    int standard = -1;
    printf("\tSua:\n\t1. Ten\n\t2. Toan\n\t3. Van\n\t4. Anh\n");
    scanf("%d", &standard);
    getchar();
    int i = 1;
    student *curr = l->first;
    while (curr != NULL) {
        if (i == line) {
            double newscore;
            if (standard == 1) {
                char nm[40];
                printf("Nhap ten moi: ");
                fgets(nm, sizeof(nm), stdin);
                nm[strcspn(nm, "\n")] = 0;
                strcpy(curr->fn, nm);
            } else if (standard == 2) {
                printf("Nhap diem toan moi: ");
                scanf("%lf", &newscore);
                curr->toan = newscore;
                curr->tb = (curr->toan + curr->van + curr->anh) / 3.0;
            } else if (standard == 3) {
                printf("Nhap diem van moi: ");
                scanf("%lf", &newscore);
                curr->van = newscore;
                curr->tb = (curr->toan + curr->van + curr->anh) / 3.0;
            } else if (standard ==  4) {
                printf("Nhap diem anh moi: ");
                scanf("%lf", &newscore);
                curr->anh = newscore;
                curr->tb = (curr->toan + curr->van + curr->anh) / 3.0;
            }
            break;
        }
        i++;
        curr = curr->next;
    }
    writeFile(l, 0);
    readFile(l, 1);
}

void rmv(listst* l) {
    sort(l, 0);
    int line;
    printf("STT hoc sinh (sorted by name): ");
    scanf("%d", &line);
    getchar();

    if (line > l->tongso || line < 1) {
        printf("Khong ton tai!\n");
        return;
    }

    int i = 1;
    student *curr = l->first;
    student *prev = NULL;
    while (curr != NULL) {
        if (line == 1) {
            l->first = curr->next;
            free(curr);
            l->tongso--;
            break;
        } else if (i == line) {
            prev->next = curr->next;
            free(curr);
            l->tongso--;
            break;
        }
        prev = curr;
        i++;
        curr = curr->next;
    }
    writeFile(l, 0);
}

void reFile()  {
    remove(fN);
}

int main() {
    listst *list = (listst *) malloc(sizeof(listst));
    initList(list);
    int ft = -1;

    do {
        printf("\t1. Write\n\t2. Read\n\t3. Sort\n\t4. Append\n\t5. Edit\n\t6. Remove\n\t0. Exit\n");
        scanf("%d", &ft);
        
        switch (ft) {
            case 1:
                // printf("!!!Luu y: neu file truoc do co du lieu, WRITE se them du lieu moi vao cuoi file, neu ban muon khoi tao lai file nhap -1, neu khong vui long nhap so bat ki | thanks!\n");
                // int chk;
                // scanf("%d", &chk);
                // if (chk == -1) reFile();
                printf("Nhap so luong hoc sinh: ");
                int shs;
                scanf("%d", &shs);
                getchar();
                writeFile(list, shs);
                break;
            
            case 2:
                initList(list);
                readFile(list, 1);
                break;    

            case 3:
                int standard = -1;
                printf("\t\t1. Toan\n\t\t2. Van\n\t\t3. Anh\n\t\t4. Trung Binh\n\t\tAny number for sort by Ten (Exception: Key 'Break')\n");
                scanf("%d", &standard);
                sort(list, standard);
                break;

            case 4:
                appendFile(list);
                break;

            case 5:
                editFile(list);
                break;

            case 6:
                rmv(list);
                break;

            default:
                break;
        }
    } while (ft != 0);
}