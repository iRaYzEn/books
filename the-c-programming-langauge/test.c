#include <stdio.h>

#define MAXLINE 1000

int main() {
    char c[MAXLINE];
    int i = 0;

    while ((c[i] = getchar()) != EOF) {
        printf("%c", *c);
    }
}
