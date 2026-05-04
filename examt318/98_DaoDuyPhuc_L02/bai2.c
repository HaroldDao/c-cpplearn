#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

struct dateofBirth {
    int ngay, thang, nam;
};

struct Student {
    char sbd[20];
    char hoTen[50];
    struct dateofBirth ns;
    float toan, van, anh, dtb;
};


struct Student danhSach[100];
int soLuong = 0;


void nhapDS() {
    int n;
    printf("Nhap so luong sinh vien can them: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        printf("\n--- Sinh vien thu %d ---\n", soLuong + 1);
        printf("SBD: "); scanf("%s", danhSach[soLuong].sbd);

        getchar(); 
        printf("Ho ten: "); fgets(danhSach[soLuong].hoTen, 50, stdin);
        danhSach[soLuong].hoTen[strcspn(danhSach[soLuong].hoTen, "\n")] = 0; 

        printf("Ngay thang nam sinh (dd mm yyyy): ");
        scanf("%d %d %d", &danhSach[soLuong].ns.ngay, &danhSach[soLuong].ns.thang, &danhSach[soLuong].ns.nam);

        printf("Diem Toan, Van, Anh: ");
        scanf("%f %f %f", &danhSach[soLuong].toan, &danhSach[soLuong].van, &danhSach[soLuong].anh);
        danhSach[soLuong].dtb = (danhSach[soLuong].toan + danhSach[soLuong].van + danhSach[soLuong].anh) / 3.0;

        soLuong++; 
    }
}

void hienThi() {
    printf("\n%-5s %-10s %-20s %-12s %-5s %-5s %-5s %-5s\n",
        "STT", "SBD", "Ho_ten", "Ngaysinh", "Toan", "Van", "Anh", "DTB");
    for (int i = 0; i < soLuong; i++) {
        printf("%-5d %-10s %-20s %02d/%02d/%-6d %-5.1f %-5.1f %-5.1f %-5.1f\n",
            i + 1, danhSach[i].sbd, danhSach[i].hoTen,
            danhSach[i].ns.ngay, danhSach[i].ns.thang, danhSach[i].ns.nam,
            danhSach[i].toan, danhSach[i].van, danhSach[i].anh, danhSach[i].dtb);
    }
}


void delSt() {
    char sbdXoa[20];
    printf("Nhap SBD can xoa: "); scanf("%s", sbdXoa);

    int index = -1;
    for (int i = 0; i < soLuong; i++) {
        if (strcmp(danhSach[i].sbd, sbdXoa) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        printf("Khong tim thay!\n");
    }
    else {
        for (int i = index; i < soLuong - 1; i++) {
            danhSach[i] = danhSach[i + 1];
        }
        soLuong--; 
    }
}

int main() {
    int chon;
    do {
        printf("\n1. Tao DS | 2. Hien thi | 3. Xoa | 4. Thoat: ");
        scanf("%d", &chon);
        if (chon == 1) nhapDS();
        else if (chon == 2) hienThi();
        else if (chon == 3) { delSt(); hienThi(); }
    } while (chon != 4);
    return 0;
}