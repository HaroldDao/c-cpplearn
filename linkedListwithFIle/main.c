#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char fileName[30] = "hanghoa.txt";


typedef struct sp {
    char ten[40];
    int sl;
    double dg, tt;
    struct sp *next;
} sp;

typedef struct listsp {
    sp *first;
    int tongsp;
} listsp;

void initsp(listsp *l) {
    l->first = NULL;
    l->tongsp = 0;
}

sp *new_sp(char ten[], double dg, int sl) {
    sp *cre = (sp *) malloc(sizeof(sp));
    if (cre != NULL) {
        strcpy(cre->ten, ten);
        cre->dg = dg;
        cre->sl = sl;
        cre->tt = dg * sl;
    }
    cre->next = NULL;
    return cre;
}

void append(listsp *l, sp *newNode) {
    if (l->first == NULL) {
        l->first = newNode;
    } else {
        sp *curr = l->first;
        while (curr->next != NULL) {
            curr = curr->next;
        }
        curr->next = newNode;
    }
    l->tongsp++;
}

void writeSP(listsp *l) {
    FILE *fw = fopen(fileName, "w");
    if (fw == NULL) {
        printf("Loi mo file!");
        return;
    }
    sp *curr = l->first;
    while (curr != NULL) {
        fprintf(fw, "%s|%.2lf|%d|%.2lf\n", curr->ten, curr->dg, curr->sl, curr->tt);
        curr = curr->next;
    }
    fclose(fw);
}

void showlist(listsp *l) {
    if (l->first == NULL) {
        return;
    }
    printf("%-10s %-30s %15s %15s %15s\n","STT", "Ten SP", "Don Gia", "So Luong", "Thanh Tien");
    printf("-----------------------------------------------------------------------------------------\n");    sp *curr = l->first;
    int i = 1;
    while (curr != NULL) {
        printf("%-10d %-30s %15.2lf %15d %15.2lf\n", i, curr->ten, curr->dg, curr->sl, curr->tt);
        i++;
        curr = curr->next;
    }
}

void readF(listsp *l) {
    initsp(l);
    FILE *fr = fopen(fileName, "r");
    if (fr == NULL) {
        return;
    }
    char buffer[200];
    while (fgets(buffer, sizeof(buffer), fr) != NULL) {
        buffer[strcspn(buffer, "\n")] = 0;
        
        // Tách chuỗi
        char *ten = strtok(buffer, "|");
        char *dg_str = strtok(NULL, "|");
        char *sl_str = strtok(NULL, "|");
        char *tt_str = strtok(NULL, "|");
        
        if (ten == NULL || dg_str == NULL || sl_str == NULL) {
            printf("Loi dinh dang dong: %s\n", buffer);
            continue;
        }

        double dg = atof(dg_str);  // atof = ASCII to float
        int sl = atoi(sl_str);     // atoi = ASCII to int
        
        // Tạo node mới và thêm vào danh sách
        append(l, new_sp(ten, dg, sl));

    }
    showlist(l);
}

void editF(listsp *l) {
    initsp(l);
    FILE *fnew = fopen("hanghoam.txt", "w");
    FILE *fold = fopen(fileName, "r");

    if (fnew == NULL || fold == NULL) {
        printf("Loi mo file!\n");
        return;
    }

    int i = 1, index = 1;
    printf("Vi tri can sua: ");
    scanf("%d", &index);
    getchar();

    char buffer[200];
    sp *curr = l->first;
    while (fgets(buffer, sizeof(buffer), fold) != NULL) {
        buffer[strcspn(buffer, "\n")] = 0;

        char *ten = strtok(buffer, "|");
        char *dg_s = strtok(NULL, "|");
        char *sl_s = strtok(NULL, "|");

        if (ten == NULL || dg_s == NULL || sl_s == NULL) {
            printf("San pham loi /khong ton tai!");
            continue;
        }
        double dg = atof(dg_s);
        int sl = atoi(sl_s);     

        if (i == index) {
            char tenmoi[40];
            double dg ;
            int sl;
            printf("thong tin sp %d\n", i);
            printf("ten sp: ");
            fgets(tenmoi, sizeof(tenmoi), stdin);
            tenmoi[strcspn(tenmoi, "\n")] = 0;
            printf("don gia: ");
            scanf("%lf", &dg);
            printf("so luong: ");
            scanf("%d", &sl);
            getchar();
            append(l, new_sp(tenmoi, dg, sl));
            i++;
            continue;
        }
        append(l, new_sp(ten, dg, sl));
        i++;
    }
    writeSP(l);
    fclose(fnew);
    fclose(fold);
}

int main() {
    listsp *list = (listsp *) malloc(sizeof(listsp));
    initsp(list);
    int ft = -1;
    do {
        printf("\t1. Write\n\t2. Read\n\t0. Exit\n");
        scanf("%d", &ft);
        getchar();
        switch (ft) {
            case 1:
                remove(fileName);
                printf("so luong sp can nhap: ");
                int slsp;
                scanf("%d", &slsp);
                getchar();
                for (int i = 0; i < slsp; i++) {
                    char ten[40];
                    int sl;
                    double dg, tt;
                    printf("thong tin sp %d\n", i + 1);
                    printf("ten sp: ");
                    fgets(ten, sizeof(ten), stdin);
                    ten[strcspn(ten, "\n")] = 0;
                    printf("don gia: ");
                    scanf("%lf", &dg);
                    printf("so luong: ");
                    scanf("%d", &sl);
                    getchar();
                    append(list, new_sp(ten, dg, sl));
                }
                writeSP(list);
                break;
            case 2:
                readF(list);
                break;
            case 3:
                editF(list);
                break;
            default:
                break;
        }
    } while (ft != 0);
}