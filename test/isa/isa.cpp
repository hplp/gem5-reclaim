#include <iostream>
#include <functional>
#include <string>
#include <cstdint>
#include <type_traits>
#include <random>
#include <limits>

template<typename T>
bool expect(const T& expected, std::function<T()> func, const std::string& test)
{
    T result = func();
    std::cout << test << ": ";
    if (result == expected)
        std::cout << "PASS";
    else
        std::cout << "FAIL (expected " << expected << ", found " << result << ")";
    std::cout << std::endl;
    return result == expected;
}

template<typename M, typename R>
R load_test(M b)
{
    R a = 0;
    switch(sizeof(M))
    {
    case 1:
        if (std::is_signed<M>::value)
            asm("lb %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        else
            asm("lbu %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        break;
    case 2:
        if (std::is_signed<M>::value)
            asm("lh %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        else
            asm("lhu %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        break;
    case 4:
        if (std::is_signed<M>::value)
            asm("lw %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        else
            asm("lwu %0,0(%1)"
                : "=r" (a)
                : "r" (&b));
        break;
    case 8:
        asm("ld %0,0(%1)"
            : "=r" (a)
            : "r" (&b));
        break;
    }
    return a;
}

template<typename M> 
uint64_t store_test(M b)
{
    uint64_t a = 0;
    switch (sizeof(M))
    {
    case 1:
        asm("sb %0,0(%1)"
            :
            : "r" (b), "r" (&a));
        break;
    case 2:
        asm("sh %0,0(%1)"
            :
            : "r" (b), "r" (&a));
        break;
    case 4:
        asm("sw %0,0(%1)"
            :
            : "r" (b), "r" (&a));
        break;
    case 8:
        asm("sd %0,0(%1)"
            :
            : "r" (b), "r" (&a));
        break;
    }
    return a;
}

int main()
{
    using namespace std;

    // RV32I (base)
    expect<int>(4096, []{int a; asm("lui %0,0x1" : "=r" (a)); return a;}, "lui 0x1"); // LUI
    expect<int>(-2147483648, []{int a; asm("lui %0,0x80000" : "=r" (a)); return a;}, "lui 0x80000"); // LUI
    expect<int>(8, []{              // AUIPC and JALR
        int a = 0;
        asm("auipc %0,0x0;"
            "jalr t0,%0,12;"
            "addi %0,zero,0;"
            "sub %0,t0,%0;"
            : "=r" (a));
        return a;
    }, "auipc,jalr");
    expect<int>(34, []{             // BEQ, BNE, BLT, BGE, BLTU, BGEU
        int a = 45;
        if (a < 1000)
            a = -4;
        if (a < -56)
            a = 0xFFFFFF;
        if (a == -4)
            a = 0;
        if (a != -4)
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
    expect<int64_t>(7, []{return load_test<int8_t, int64_t>(0x07);}, "lb, positive"); // LB
    expect<int64_t>(numeric_limits<int8_t>::min(), []{return load_test<int8_t, int64_t>(0x80);}, "lb, negative"); // LB
    expect<int64_t>(1792, []{return load_test<int16_t, int64_t>(0x0700);}, "lh, positive"); // LH
    expect<int64_t>(numeric_limits<int16_t>::min(), []{return load_test<int16_t, int64_t>(0x8000);}, "lh, negative"); // LH
    expect<int64_t>(458752, []{return load_test<int32_t, int64_t>(0x00070000);}, "lw, positive"); // LW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return load_test<int32_t, int64_t>(0x80000000);}, "lw, negative"); // LW
    expect<uint64_t>(128, []{return load_test<uint8_t, uint64_t>(0x80);}, "lbu"); // LBU
    expect<uint64_t>(32768, []{return load_test<uint16_t, uint64_t>(0x8000);}, "lhu"); // LHU
    expect<uint64_t>(0xFF, []{return store_test<int8_t>(-1);}, "sb"); // SB
    expect<uint64_t>(0xFFFF, []{return store_test<int16_t>(-1);}, "sh"); // SH
    expect<uint64_t>(0xFFFFFFFF, []{return store_test<int32_t>(-1);}, "sw"); // SW
    expect<int64_t>(1073742078, []{ // ADDI
        int64_t addi = 0x3FFFFFFF;
        int64_t a = 0;
        asm("addi %0,%1,255"
            : "=r" (a)
            : "r" (addi));
        return a;
    }, "addi");
    expect<uint64_t>(1, []{         // ADDI
        uint64_t addi = -1;
        uint64_t a = 0;
        asm("addi %0,%1,2"
            : "=r" (a)
            : "r" (addi));
        return a;
    }, "addi, overflow");
    expect<bool>(true, []{          // SLTI
        int64_t slti = -1;
        bool a = false;
        asm("slti %0,%1,0"
            : "=r" (a)
            : "r" (slti));
        return a;
    }, "slti, true");
    expect<bool>(false, []{         // SLTI
        int64_t slti = 0;
        bool a = true;
        asm("slti %0,%1,-1"
            : "=r" (a)
            : "r" (slti));
        return a;
    }, "slti, false");
    expect<bool>(false, []{         // SLTIU
        int64_t sltiu = -1;
        bool a = false;
        asm("sltiu %0,%1,0"
            : "=r" (a)
            : "r" (sltiu));
        return a;
    }, "sltiu, false");
    expect<bool>(true, []{          // SLTIU
        int64_t sltiu = 0;
        bool a = true;
        asm("sltiu %0,%1,-1"
            : "=r" (a)
            : "r" (sltiu));
        return a;
    }, "sltiu, true");
    expect<int8_t>(-1, []{          // XORI
        uint8_t xori = 0xAA;
        int8_t a = 0;
        asm("xori %0,%1,0x55"
            : "=r" (a)
            : "r" (xori));
        return a;
    }, "xori");
    expect<int>(0, []{              // ANDI
        int andi = -1;
        int a = numeric_limits<int>::min();
        asm("andi %0,%1,0"
            : "=r" (a)
            : "r" (andi));
        return a;
    }, "andi (0)");
    expect<int64_t>(0x1234567812345678ULL, []{ // ANDI
        int64_t andi = 0x1234567812345678ULL;
        int64_t a = 0;
        asm("andi %0,%1,-1"
            : "=r" (a)
            : "r" (andi));
        return a;
    }, "andi (-1)");
    expect<int64_t>(65280, []{      // SLLI
        int64_t slli = 255;
        int a = 0;
        asm("slli %0,%1,8"
            : "=r" (a)
            : "r" (slli));
        return a;
    }, "slli, general");
    expect<int64_t>(numeric_limits<int64_t>::min(), []{ // SLLI
        int64_t slli = 255;
        int64_t a = 0;
        asm("slli %0,%1,63"
            : "=r" (a)
            : "r" (slli));
        return a;
    }, "slli, erase");
    expect<int64_t>(255, []{        // SRLI
        int64_t srli = 65280;
        int a = 0;
        asm("srli %0,%1,8"
            : "=r" (a)
            : "r" (srli));
        return a;
    }, "srli, general");
    expect<int64_t>(0, []{          // SRLI
        int64_t srli = 255;
        int a = -1;
        asm("srli %0,%1,8"
            : "=r" (a)
            : "r" (srli));
        return a;
    }, "srli, erase");
    expect<int64_t>(1, []{          // SRLI
        int64_t srli = std::numeric_limits<int64_t>::min();
        int a = 0;
        asm("srli %0,%1,63"
            : "=r" (a)
            : "r" (srli));
        return a;
    }, "srli, negative");
    expect<int64_t>(255, []{        // SRAI
        int64_t srai = 65280;
        int a = 0;
        asm("srai %0,%1,8"
            : "=r" (a)
            : "r" (srai));
        return a;
    }, "srai, general");
    expect<int64_t>(0, []{          // SRAI
        int64_t srai = 255;
        int a = -1;
        asm("srai %0,%1,8"
            : "=r" (a)
            : "r" (srai));
        return a;
    }, "srai, erase");
    expect<int64_t>(-1, []{         // SRAI
        int64_t srai = std::numeric_limits<int64_t>::min();
        int a = 0;
        asm("srai %0,%1,63"
            : "=r" (a)
            : "r" (srai));
        return a;
    }, "srai, negative");
    expect<int64_t>(1073742078, []{ // ADD
        int64_t rs1 = 0x3FFFFFFF;
        int64_t rs2 = 255;
        int64_t a = 0;
        asm("add %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "add");
    expect<int64_t>(-1, []{         // ADD
        uint64_t rs1 = 0x7FFFFFFFFFFFFFFFULL;
        uint64_t rs2 = 0x8000000000000000ULL;
        int64_t a = 0;
        asm("add %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "add, overflow");
    expect<uint64_t>(65535, []{     // SUB
        uint64_t rs1 = 65536;
        uint64_t rs2 = 1;
        int64_t a = 0;
        asm("sub %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sub");
    expect<int64_t>(-1, []{         // SUB
        uint64_t rs1 = 0x7FFFFFFFFFFFFFFFULL;
        uint64_t rs2 = 0x8000000000000000ULL;
        int64_t a = 0;
        asm("sub %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sub, \"overflow\"");
    expect<int64_t>(65280, []{      // SLL
        int64_t rs1 = 255;
        int64_t rs2 = 8;
        int a = 0;
        asm("sll %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sll, general");
    expect<int64_t>(numeric_limits<int64_t>::min(), []{ // SLL
        int64_t rs1 = 255;
        int64_t rs2 = 63;
        int64_t a = 0;
        asm("sll %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sll, erase");
    expect<bool>(true, []{          // SLT
        int64_t rs1 = -1;
        int64_t rs2 = 0;
        bool a = false;
        asm("slt %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "slt, true");
    expect<bool>(false, []{         // SLT
        int64_t rs1 = 0;
        int64_t rs2 = -1;
        bool a = true;
        asm("slt %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "slt, false");
    expect<bool>(false, []{         // SLTU
        int64_t rs1 = -1;
        int64_t rs2 = 0;
        bool a = false;
        asm("sltu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sltu, false");
    expect<bool>(true, []{          // SLTU
        int64_t rs1 = 0;
        int64_t rs2 = -1;
        bool a = true;
        asm("sltu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sltu, true");
    expect<int64_t>(-1, []{          // XOR
        uint64_t rs1 = 0xAAAAAAAAAAAAAAAAULL;
        uint64_t rs2 = 0x5555555555555555ULL;
        int8_t a = 0;
        asm("xor %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "xor");
    expect<int64_t>(255, []{        // SRL
        int64_t rs1 = 65280;
        int64_t rs2 = 8;
        int a = 0;
        asm("srl %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srl, general");
    expect<int64_t>(0, []{          // SRL
        int64_t rs1 = 255;
        int64_t rs2 = 8;
        int a = -1;
        asm("srl %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srl, erase");
    expect<int64_t>(1, []{          // SRL
        int64_t rs1 = std::numeric_limits<int64_t>::min();
        int64_t rs2 = 63;
        int a = 0;
        asm("srl %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srl, negative");
    expect<int64_t>(255, []{        // SRA
        int64_t rs1 = 65280;
        int64_t rs2 = 8;
        int a = 0;
        asm("sra %0,%1,8"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sra, general");
    expect<int64_t>(0, []{          // SRA
        int64_t rs1 = 255;
        int64_t rs2 = 8;
        int a = -1;
        asm("sra %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sra, erase");
    expect<int64_t>(-1, []{         // SRA
        int64_t rs1 = std::numeric_limits<int64_t>::min();
        int64_t rs2 = 63;
        int a = 0;
        asm("sra %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sra, negative");
    expect<int>(0, []{              // AND
        int rs1 = -1;
        int rs2 = 0;
        int a = numeric_limits<int>::min();
        asm("and %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "and (0)");
    expect<int64_t>(0x1234567812345678ULL, []{ // AND
        int64_t rs1 = 0x1234567812345678ULL;
        int64_t rs2 = -1;
        int64_t a = 0;
        asm("and %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "and (-1)");
    // TODO: FENCE
    // TODO: FENCE.I
    // Assume ecall works if the various print statements work
    // TODO: SBREAK
    expect<bool>(true, []{          // RDCYCLE (RDCYCLEH not defined for RV64I)
        uint64_t cycles = 0;
        asm("rdcycle %0" : "=r" (cycles));
        cout << "Cycles: " << cycles << endl;
        return cycles > 0;
    }, "rdcycle");
    expect<bool>(true, []{          // RDTIME (RDTIMEH not defined for RV64I)
        uint64_t time = 0;
        asm("rdtime %0" : "=r" (time));
        cout << "Time: " << time << endl;
        return time > 0;
    }, "rdtime");
    expect<bool>(true, []{          // RDINSTRET (RDINSTRETH not defined for RV64I)
        uint64_t instret = 0;
        asm("rdinstret %0" : "=r" (instret));
        cout << "Instructions Retired: " << instret << endl;
        return instret > 0;
    }, "rdinstret");

    // RV64I extension
    expect<int64_t>(0xFFFFFFFF, []{return load_test<uint32_t, uint64_t>(-1);}, "lwu"); // LWU
    expect<int64_t>(30064771072, []{return load_test<int64_t, int64_t>(30064771072);}, "ld"); // LD
    expect<uint64_t>(-1, []{return store_test<int64_t>(-1);}, "sd"); // SD
    expect<int64_t>(268435710, []{ // ADDIW
        int32_t addiw = 0x0FFFFFFF;
        int64_t a = 0;
        asm("addiw %0,%1,255"
            : "=r" (a)
            : "r" (addiw));
        return a;
    }, "addiw");
    expect<int64_t>(-2147481602, []{// ADDIW
        int32_t addiw = 0x7FFFFFFF;
        int64_t a = 0;
        asm("addiw %0,%1,0x7FF"
            : "=r" (a)
            : "r" (addiw));
        return a;
    }, "addiw, overflow");
    expect<int64_t>(0, []{           // ADDIW
        int64_t addiw = 0x7FFFFFFFFFFFFFFFLL;
        int64_t a = -1;
        asm("addiw %0,%1,1"
            : "=r" (a)
            : "r" (addiw));
        return a;
    }, "addiw, truncate");
    expect<int64_t>(65280, []{      // SLLIW
        int32_t slliw = 255;
        int64_t a = 0;
        asm("slliw %0,%1,8"
            : "=r" (a)
            : "r" (slliw));
        return a;
    }, "slliw, general");
    expect<int64_t>(numeric_limits<int32_t>::min(), []{ // SLLIW
        int32_t slliw = 255;
        int64_t a = 0;
        asm("slliw %0,%1,31"
            : "=r" (a)
            : "r" (slliw));
        return a;
    }, "slliw, erase");
    expect<int64_t>(numeric_limits<int32_t>::min(), []{ // SLLIW
        int64_t slliw = 0xFFFFFFF00800000LL;
        int64_t a = 0;
        asm("slliw %0,%1,8"
            : "=r" (a)
            : "r" (slliw));
        return a;
    }, "slliw, truncate");
    expect<int64_t>(255, []{        // SRLIW
        int32_t srliw = 65280;
        int a = 0;
        asm("srliw %0,%1,8"
            : "=r" (a)
            : "r" (srliw));
        return a;
    }, "srliw, general");
    expect<int64_t>(0, []{          // SRLIW
        int32_t srliw = 255;
        int a = -1;
        asm("srliw %0,%1,8"
            : "=r" (a)
            : "r" (srliw));
        return a;
    }, "srliw, erase");
    expect<int64_t>(1, []{          // SRLIW
        int32_t srliw = std::numeric_limits<int32_t>::min();
        int a = 0;
        asm("srliw %0,%1,31"
            : "=r" (a)
            : "r" (srliw));
        return a;
    }, "srliw, negative");
    expect<int64_t>(1, []{          // SRLIW
        int64_t srliw = 0xFFFFFFFF80000000LL;
        int a = 0;
        asm("srliw %0,%1,31"
            : "=r" (a)
            : "r" (srliw));
        return a;
    }, "srliw, truncate");
    expect<int64_t>(255, []{        // SRAIW
        int32_t sraiw = 65280;
        int a = 0;
        asm("sraiw %0,%1,8"
            : "=r" (a)
            : "r" (sraiw));
        return a;
    }, "sraiw, general");
    expect<int32_t>(0, []{          // SRAIW
        int64_t sraiw = 255;
        int a = -1;
        asm("sraiw %0,%1,8"
            : "=r" (a)
            : "r" (sraiw));
        return a;
    }, "sraiw, erase");
    expect<int64_t>(-1, []{         // SRAIW
        int32_t sraiw = std::numeric_limits<int32_t>::min();
        int a = 0;
        asm("sraiw %0,%1,31"
            : "=r" (a)
            : "r" (sraiw));
        return a;
    }, "sraiw, negative");
    expect<int64_t>(-1, []{         // SRAIW
        int64_t sraiw = 0x0000000180000000LL;
        int a = 0;
        asm("sraiw %0,%1,31"
            : "=r" (a)
            : "r" (sraiw));
        return a;
    }, "sraiw, truncate");
    expect<int64_t>(1073742078, []{ // ADDW
        int32_t rs1 = 0x3FFFFFFF;
        int32_t rs2 = 255;
        int64_t a = 0;
        asm("addw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "addw");
    expect<int64_t>(-1, []{         // ADDW
        uint32_t rs1 = 0x7FFFFFFF;
        uint32_t rs2 = 0x80000000;
        int64_t a = 0;
        asm("addw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "addw, overflow");
    expect<uint64_t>(65536, []{     // ADDW
        uint64_t rs1 = 0xFFFFFFFF0000FFFFLL;
        uint64_t rs2 = 1;
        uint64_t a = 0;
        asm("addw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "addw, truncate");
    expect<uint64_t>(65535, []{     // SUBW
        uint32_t rs1 = 65536;
        uint32_t rs2 = 1;
        int64_t a = 0;
        asm("subw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "subw");
    expect<int64_t>(-1, []{         // SUBW
        uint32_t rs1 = 0x7FFFFFFF;
        uint32_t rs2 = 0x80000000;
        int64_t a = 0;
        asm("subw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "subw, \"overflow\"");
    expect<int64_t>(0, []{          // SUBW
        uint64_t rs1 = 0xAAAAAAAAFFFFFFFFULL;
        uint64_t rs2 = 0x55555555FFFFFFFFULL;
        int64_t a = -1;
        asm("subw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "subw, truncate");
    expect<int64_t>(65280, []{      // SLLW
        int32_t rs1 = 255;
        int32_t rs2 = 8;
        int a = 0;
        asm("sllw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sllw, general");
    expect<int64_t>(numeric_limits<int32_t>::min(), []{ // SLLW
        int32_t rs1 = 255;
        int32_t rs2 = 31;
        int64_t a = 0;
        asm("sllw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sllw, erase");
    expect<int64_t>(numeric_limits<int32_t>::min(), []{ // SLLW
        int64_t rs1 = 0xFFFFFFFF00008000LL;
        int64_t rs2 = 16;
        int64_t a = 0;
        asm("sllw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sllw, truncate");
    expect<int64_t>(255, []{        // SRLW
        int32_t rs1 = 65280;
        int32_t rs2 = 8;
        int a = 0;
        asm("srlw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srlw, general");
    expect<int64_t>(0, []{          // SRLW
        int32_t rs1 = 255;
        int32_t rs2 = 8;
        int a = -1;
        asm("srlw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srlw, erase");
    expect<int64_t>(1, []{          // SRLW
        int32_t rs1 = std::numeric_limits<int32_t>::min();
        int32_t rs2 = 31;
        int a = 0;
        asm("srlw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srlw, negative");
    expect<int64_t>(1, []{          // SRLW
        int64_t rs1 = 0x0000000180000000LL;
        int64_t rs2 = 31;
        int a = 0;
        asm("srlw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "srlw, truncate");
    expect<int64_t>(255, []{        // SRAW
        int32_t rs1 = 65280;
        int32_t rs2 = 8;
        int a = 0;
        asm("sraw %0,%1,8"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sraw, general");
    expect<int64_t>(0, []{          // SRAW
        int32_t rs1 = 255;
        int32_t rs2 = 8;
        int a = -1;
        asm("sraw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sraw, erase");
    expect<int64_t>(-1, []{         // SRAW
        int32_t rs1 = std::numeric_limits<int32_t>::min();
        int32_t rs2 = 31;
        int a = 0;
        asm("sraw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sraw, negative");
    expect<int64_t>(1, []{          // SRAW
        int64_t rs1 = 0xFFFFFFFF40000000LL;
        int64_t rs2 = 30;
        int a = 0;
        asm("sraw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "sraw, truncate");

    // RV32M extension
    expect<int64_t>(39285, []{      // MUL
        int64_t rs1 = 873;
        int64_t rs2 = 45;
        int64_t a = 0;
        asm("mul %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mul");
    expect<int64_t>(0, []{          // MUL
        int64_t rs1 = 0x4000000000000000LL;
        int64_t rs2 = 4;
        int64_t a = -1;
        asm("mul %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mul, overflow");
    expect<int64_t>(1, []{          // MULH
        int64_t rs1 = 0x4000000000000000LL;
        int64_t rs2 = 4;
        int a = 0;
        asm("mulh %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulh");
    expect<int64_t>(-1, []{         // MULH
        int64_t rs1 = numeric_limits<int64_t>::min();
        int64_t rs2 = 2;
        int a = 0;
        asm("mulh %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulh, negative");
    expect<int64_t>(0, []{          // MULH
        int64_t rs1 = -1;
        int64_t rs2 = -1;
        int a = -1;
        asm("mulh %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulh, all bits set");
    expect<int64_t>(-1, []{         // MULHSU
        int64_t rs1 = -1;
        uint64_t rs2 = -1;
        int a = -1;
        asm("mulhsu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulhsu, all bits set");
    expect<int64_t>(-1, []{         // MULHSU
        int64_t rs1 = numeric_limits<int64_t>::min();
        uint64_t rs2 = 2;
        int64_t a = 0;
        asm("mulhsu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulhsu");
    expect<uint64_t>(1, [] {        // MULHU
        uint64_t rs1 = 0x8000000000000000ULL;
        uint64_t rs2 = 2;
        uint64_t a = 0;
        asm("mulhu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulhu");
    expect<uint64_t>(0xFFFFFFFFFFFFFFFE, []{ // MULHU
        uint64_t rs1 = -1;
        uint64_t rs2 = -1;
        uint64_t a = 0;
        asm("mulhu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulhu, all bits set");
    expect<int64_t>(-7, []{         // DIV
        int64_t rs1 = -59;
        int64_t rs2 = 8;
        int64_t a = 0;
        asm("div %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "div");
    expect<int64_t>(-1, []{         // DIV
        int64_t rs1 = 255;
        int64_t rs2 = 0;
        int64_t a = 0;
        asm("div %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "div/0");
    expect<int64_t>(numeric_limits<int64_t>::min(), [] { // DIV
        int64_t rs1 = numeric_limits<int64_t>::min();
        int64_t rs2 = -1;
        int64_t a = 0;
        asm("div %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "div, overflow");
    expect<uint64_t>(2305843009213693944LL, []{ // DIVU
        uint64_t rs1 = -59;
        uint64_t rs2 = 8;
        uint64_t a = 0;
        asm("divu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divu");
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{ // DIVU
        uint64_t rs1 = 255;
        uint64_t rs2 = 0;
        uint64_t a = 0;
        asm("divu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divu/0");
    expect<int64_t>(0, [] {         // DIVU
        int64_t rs1 = numeric_limits<int64_t>::min();
        int64_t rs2 = -1;
        int64_t a = -1;
        asm("divu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divu, \"overflow\"");
    expect<int64_t>(-3, []{         // REM
        int64_t rs1 = -59;
        int64_t rs2 = 8;
        int64_t a = 0;
        asm("rem %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "rem");
    expect<int64_t>(255, []{         // REM
        int64_t rs1 = 255;
        int64_t rs2 = 0;
        int64_t a = 0;
        asm("rem %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "rem/0");
    expect<int64_t>(0, [] {         // REM
        int64_t rs1 = numeric_limits<int64_t>::min();
        int64_t rs2 = -1;
        int64_t a = -1;
        asm("rem %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "rem, overflow");
    expect<uint64_t>(5, []{         // REMU
        uint64_t rs1 = -59;
        uint64_t rs2 = 8;
        uint64_t a = 0;
        asm("remu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remu");
    expect<uint64_t>(255, []{       // REMU
        uint64_t rs1 = 255;
        uint64_t rs2 = 0;
        uint64_t a = 0;
        asm("remu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remu/0");
    expect<int64_t>(numeric_limits<int64_t>::min(), [] { // REMU
        int64_t rs1 = numeric_limits<int64_t>::min();
        int64_t rs2 = -1;
        int64_t a = 0;
        asm("remu %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remu, \"overflow\"");

    // RV64M extension
    expect<int64_t>(-100, []{       // MULW
        int64_t rs1 = 0x7FFFFFFF00000005LL;
        int64_t rs2 = 0x80000000FFFFFFECLL;
        int64_t a = 0;
        asm("mulw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulw, truncate");
    expect<int64_t>(0, []{          // MULW
        int32_t rs1 = 0x40000000;
        int32_t rs2 = 4;
        int64_t a = -1;
        asm("mulw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "mulw, overflow");
    expect<int64_t>(-7, []{         // DIVW
        int64_t rs1 = 0x7FFFFFFFFFFFFFC5LL;
        int64_t rs2 = 0xFFFFFFFF00000008LL;
        int64_t a = 0;
        asm("divw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divw, truncate");
    expect<int64_t>(-1, []{         // DIVW
        int32_t rs1 = 65535;
        int32_t rs2 = 0;
        int64_t a = 0;
        asm("divw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divw/0");
    expect<int64_t>(numeric_limits<int32_t>::min(), []{ // DIVW
        int32_t rs1 = numeric_limits<int32_t>::min();
        int32_t rs2 = -1;
        int64_t a = 0;
        asm("divw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divw, overflow");
    expect<int64_t>(536870904, []{  // DIVUW
        int64_t rs1 = 0x7FFFFFFFFFFFFFC5LL;
        int64_t rs2 = 0xFFFFFFFF00000008LL;
        int64_t a = 0;
        asm("divuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divuw, truncate");
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{ // DIVUW
        uint32_t rs1 = 65535;
        uint32_t rs2 = 0;
        uint64_t a = 0;
        asm("divuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divuw/0");
    expect<uint64_t>(0, []{ // DIVUW
        uint32_t rs1 = numeric_limits<int32_t>::min();
        uint32_t rs2 = -1;
        uint64_t a = 0;
        asm("divuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "divuw, \"overflow\"");
    expect<int64_t>(-3, []{         // REMW
        int64_t rs1 = 0x7FFFFFFFFFFFFFC5LL;
        int64_t rs2 = 0xFFFFFFFF00000008LL;
        int64_t a = 0;
        asm("remw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remw, truncate");
    expect<int64_t>(65535, []{      // REMW
        int32_t rs1 = 65535;
        int32_t rs2 = 0;
        int64_t a = 0;
        asm("remw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remw/0");
    expect<int64_t>(0, []{          // REMW
        int32_t rs1 = numeric_limits<int32_t>::min();
        int32_t rs2 = -1;
        int64_t a = 0;
        asm("remw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remw, overflow");
    expect<int64_t>(5, []{          // REMUW
        int64_t rs1 = 0x7FFFFFFFFFFFFFC5LL;
        int64_t rs2 = 0xFFFFFFFF00000008LL;
        int64_t a = 0;
        asm("remuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remuw, truncate");
    expect<uint64_t>(65535, []{     // REMUW
        uint32_t rs1 = 65535;
        uint32_t rs2 = 0;
        uint64_t a = 0;
        asm("remuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remuw/0");
    expect<uint64_t>(numeric_limits<int32_t>::min(), []{ // REMUW
        uint32_t rs1 = numeric_limits<int32_t>::min();
        uint32_t rs2 = -1;
        uint64_t a = 0;
        asm("remuw %0,%1,%2"
            : "=r" (a)
            : "r" (rs1), "r" (rs2));
        return a;
    }, "remuw, \"overflow\"");

    return 0;
}
