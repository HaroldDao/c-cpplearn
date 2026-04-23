#include <iostream>
#include <string>

using namespace std;

struct Person
{
    Person(std::string fn)
    {
        fullname = fn;
    }
    string fullname;
    Person* left_neighbourhood = NULL;
    Person* right_neighbourhood = NULL;
};

void print_neighbourhood(Person *person)
{
    // Noi dung can hoan thanh
    Person *curr = person;
    if (curr->left_neighbourhood == NULL && curr->right_neighbourhood == NULL) {
        cout << person->fullname << " Khong o trong xom? ==> Khong co hang xom!\n";
    } else if (curr->left_neighbourhood == NULL && curr->right_neighbourhood != NULL) {
        cout << "Hang xom cua " << person->fullname << " la: " << curr->right_neighbourhood->fullname;
        cout << "\n";
    } else if (curr->left_neighbourhood != NULL && curr->right_neighbourhood != NULL) {
        cout << "Hang xom cua " << person->fullname << " la: " << curr->left_neighbourhood->fullname << ", " << curr->right_neighbourhood->fullname;
        cout << "\n";
    } else {
        cout << "Hang xom cua " << person->fullname << " la: " << curr->left_neighbourhood->fullname;
        cout << "\n";
    }

}

void check_neighbourhood(Person* person1, Person* person2)
{
    if (person1 == person2) {
        cout << "Hai ma mot, mot ma hai!\n";
        return;
    } else if (((person1->right_neighbourhood == person2) || (person1->left_neighbourhood == person2)) && ((person2->left_neighbourhood == person1) || (person2->right_neighbourhood == person1))) {
        cout << person1->fullname << " la hang xom cua " << person2->fullname;
        cout << "\n";
    } else {
        cout << person1->fullname << " khong la hang xom cua " << person2->fullname;
        cout << "\n";
        return;
    }

}

string check_position(Person* person)
{
    // Noi dung can hoan thanh
    bool a = false;
    string rtn;
    Person *curr = person;
    while (curr != NULL) {
        if (curr == person && curr->right_neighbourhood != NULL) {
            a = true;
            if (curr->left_neighbourhood == NULL && curr->right_neighbourhood != NULL) {
                rtn = "dau xom";
            } else if (curr->left_neighbourhood != NULL && curr->right_neighbourhood != NULL) {
                rtn = "giua xom";
            }
            break;
        } else if (curr->left_neighbourhood != NULL && curr->right_neighbourhood == NULL) {
            a = true;
            rtn = "cuoi xom";
        }
        curr = curr->right_neighbourhood;
    }

    if (a == false) {
        rtn = "khong trong xom!";
    }
    return rtn;
}

int main()
{
    Person* vu = new Person("Vu");
    Person* ozawa = new Person("Maria Ozawa");
    Person* ngoc_trinh = new Person("Ngoc Trinh");
    Person* son_tung_mtp = new Person("Son Tung MTP");
    Person* tokuda = new Person("Tokuda");

    {
        // Noi dung cau 1
        vu->left_neighbourhood = NULL;
        vu->right_neighbourhood = ozawa;
        ozawa->left_neighbourhood = vu;
        ozawa->right_neighbourhood = ngoc_trinh;
        ngoc_trinh->left_neighbourhood = ozawa;
        ngoc_trinh->right_neighbourhood = son_tung_mtp;
        son_tung_mtp->left_neighbourhood = ngoc_trinh;
        son_tung_mtp->right_neighbourhood = NULL;
    }

    {
        std::cout << "Test 1 - In thong tin hang xom: \n";
        cout << "\t"; print_neighbourhood(vu);
        cout << "\t"; print_neighbourhood(ngoc_trinh);
        cout << "\t"; print_neighbourhood(son_tung_mtp);
        cout << "\t"; print_neighbourhood(tokuda);
    }

    {
        std::cout << "Test 2 - Kiem tra hang xom: \n";
        cout << "\t"; check_neighbourhood(ozawa, vu);
        cout << "\t"; check_neighbourhood(vu, ozawa);
        cout << "\t"; check_neighbourhood(vu, ngoc_trinh);
        cout << "\t"; check_neighbourhood(son_tung_mtp, ngoc_trinh);
    }

    {
        std::cout << "Test 3 - Kiem tra vi tri: \n";
        cout << "\tVi tri cua " << vu->fullname << " la: " << check_position(vu) << "\n";
        cout << "\tVi tri cua " << ngoc_trinh->fullname << " la: " << check_position(ngoc_trinh) << "\n";
        cout << "\tVi tri cua " << son_tung_mtp->fullname << " la: " << check_position(son_tung_mtp) << "\n";
        cout << "\tVi tri cua " << tokuda->fullname << " la: " << check_position(tokuda) << "\n";
    }
}

