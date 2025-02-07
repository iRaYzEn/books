#include <stdio.h>

#define ARRAYLENGHT 100

int main() {
    int c, charCount, wordsCountCount;
    charCount = wordsCountCount = 0;

    int wordsCount[ARRAYLENGHT];
    for (int i = 0; i < ARRAYLENGHT; i++) {
        wordsCount[i] = 0;
    }

    while ((c = getchar()) != EOF) {
        if (c >= 'A' && c <= 'z') {
            charCount++;
        } else if (c == ' ' || c == '\n' || c == '\t') {
            if (charCount != 0) {
                wordsCount[wordsCountCount] = charCount;
                charCount = 0;
                wordsCountCount++;
            }
        }
    }

    for (int j = 0; j < wordsCountCount; j++) {
        printf("word number %d ", j + 1);
        for (int k = 0; k < wordsCount[j]; k++) {
            printf("|");
        }
        printf("\n");
    }


    return 0;
}
