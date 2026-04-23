#include <iostream>

using namespace std;


int tuoi = 20;                                  // (*)
std::string que_quan = "Nhat Ban";     // (*)
int so_do_ba_vong[3] = {90,60,90};  // (*)
void xin_chao()
{
    std::string ho_ten = "Maria Ozawa";                 // (*)
    cout << "Xin chao. Toi ten la " << ho_ten << ".\n";
}

void thong_tin_tuoi()
{
    cout << "Toi nam nay " << tuoi << " tuoi.\n";
}

void thong_tin_que_quan()
{
    cout << "Toi den tu " << que_quan << ".\n";
}

void thong_tin_so_do()
{
    std::cout << "So do ba vong cua toi la: ";
    for(int i = 0; i < 3; i++)
    {
        cout << so_do_ba_vong[i] << " ";
    }
}


int main()
{

    {

        {
            {

                {

                }
                xin_chao();
            }
            thong_tin_tuoi();
        }
        thong_tin_que_quan();
    }
    thong_tin_so_do();
}
