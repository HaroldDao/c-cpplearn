#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct sp {
    char pdName[40], masp[20];
    double dg, tt;
    int sl;
    struct sp *next;    
} sp;   

typedef struct list {
    sp *first;
    int tong_so;
} list;

void initList(list *l) {
    l->first = NULL;
    l->tong_so = 0;
}

sp *newSp(char *m, char *nm, double dg, int sl) {
    sp *cre = (sp *) malloc(sizeof(sp));
    if (cre != NULL) {
        strcpy(cre->masp, m);
        strcpy(cre->pdName, nm);
        cre->dg = dg;
        cre->sl = sl;
        cre->tt = dg * sl; 
        cre->next = NULL;
    }
    return cre;
}

void append(list *l, sp *app) {
    if (l == NULL) return;

    app->next = NULL;
    if (l->first == NULL) {
        l->first = app;
        l->tong_so++;
        return;
    }

    sp *curr = l->first;
    while (curr->next != NULL) {
        curr = curr->next;
    }
    curr->next = app;
    l->tong_so++;
}

void showList(list *l) {
    if (l == NULL || l->tong_so == 0) return;

    sp *curr = l->first;
    while (curr != NULL) {
        printf("%s, %s, %.2lf, %.2lf, %.2lf\n", curr->masp, curr->pdName, curr->dg, curr->sl, curr->tt);
        curr = curr->next;
    }
}


void clear(list *l) {
    sp *curr = l->first;
    while (curr != NULL) {
        sp *NEXTTEMP = curr->next;
        free(curr);
        curr = NEXTTEMP;
    }
}

void WRITE(list *l) {
    FILE *fw = fopen("hanghoa.dat", "wb");
    if (fw == NULL) return;

    fwrite(&l->tong_so, sizeof(int), 1, fw);
    sp *curr = l->first;
    while (curr != NULL) {
        fwrite(curr->masp, sizeof(curr->masp), 1, fw);
        fwrite(curr->pdName, sizeof(curr->pdName), 1, fw);
        fwrite(&curr->dg, sizeof(double), 1, fw);
        fwrite(&curr->sl, sizeof(int), 1, fw);
        fwrite(&curr->tt, sizeof(double), 1, fw);
        curr = curr->next;
    }

    fclose(fw);
}

void READ(list *l, bool show) {
    FILE *fr = fopen("hanghoa.dat", "rb");
    if (fr == NULL || l == NULL) return;

    initList(l);
    int n;
    fread(&n, sizeof(int), 1, fr);
    for (int i = 0; i < n; i++) {
        sp *s = (sp *) malloc(sizeof(sp));
        fread(s->masp, sizeof(s->masp), 1, fr);
        fread(s->pdName, sizeof(s->pdName), 1, fr);
        fread(&s->dg, sizeof(double), 1, fr);
        fread(&s->sl, sizeof(int), 1, fr);
        fread(&s->tt, sizeof(double), 1, fr);
        append(l, s);
    }

    if (show) showList(l);

    fclose(fr);
}

int main() {
    list *lt = (list *) malloc(sizeof(list));
    initList(lt);

    int feature = -1;

    do {
        printf("\t1. WRITE\n\t2. READ\n\t0. EXIT\n");
        scanf("%d", &feature);

        if (feature == 1) {
            int n;
            printf("So luong sp: ");
            scanf("%d", &n);
            getchar();

            char pdName[40], masp[20];
            double dg, tt;
            int sl;
            for (int i = 0; i < n; i++) {
                printf("Thong tin sp %d\n", i + 1);
                printf("Ma sp: ");
                fgets(masp, sizeof(masp), stdin);
                masp[strcspn(masp, "\n")] = 0;
                printf("Ten sp: ");
                fgets(pdName, sizeof(pdName), stdin);
                pdName[strcspn(pdName, "\n")] = 0;
                printf("Don gia: ");
                scanf("%lf", &dg);
                printf("So luong: ");
                scanf("%d", &sl);
                getchar();
                append(lt, newSp(masp, pdName, dg, sl));
            }

            WRITE(lt);
        }
        
        else if (feature == 2) {
            READ(lt, true);
        }

        if (feature == 0) {
            clear(lt);
            free(lt);
            break;
        }

    } while (feature != 0);
}