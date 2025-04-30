#include <stdio.h>

#define MAXLINE 1000

int getLine(char line, int maxline);
void copy(char to, char from);

int main() {
    int len;
    int max;
    char line;
    char longest;

    max = 0;
    while ((len = getLine(line, MAXLINE)) > 0)
        if (len > max) {
            max = len;
            copy(longest, line);
        }
    if (max > 0) {
        printf("%c", longest);
    }
    return 0;
}

int getLine(char s, int lim) {
    int c, i;

    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; i++)
        s = c;
    if (c == '\n') {
        s = c;
        i++;
    }
    s = '\0';
    return i;
}

void copy(char to, char from) {
    int i = 0;

    while ((to = from) != '\0'){
        i++;
    }
}

