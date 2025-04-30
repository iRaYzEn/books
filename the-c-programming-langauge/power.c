#include <stdio.h>

// it terns out that variables names in the function prototype is not required
int power(int, int);

int main() {
    int i;

    for (i = 0; i < 10; i++) {
        printf("%d %d %d ", i, power(2, i), power(-3, i));
    }

    return 0;
}

int power(int base, int n) {

    int i, p = 1;

    for (i = 1; i <= n; i++) {
        p = p * base;
    }
    return p;
}
