#include <stdio.h>
#include <string.h>

char fileName[30] = "data.txt";

void writeF(char *content) {
    FILE *fi;
    fi = fopen(fileName, "w");
    fprintf(fi, "%s", content);
    fclose(fi);
}

void readF() {
    FILE *fr;
    fr = fopen(fileName, "r");
    if (fr == NULL) {
    printf("nothing!!!!"); 
    return;
    }
    char buffer[100];
    while (fgets(buffer, sizeof(buffer), fr) != NULL) {
        printf("%s", buffer);
    }
    printf("\n");
    fclose(fr);
}

void appendF(char *sth) {
    FILE *fa;
    fa = fopen(fileName, "a");
    fprintf(fa, "\n%s", sth);
    fclose(fa);
}


void editF() {
    FILE *f_old = fopen(fileName, "r");
    FILE *f_new = fopen("temp.txt", "w");
    if (f_old == NULL || f_new == NULL) {
        printf("Loi mo file\n");
        return;
    }
    int needEdit = 0;
    char content[100] = "";
    printf("Dong can sua: ");
    scanf("%d", &needEdit);
    getchar();
    int linecurr = 1;
    while (fgets(content, sizeof(content), f_old) != NULL) {
        if (linecurr == needEdit) {
            fgets(content, sizeof(content), stdin);
        }
        fprintf(f_new, "%s", content);
        linecurr++;
    }
    fclose(f_old);
    fclose(f_new);
    remove(fileName);
    rename("temp.txt", fileName);
}

int main() {
    int ft = -1;
    do {
        printf("\t1.Write\n\t2.Edit\n\t3.Read\n\t4.Append\n\t0.Exit\n");
        char content[100] = "";
        char sth[100] = "";
        scanf("%d", &ft);
        getchar();
        if (ft == 1) {
            printf("Write here: ");
            fgets(content, sizeof(content), stdin);
            content[strcspn(content, "\n")] = 0;
            writeF(content);
        } else if (ft == 2) {
            editF();
        } else if (ft == 3) {
            readF();
        } else if (ft == 4) {
            printf("How many lines do you want to append?: ");
            int lines;
            scanf("%d", &lines);
            if (lines > 0) {
                for (int i = 0; i < lines; i++) {
                    printf("Write line %d:", i + 1);
                    getchar();
                    fgets(sth, sizeof(sth), stdin);
                    sth[strcspn(sth, "\n")] = 0;
                    appendF(sth);
                }
            }
        } else if (ft == 0) break;
    } while (ft != 0);
    
}