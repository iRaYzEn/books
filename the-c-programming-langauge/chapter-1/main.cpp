#include <iostream>

template <int i> 
void a() {
    a<i + 1>();
}
void foo() {
    a<0>();
}
int main() {
    std::cout << "hello, world" << std::endl;

    char a[10];
    a[10] = 0;

    return 0;
}
