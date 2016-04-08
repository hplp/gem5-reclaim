#include <iostream>
#include <functional>
#include <string>
#include <cstdint>

template<typename T>
void expect(const T& expected, std::function<T()> func, const std::string& test)
{
    T result = func();
    std::cout << test << ": ";
    if (result == expected)
        std::cout << "PASS";
    else
        std::cout << "FAIL (expected " << expected << ", found " << result << ")";
    std::cout << std::endl;
}

int main()
{
    using namespace std;

    // I (base)
    expect<int>(4096, []{int a; asm("lui %0,0x1" : "=r" (a)); return a;}, "lui 0x1");
    expect<int>(-2147483648, []{int a; asm("lui %0,0x80000" : "=r" (a)); return a;}, "lui 0x80000");
    // TODO: Test jal
    expect<int>(8, []{
        int a = 0;
        asm("auipc %0,0x0;"
            "jalr t0,%0,12;"
            "addi %0,zero,0;"
            "sub %0,t0,%0;"
            :"=r" (a));
        return a;
    }, "auipc,jalr");
    expect<int>(34, []{
        int a = 45;
        if (a < 1000)
            a = -4;
        if (a < -56)
            a = 0xFFFFFF;
        if (a == -4)
            a = 0;
        if (a > -5)
        {
            if (a > 5)
                a = 1;
            else
                a = -1;
        }
        if (a != 1)
            a = -97;
        else
            a = 8;
        unsigned int b = a;
        if (b < 45)
            a = 100;
        if (b < 0xFFFFFFFF)
            a = 34;
        return a;
    }, "branch");

    return 0;
}
