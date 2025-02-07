#include <stdio.h>
/* print Fahrenheit-Celsius table
for fahr = 0, 20, ..., 300 */
#define LOWER 0
#define UPPER 300
#define STEP 20

int main() {
    float fahr;
    printf("temp converstion program\n");
    for (fahr = 300; fahr >= 0; fahr = fahr - 20) {
        printf("%3.0f\t%6.1f\n", fahr, (5.0 / 9.0) * (fahr - 32.0));
    }
}
