#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

//void bai1() {
//	//int a, b, c, d;
//	for (int q = 1; q <= 9; q++) {
//		for (int w = 0; w <= 9; w++) {
//			for (int e = 0; e <= 9; e++) {
//				for (int r = 0; r <= 9; r++) {
//					if (q == e + r - w) {
//						cout << q << w << e << r;
//						cout << "\n";
//					}
//				}
//			}
//		}
//	}
//}

struct product {
	string pdCode, pdName, pdDVT;
	float pdPrice, pdT;
	int pdSl;
	void thanhTien() {
		pdT = pdSl * pdPrice;
		cout << pdT;
	}
};

int sl = 10;
product listProduct[10];

void pdImp() {
	int n; 
	cout << "How many products do you wanna import:? ";
	cin >> n;
	cin.ignore();
	sl = n;
	for (int i = 0; i < n; i++) {
		cout << "Ma san pham " << i + 1 << ": ";
		getline(cin, listProduct[i].pdCode);
		cout << "Ten san pham " << i + 1 << ": ";
		getline(cin, listProduct[i].pdName);
		cout << "Don vi tinh san pham " << i + 1 << ": ";
		cin >> listProduct[i].pdDVT;
		cin.ignore();
		cout << "Don gia san pham " << i + 1 << ": ";
		cin >> listProduct[i].pdPrice;
		cout << "So luong: ";
		cin >> listProduct[i].pdSl;
		cin.ignore();
		cout << "\n";
	}
}

void priPd() {
	cout << left 
		<< setw(20) << "Ma san pham" 
		<< setw(30) << "Ten san pham" 
		<< setw(15) << "Don vi tinh" 
		<< setw(10) << "Don gia" 
		<< setw(10) << "So luong" 
		<< setw(15) <<"Thanh tien" << "\n";

	int n = sl;
	for (int i = 0; i < n; i++) {
		cout << left
			<< setw(20) << listProduct[i].pdCode
			<< setw(30) << listProduct[i].pdName
			<< setw(15) << listProduct[i].pdDVT
			<< setw(10) << listProduct[i].pdPrice
			<< setw(10) << listProduct[i].pdSl
			<< setw(15) << listProduct[i].pdPrice * listProduct[i].pdSl << "\n";
	}
}

int arr[10] = { 2, 8, 3, 9, 3 ,9, 8, 7, 5, 4 };
int arrk[10];
void sortbysl() {
	for (int i = 0; i < sl - 1; i++) {
		int z = 0;
		for (int j = i + 1; j < sl; j++) {
			if (arr[j] < arr) {
				arrk[i] = j;
			}
		}
	}
}
int main() {
	//int k;
	//cout << "[1] Nhap san pham / import product" << "\n"
	//	 << "[2] "
	//	 << "\n What do you wanna do?";

	//pdImp();
	//priPd();

	sortbysl();
	for (int i = 0; i < sl; i++) {
		cout << arrk[i];
	}
	
}