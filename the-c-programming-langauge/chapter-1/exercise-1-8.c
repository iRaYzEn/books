#include <stdio.h>

int main() {
    int c, lc, tc, bc;

    lc = 0;
    tc = 0;
    bc = 0;
    while ((c = getchar()) != EOF) {
        if (c == '\n')
            lc++;
        else if (c == '\t')
            tc++;
        else if (c == ' ')
            bc++;
    }
    printf("line count %d, tab count %d, blank count %d\n", lc, tc, bc);
}
