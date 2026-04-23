#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

struct qltv {
    string maSach, tenSach, tenTacgia, nhaXuatban;
    int namXuatban;
    double gia;
};

int main() {
    int n;
    cout << "So luong cuon sach: ";
    cin >> n;
    cin.ignore();

    if (n < 0) return 0;

    qltv bookList[n];
    // a
    for (int i = 0; i < n; i++) {
        cout << "Thong tin cuon sach thu " << i + 1 << "\n";
        cout << "Ma sach: ";
        getline(cin, bookList[i].maSach);
        cout << "Ten sach: ";
        getline(cin, bookList[i].tenSach);
        cout << "Ten tac gia: ";
        getline(cin, bookList[i].tenTacgia);
        cout << "Nha xuat ban: ";
        getline(cin, bookList[i].nhaXuatban);
        cout << "Gia ban: ";
        cin >> bookList[i].gia;
        cout << "Nam xuat ban: ";
        cin >> bookList[i].namXuatban;
        cin.ignore();
        cout << "\n";
    }

    // b
    cout << "\n+++++Danh sach sach vua nhap+++++ \n";
    cout << left
         << setw(15) << "Ma sach"
         << setw(30) << "Ten sach"
         << setw(30) << "Ten tac gia"
         << setw(25) << "Nha xuat ban"
         << setw(20) << "Gia"
         << setw(12) << "Nam xuat ban"
         << "\n";

    for (int i = 0; i < n; i++) {
        cout << left
             << setw(15) << bookList[i].maSach
             << setw(30) << bookList[i].tenSach
             << setw(30) << bookList[i].tenTacgia
             << setw(25) << bookList[i].nhaXuatban
             << setw(20) << bookList[i].gia
             << setw(12) << bookList[i].namXuatban
             << "\n";
    }

    // c
    int q;
    int qrr[n];
    cout << "\nNhap so luong cuon sach muon mua";
    cin >> q;
    cin.ignore();
    for (int i = 0; i < q; i++) {
        cout << "Nhap so thu tu cuon sach muon mua thu" << i + 1 << ": ";
        cin >> qrr[i];
        cout << "\n";
    }
    double tongTien;
    cout << "=====Hoa don=====\n";
    cout << left
         << setw(15) << "Ma sach"
         << setw(30) << "Ten sach"
         << setw(30) << "Ten tac gia"
         << setw(25) << "Nha xuat ban"
         << setw(20) << "Gia"
         << setw(12) << "Nam xuat ban"
         << "\n";
    for (int i = 0; i < q; i++) {
        cout << left
             << setw(15) << bookList[qrr[i]].maSach
             << setw(30) << bookList[qrr[i]].tenSach
             << setw(30) << bookList[qrr[i]].tenTacgia
             << setw(25) << bookList[qrr[i]].nhaXuatban
             << setw(20) << bookList[qrr[i]].gia
             << setw(12) << bookList[qrr[i]].namXuatban
             << "\n";
        tongTien += bookList[qrr[i]].gia;
    }
    cout << left << setw(100) << "Tong tien la" << setw(32) << tongTien;

    // d
    double highestprice;
    int hpc;
    for (int i = 0; i < n; i++) {
        if (bookList[i].gia > highestprice) {
            highestprice = bookList[i].gia;
            hpc = i;
        }
    }
    cout << "\nCuon sach co gia cao nhat: \n"
         << left
         << setw(15) << bookList[hpc].maSach
         << setw(30) << bookList[hpc].tenSach
         << setw(30) << bookList[hpc].tenTacgia
         << setw(25) << bookList[hpc].nhaXuatban
         << setw(20) << bookList[hpc].gia
         << setw(12) << bookList[hpc].namXuatban
         << "\n";
    // e
    string nxb[4] = {"nxb gd", "gd", "nxbgd"};
    for (int i = 0; i < n; i++) {
        if (bookList[i].namXuatban > 2000 && (bookList[i].nhaXuatban == nxb[0] || bookList[i].nhaXuatban == nxb[1] || bookList[i].nhaXuatban == nxb[2])) {
            cout << "\nCuon sach thuoc nxb gd va nam tu 2000 tro len: \n"
                 << left
                 << setw(15) << bookList[i].maSach
                 << setw(30) << bookList[i].tenSach
                 << setw(30) << bookList[i].tenTacgia
                 << setw(25) << bookList[i].nhaXuatban
                 << setw(20) << bookList[i].gia
                 << setw(12) << bookList[i].namXuatban
                 << "\n";
        }
    }
}
