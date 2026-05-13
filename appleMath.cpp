#include <iostream>

double price_calculator(double kg) {
    double price;
    scanf("%lf", &price);
    return (price * kg);
}

int main() {
    double weight, a; 
    scanf("%lf %lf", &weight, &a);

    double x = price_calculator(weight);

    if (a > price_calculator(weight)) {
        printf("need to refund");
    }

}