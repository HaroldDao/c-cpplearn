#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

struct users {
	int usAge;
	char usName[30];
};

int main() {
	struct users u1, u2;
	u1.usAge = 18;
	u2.usAge = 12;
	strcpy(u1.usName, "Harold");
	strcpy(u2.usName, "Undefine");
	printf("user: Name %s, Age %d\n",u1.usName, u1.usAge);
	printf("user: Name %s, Age %d", u2.usName, u2.usAge);
}