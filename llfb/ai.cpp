#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct sp {
    double dongia, soluong, thanhtien;
    string name;
    sp *next;

    sp(string nm, double dg, double sl) {
        name = nm;
        dongia = dg;
        soluong = sl;
        thanhtien = sl * dg;
        next = NULL;
    }
};

struct list {
    int tongso = 0;
    sp *first = NULL;

    void append(sp *app) {
        app->next = NULL;
        if (first == NULL) {
            first = app;
            tongso++;
            return;
        }

        sp *curr = first;
        while (curr->next != NULL) {
            curr = curr->next;
        }
        curr->next = app;
        tongso++;
    }

    void showlist() {
        if (first == NULL) return;

        const int width = 10;

        cout << fixed << setprecision(2);

        cout << left 
            << setw(width + 30) << "TenSP" 
            << setw(width) << "Don gia" 
            << setw(width) << "So luong" 
            << setw(width) << "Thanh tien" 
            << "\n";

        sp *curr = first;
        while (curr != NULL) {
            cout << left 
            << setw(width + 30) << curr->name 
            << setw(width) << curr->dongia 
            << setw(width) << curr->soluong 
            << setw(width) << curr->thanhtien 
            << "\n";
            curr = curr->next;
        }
    }
    
    void WRITE() {
        FILE *fw = fopen("bill.dat", "wb");
        if (fw == NULL) return;

        fwrite(&tongso, sizeof(int), 1, fw);

        sp *curr = first;
        while (curr != NULL) {
            int len = curr->name.length();
            fwrite(&len, sizeof(int), 1, fw);
            fwrite(curr->name.c_str(), sizeof(char), len, fw);
            
            fwrite(&curr->dongia, sizeof(double), 1, fw);
            fwrite(&curr->soluong, sizeof(double), 1, fw);
            fwrite(&curr->thanhtien, sizeof(double), 1, fw);
            
            curr = curr->next;
        }
        
        fclose(fw);
        cout << "Da ghi file thanh cong!" << endl;
    }

    void READ() {
        FILE *fr = fopen("bill.dat", "rb");
        if (fr == NULL) {
            cout << "Khong tim thay file bill.dat!" << endl;
            return;
        }
        
        int n;
        fread(&n, sizeof(int), 1, fr);
        
        cout << "So luong san pham trong file: " << n << endl;

        for (int i = 0; i < n; i++) {
            int len;
            fread(&len, sizeof(int), 1, fr);
            
            char* buffer = new char[len + 1];
            fread(buffer, sizeof(char), len, fr);
            buffer[len] = '\0';
            string nm(buffer);
            delete[] buffer;
            
            double dg, sl, tt;
            fread(&dg, sizeof(double), 1, fr);
            fread(&sl, sizeof(double), 1, fr);
            fread(&tt, sizeof(double), 1, fr);
            
            // Tạo sp mới (constructor sẽ tự tính thanhtien)
            sp* newSp = new sp(nm, dg, sl);
            append(newSp);
            
            // Hoặc nếu muốn dùng thanhtien từ file, bỏ comment dòng dưới
            // newSp->thanhtien = tt;
        }
        
        fclose(fr);
        cout << "Doc file thanh cong!" << endl;
    }
};

int main() {
    list *lt = new list;
    
    // TẠO DỮ LIỆU VÀ GHI FILE
    cout << "=== TAO VA GHI FILE ===" << endl;
    sp *sp1 = new sp("sp1", 12, 9.2);
    sp *sp2 = new sp("sp2", 3, 5.6);
    sp *sp3 = new sp("sp3", 5.8, 29);
    
    lt->append(sp1);
    lt->append(sp2);
    lt->append(sp3);
    
    cout << "\nDanh sach vua tao:" << endl;
    lt->showlist();
    
    lt->WRITE();
    
    // TẠO LIST MỚI ĐỂ ĐỌC FILE
    cout << "\n=== DOC FILE ===" << endl;
    list *lt2 = new list;
    lt2->READ();
    
    cout << "\nDanh sach doc tu file:" << endl;
    lt2->showlist();
    
    return 0;
}