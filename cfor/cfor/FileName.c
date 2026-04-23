#include <stdio.h>
#include <math.h>

int main() {
	int x, y;
	scanf("%d", &x);
	int a = y - x;
	int i;
	for (i = 0; i < a; i++) {
		int b = sqrt(x + i) + 1;
		if (i == 0 || i == 1) {
			return 0;
		}
	}
}