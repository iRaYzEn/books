#include <stdio.h>

#define alphabetCount 26

int main() {
    int c;

    int alphabet[alphabetCount];
    for (int i = 0; i < alphabetCount; i++) {
        alphabet[i] = 0;
    }

    while ((c = getchar()) != EOF) {
        if (c >= 'a' && c <= 'z') {
            alphabet[c - 'a']++;
        } else if (c >= 'A' && c <= 'Z') {
            alphabet[c - 'A']++;
        }
    }

    for (int i = 'a', j = 0; i >= 'a' && i <= 'z'; i++, j++) {
        printf("%c: ", i);
        for (int k = 0; k < alphabet[j]; k++) {
            printf("|");
        }
        printf("\n");
    }
    return 0;
}
