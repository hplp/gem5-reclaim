#include <iostream>
#include <functional>
#include <string>
#include <cstdint>
#include <type_traits>
#include <limits>
#include <tuple>
#include "rv32_64i.hpp"
#include "rv32_64m.hpp"
#include "rv32_64a.hpp"

template <class T1, class T2>
std::ostream& operator<<(std::ostream& os, const std::pair<T1, T2>& p)
{
    os << p.first << "," << p.second;
    return os;
}

template<typename T>
bool expect(const T& expected, std::function<T()> func, const std::string& test)
{
    T result = func();
    std::cout << test << ": ";
    if (result == expected)
        std::cout << "PASS";
    else
        std::cout << "\033[1;31mFAIL\033[0m (expected " << expected << "; found " << result << ")";
    std::cout << std::endl;
    return result == expected;
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
    expect<int64_t>(7, []{return rv32_64i::load<int8_t, int64_t>(0x07);}, "lb, positive"); // LB
    expect<int64_t>(numeric_limits<int8_t>::min(), []{return rv32_64i::load<int8_t, int64_t>(0x80);}, "lb, negative"); // LB
    expect<int64_t>(1792, []{return rv32_64i::load<int16_t, int64_t>(0x0700);}, "lh, positive"); // LH
    expect<int64_t>(numeric_limits<int16_t>::min(), []{return rv32_64i::load<int16_t, int64_t>(0x8000);}, "lh, negative"); // LH
    expect<int64_t>(458752, []{return rv32_64i::load<int32_t, int64_t>(0x00070000);}, "lw, positive"); // LW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::load<int32_t, int64_t>(0x80000000);}, "lw, negative"); // LW
    expect<uint64_t>(128, []{return rv32_64i::load<uint8_t, uint64_t>(0x80);}, "lbu"); // LBU
    expect<uint64_t>(32768, []{return rv32_64i::load<uint16_t, uint64_t>(0x8000);}, "lhu"); // LHU
    expect<uint64_t>(0xFF, []{return rv32_64i::store<int8_t>(-1);}, "sb"); // SB
    expect<uint64_t>(0xFFFF, []{return rv32_64i::store<int16_t>(-1);}, "sh"); // SH
    expect<uint64_t>(0xFFFFFFFF, []{return rv32_64i::store<int32_t>(-1);}, "sw"); // SW
    expect<int64_t>(1073742078, []{ADDI(int64_t, 0x3FFFFFFF, 0, 255);}, "addi"); // ADDI
    expect<int64_t>(1, []{ADDI(uint64_t, -1, 0, 2);}, "addi, overflow"); // ADDI
    expect<bool>(true, []{SLTI(-1, false, 0);}, "slti, true"); // SLTI
    expect<bool>(false, []{SLTI(0, true, -1);}, "slti, false"); // SLTI
    expect<bool>(false, []{SLTIU(-1, false, 0);}, "sltiu, false"); // SLTIU
    expect<bool>(true, []{SLTIU(0, true, -1);}, "sltiu, true"); // SLTIU
    expect<uint64_t>(0xFF, []{BITI("xori", 0xAA, 0, 0x55);}, "xori (1)"); // XORI
    expect<uint64_t>(0, []{BITI("xori", 0xAA, -1, 0xAA);}, "xori (0)"); // XORI
    expect<uint64_t>(0xFF, []{BITI("ori", 0xAA, 0, 0x55);}, "ori (1)"); // ORI
    expect<uint64_t>(0xAA, []{BITI("ori", 0xAA, 0, 0xAA);}, "ori (A)"); // ORI
    expect<uint64_t>(0, []{BITI("andi", -1, -1, 0);}, "andi (0)"); // ANDI
    expect<uint64_t>(0x1234567812345678ULL, []{BITI("andi", 0x1234567812345678ULL, 0, -1);}, "andi (1)"); // ANDI
    expect<int64_t>(65280, []{SHIFTI("slli", 255, 0, 8);}, "slli, general"); // SLLI
    expect<int64_t>(numeric_limits<int64_t>::min(), []{SHIFTI("slli", 255, 0, 63);}, "slli, erase"); // SLLI
    expect<int64_t>(255, []{SHIFTI("srli", 65280, 0, 8);}, "srli, general"); // SRLI
    expect<int64_t>(0, []{SHIFTI("srli", 255, -1, 8);}, "srli, erase"); // SRLI
    expect<int64_t>(1, []{SHIFTI("srli", std::numeric_limits<int64_t>::min(), 0, 63);}, "srli, negative"); // SRLI
    expect<int64_t>(255, []{SHIFTI("srai", 65280, 0, 8);}, "srai, general"); // SRAI
    expect<int64_t>(0, []{SHIFTI("srai", 255, -1, 8);}, "srai, erase"); // SRAI
    expect<int64_t>(-1, []{SHIFTI("srai", std::numeric_limits<int64_t>::min(), 0, 63);}, "srai, negative"); // SRAI
    expect<int64_t>(1073742078, []{ADD(int64_t, 0x3FFFFFFF, 255, 0);}, "add"); // ADD
    expect<int64_t>(-1, []{ADD(uint64_t, 0x7FFFFFFFFFFFFFFFULL, 0x8000000000000000ULL, 0);}, "add, overflow"); // ADD
    expect<int64_t>(65535, []{SUB(uint64_t, 65536, 1, 0);}, "sub"); // SUB
    expect<int64_t>(-1, []{SUB(uint64_t, 0x7FFFFFFFFFFFFFFFULL, 0x8000000000000000ULL, 0);}, "sub, \"overflow\""); // SUB
    expect<int64_t>(65280, []{SHIFT("sll", 255, 8, 0);}, "sll, general"); // SLL
    expect<int64_t>(numeric_limits<int64_t>::min(), []{SHIFT("sll", 255, 63, 0);}, "sll, erase"); // SLL
    expect<bool>(true, []{SLT(-1, 0, false);}, "slt, true"); // SLT
    expect<bool>(false, []{SLT(0, -1, true);}, "slt, false"); // SLT
    expect<bool>(false, []{SLTU(-1, 0, true);}, "sltu, false"); // SLTU
    expect<bool>(true, []{SLTU(0, -1, false);}, "sltu, true"); // SLTU
    expect<uint64_t>(-1, []{BIT("xor", 0xAAAAAAAAAAAAAAAAULL, 0x5555555555555555ULL, 0);}, "xor (1)"); // XOR
    expect<uint64_t>(0, []{BIT("xor", 0xAAAAAAAAAAAAAAAAULL, 0xAAAAAAAAAAAAAAAAULL, -1);}, "xor(0)"); // XOR
    expect<int64_t>(255, []{SHIFT("srl", 65280, 8, 0);}, "srl, general"); // SRL
    expect<int64_t>(0, []{SHIFT("srl", 255, 8, -1);}, "srl, erase"); // SRL
    expect<int64_t>(1, []{SHIFT("srl", numeric_limits<int64_t>::min(), 63, 0);}, "srl, negative"); // SRL
    expect<int64_t>(255, []{SHIFT("sra", 65280, 8, 0);}, "sra, general"); // SRA
    expect<int64_t>(0, []{SHIFT("sra", 255, 8, -1);}, "sra, erase"); // SRA
    expect<int64_t>(-1, []{SHIFT("sra", numeric_limits<int64_t>::min(), 63, 0);}, "sra, negative"); // SRA
    expect<uint64_t>(-1, []{BIT("or", 0xAAAAAAAAAAAAAAAAULL, 0x5555555555555555ULL, 0);}, "or (1)"); // OR
    expect<uint64_t>(0xAAAAAAAAAAAAAAAAULL, []{BIT("or", 0xAAAAAAAAAAAAAAAAULL, 0xAAAAAAAAAAAAAAAAULL, -1);}, "or (A)"); // OR
    expect<uint64_t>(0, []{BIT("and", -1, 0, -1);}, "and (0)"); // AND
    expect<uint64_t>(0x1234567812345678ULL, []{BIT("and", 0x1234567812345678ULL, -1, 0);}, "and (-1)"); // AND
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
    expect<int64_t>(0xFFFFFFFF, []{return rv32_64i::load<uint32_t, uint64_t>(-1);}, "lwu"); // LWU
    expect<int64_t>(30064771072, []{return rv32_64i::load<int64_t, int64_t>(30064771072);}, "ld"); // LD
    expect<uint64_t>(-1, []{return rv32_64i::store<int64_t>(-1);}, "sd"); // SD
    expect<int64_t>(268435710, []{ADDIW(int32_t, 0x0FFFFFFF, 0, 255);}, "addiw"); // ADDIW
    expect<int64_t>(-2147481602, []{ADDIW(int32_t, 0x7FFFFFFF, 0, 0x7FF);}, "addiw, overflow"); // ADDIW
    expect<int64_t>(0, []{ADDIW(int64_t, 0x7FFFFFFFFFFFFFFFLL, -1, 1);}, "addiw, truncate"); // ADDIW
    expect<int64_t>(65280, []{SHIFTIW("slliw", int32_t, 255, 0, 8);}, "slliw, general"); // SLLIW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{SHIFTIW("slliw", int32_t, 255, 0, 31);}, "slliw, erase"); // SLLIW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{SHIFTIW("slliw", int64_t, 0xFFFFFFFF00800000LL, 0, 8);}, "slliw, truncate"); // SLLIW
    expect<int64_t>(255, []{SHIFTIW("srliw", int32_t, 65280, 0, 8);}, "srliw, general"); // SRLIW
    expect<int64_t>(0, []{SHIFTIW("srliw", int32_t, 255, -1, 8);}, "srliw, erase"); // SRLIW
    expect<int64_t>(1, []{SHIFTIW("srliw", int32_t, numeric_limits<int32_t>::min(), 0, 31);}, "srliw, negative"); // SRLIW
    expect<int64_t>(1, []{SHIFTIW("srliw", int64_t, 0xFFFFFFFF80000000LL, 0, 31);}, "srliw, truncate"); // SRLIW
    expect<int64_t>(255, []{SHIFTIW("sraiw", int32_t, 65280, 0, 8);}, "sraiw, general"); // SRAIW
    expect<int64_t>(0, []{SHIFTIW("sraiw", int32_t, 255, -1, 8);}, "sraiw, erase"); // SRAIW
    expect<int64_t>(-1, []{SHIFTIW("sraiw", int32_t, numeric_limits<int32_t>::min(), 0, 31);}, "sraiw, negative"); // SRAIW
    expect<int64_t>(-1, []{SHIFTIW("sraiw", int64_t, 0x0000000180000000LL, 0, 31);}, "sraiw, truncate"); // SRAIW
    expect<int64_t>(1073742078, []{ADDW(int32_t, 0x3FFFFFFF, 255, 0);}, "addw"); // ADDW
    expect<int64_t>(-1, []{ADDW(int32_t, 0x7FFFFFFF, 0x80000000, 0);}, "addw, overflow"); // ADDW
    expect<int64_t>(65536, []{ADDW(int64_t, 0xFFFFFFFF0000FFFFLL, 1, 0);}, "addw, truncate"); // ADDW
    expect<int64_t>(65535, []{SUBW(uint32_t, 65536, 1, 0);}, "subw"); // SUBW
    expect<int64_t>(-1, []{SUBW(uint32_t, 0x7FFFFFFF, 0x80000000, 0);}, "subw, \"overflow\""); // SUBW
    expect<int64_t>(0, []{SUBW(uint64_t, 0xAAAAAAAAFFFFFFFFULL, 0x55555555FFFFFFFFULL, -1);}, "subw, truncate"); // SUBW
    expect<int64_t>(65280, []{SHIFTW("sllw", int32_t, 255, 8, 0);}, "sllw, general"); // SLLW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{SHIFTW("sllw", int32_t, 255, 31, 0);}, "sllw, erase"); // SLLW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{SHIFTW("sllw", int64_t, 0xFFFFFFFF00008000LL, 16, 0);}, "sllw, truncate"); // SLLW
    expect<int64_t>(255, []{SHIFTW("srlw", int32_t, 65280, 8, 0);}, "srlw, general"); // SRLW
    expect<int64_t>(0, []{SHIFTW("srlw", int32_t, 255, 8, -1);}, "srlw, erase"); // SRLW
    expect<int64_t>(1, []{SHIFTW("srlw", int32_t, numeric_limits<int32_t>::min(), 31, 0);}, "srlw, negative"); // SRLW
    expect<int64_t>(1, []{SHIFTW("srlw", int64_t, 0x0000000180000000LL, 31, 0);}, "srlw, truncate"); // SRLW
    expect<int64_t>(255, []{SHIFTW("sraw", int32_t, 65280, 8, 0);}, "sraw, general"); // SRAW
    expect<int64_t>(0, []{SHIFTW("sraw", int32_t, 255, 8, -1);}, "sraw, erase"); // SRAW
    expect<int64_t>(-1, []{SHIFTW("sraw", int32_t, numeric_limits<int32_t>::min(), 31, 0);}, "sraw, negative"); // SRAW
    expect<int64_t>(1, []{SHIFTW("sraw", int64_t, 0xFFFFFFFF40000000LL, 30, 0);}, "sraw, truncate"); // SRAW

    // RV32M extension
    expect<int64_t>(39285, []{MUL(873, 45, 0);}, "mul"); // MUL
    expect<int64_t>(0, []{MUL(0x4000000000000000LL, 4, -1);}, "mul, overflow"); // MUL
    expect<int64_t>(1, []{MULH(0x4000000000000000LL, 4, 0);}, "mulh"); // MULH
    expect<int64_t>(-1, []{MULH(numeric_limits<int64_t>::min(), 2, 0);}, "mulh, negative"); // MULH
    expect<int64_t>(0, []{MULH(-1, -1, -1);}, "mulh, all bits set"); // MULH
    expect<int64_t>(-1, []{MULHSU(-1, -1, 0);}, "mulhsu, all bits set"); // MULHSU
    expect<int64_t>(-1, []{MULHSU(numeric_limits<int64_t>::min(), 2, 0);}, "mulhsu"); // MULHSU
    expect<uint64_t>(1, []{MULHU(0x8000000000000000ULL, 2, 0);}, "mulhu"); // MULHU
    expect<uint64_t>(0xFFFFFFFFFFFFFFFEULL, []{MULHU(-1, -1, 0);}, "mulhu, all bits set"); // MULHU
    expect<int64_t>(-7, []{DIV(-59, 8, 0);}, "div"); // DIV
    expect<int64_t>(-1, []{DIV(255, 0, 0);}, "div/0"); // DIV
    expect<int64_t>(numeric_limits<int64_t>::min(), []{DIV(numeric_limits<int64_t>::min(), -1, 0);}, "div, overflow"); // DIV
    expect<uint64_t>(2305843009213693944LL, []{DIVU(-59, 8, 0);}, "divu"); // DIVU
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{DIVU(255, 0, 0);}, "divu/0"); // DIVU
    expect<uint64_t>(0, []{DIVU(numeric_limits<uint64_t>::min(), -1, -1);}, "divu, \"overflow\""); // DIVU
    expect<int64_t>(-3, []{REM(-59, 8, 0);}, "rem"); // REM
    expect<int64_t>(255, []{REM(255, 0, 0);}, "rem/0"); // REM
    expect<int64_t>(0, []{REM(numeric_limits<int64_t>::min(), -1, -1);}, "rem, overflow"); // REM
    expect<uint64_t>(5, []{REMU(-59, 8, 0);}, "remu"); // REMU
    expect<uint64_t>(255, []{REMU(255, 0, 0);}, "remu/0"); // REMU
    expect<uint64_t>(0x8000000000000000ULL, []{REMU(0x8000000000000000ULL, -1, 0);}, "remu, \"overflow\""); // REMU

    // RV64M extension
    expect<int64_t>(-100, []{MULW(int64_t, 0x7FFFFFFF00000005LL, 0x80000000FFFFFFECLL, 0);}, "mulw, truncate"); // MULW
    expect<int64_t>(0, []{MULW(int32_t, 0x40000000, 4, -1);}, "mulw, overflow"); // MULW
    expect<int64_t>(-7, []{DIVW(int64_t, 0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL, 0);}, "divw, truncate"); // DIVW
    expect<int64_t>(-1, []{DIVW(int32_t, 65535, 0, 0);}, "divw/0"); // DIVW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{DIVW(int32_t, numeric_limits<int32_t>::min(), -1, 0);}, "divw, overflow"); // DIVW
    expect<int64_t>(536870904, []{DIVUW(int64_t, 0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL, 0);}, "divuw, truncate"); // DIVUW
    expect<int64_t>(numeric_limits<uint64_t>::max(), []{DIVUW(uint32_t, 65535, 0, 0);}, "divuw/0"); // DIVUW
    expect<int64_t>(0, []{DIVUW(uint32_t, numeric_limits<int32_t>::min(), -1, 0);}, "divuw, \"overflow\""); // DIVUW
    expect<int64_t>(-1, []{DIVUW(uint32_t, numeric_limits<uint32_t>::max(), 1, 0);}, "divuw, sign extend"); // DIVUW
    expect<int64_t>(-3, []{REMW(int64_t, 0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL, 0);}, "remw, truncate"); // REMW
    expect<int64_t>(65535, []{REMW(int32_t, 65535, 0, 0);}, "remw/0"); // REMW
    expect<int64_t>(0, []{REMW(int32_t, numeric_limits<int32_t>::min(), -1, 0);}, "remw, overflow"); // REMW
    expect<int64_t>(5, []{REMUW(int64_t, 0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL, 0);}, "remuw, truncate"); // REMUW
    expect<int64_t>(65535, []{REMUW(uint32_t, 65535, 0, 0);}, "remuw/0"); // REMUW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{REMUW(uint32_t, numeric_limits<int32_t>::min(), -1, 0);}, "remuw, \"overflow\""); // REMUW
    expect<int64_t>(0xFFFFFFFF80000000, []{REMUW(uint32_t, 0x80000000, 0xFFFFFFFF, 0);}, "remuw, sign extend"); // REMUW

    // RV32A extension
    // TODO: Test that these are actually atomic (add aq and rl instruction extensions)
    expect<pair<uint32_t, uint32_t>>(pair<uint32_t, uint32_t>(65535, 255), []{AMOSWAP_W(255, 65535, 0);}, "amoswap.w"); //AMOSWAP.W

    return 0;
}
