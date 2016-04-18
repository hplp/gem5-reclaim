#include <iostream>
#include <functional>
#include <string>
#include <cstdint>
#include <type_traits>
#include <limits>
#include <tuple>
#include <cmath>
#include "rv32_64i.hpp"
#include "rv32_64m.hpp"
#include "rv32_64a.hpp"
#include "rv32_64f.hpp"
#include "rv32_64d.hpp"

template<typename T1, typename T2>
std::ostream& operator<<(std::ostream& os, const std::pair<T1, T2>& p)
{
    os << "(" << p.first << "," << p.second << ")";
    return os;
}

template<typename T1, typename T2, typename T3>
std::ostream& operator<<(std::ostream& os, const std::tuple<T1, T2, T3>& p)
{
    os << "(" << std::get<0>(p) << "," << std::get<1>(p) << "," << std::get<2>(p) << ")";
    return os;
}

static int passes = 0;
static int failures = 0;

template<typename T>
bool expect(const T& expected, std::function<T()> func, const std::string& test)
{
    using namespace std;

    T result = func();
    cout << test << ": ";
    if (result == expected)
    {
        cout << "PASS";
        passes++;
    }
    else
    {
        cout << "\033[1;31mFAIL\033[0m (expected " << expected << "; found " << result << ")";
        failures++;
    }
    cout << endl;
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
    // TODO: LR.W, SC.W
    expect<pair<int64_t, int64_t>>({65535, 255}, []{AMOSWAP_W(uint32_t, 255, 65535, 0);}, "amoswap.w"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF, -1}, []{AMOSWAP_W(uint32_t, 0xFFFFFFFF, 0xFFFFFFFF, 0);}, "amoswap.w, sign extend"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({0x0000000180000000LL, -1}, []{AMOSWAP_W(int64_t, 0x00000001FFFFFFFFLL, 0x7FFFFFFF80000000LL, 0);}, "amoswap.w, truncate"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({256, 255}, []{AMOADD_W(int32_t, 255, 1, 0);}, "amoadd.w"); // AMOADD.W
    expect<pair<int64_t, int64_t>>({0, -1}, []{AMOADD_W(int32_t, 0xFFFFFFFF, 1, 0);}, "amoadd.w, truncate/overflow"); // AMOADD.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF, 0x7FFFFFFF}, []{AMOADD_W(int64_t, 0x7FFFFFFF, 0x80000000, 0);}, "amoadd.w, sign extend"); // AMOADD.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFFAAAAAAAALL, -1}, []{AMOXOR_W(int64_t, -1, 0x5555555555555555LL, 0);}, "amoxor.w, truncate"); // AMOXOR.W
    expect<pair<int64_t, int64_t>>({0x80000000, -1}, []{AMOXOR_W(int32_t, 0xFFFFFFFF, 0x7FFFFFFF, 0);}, "amoxor.w, sign extend"); // AMOXOR.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF00000000LL, -1}, []{AMOAND_W(int64_t, -1, 0, 0);}, "amoand.w, truncate"); // AMOAND.W
    expect<pair<int64_t, int64_t>>({0x0000000080000000LL, -1}, []{AMOAND_W(int32_t, 0xFFFFFFFF, numeric_limits<int32_t>::min(), 0);}, "amoand.w, sign extend"); // AMOAND.W
    expect<pair<int64_t, int64_t>>({0x00000000FFFFFFFFLL, 0}, []{AMOOR_W(int64_t, 0, -1, -1);}, "amoor.w, truncate"); // AMOOR.W
    expect<pair<int64_t, int64_t>>({0x0000000080000000LL, 0}, []{AMOOR_W(int32_t, 0, numeric_limits<int32_t>::min(), -1);}, "amoor.w, sign extend"); // AMOOR.W
    expect<pair<int64_t, int64_t>>({0x7FFFFFFF00000001LL, 1}, []{AMOMIN_W(int64_t, 0x7FFFFFFF00000001LL, 0xFFFFFFFF000000FF, 0);}, "amomin.w, truncate"); // AMOMIN.W
    expect<pair<int64_t, int64_t>>({0x00000000FFFFFFFELL, -1}, []{AMOMIN_W(int32_t, 0xFFFFFFFF, -2, 0);}, "amomin.w, sign extend"); // AMOMIN.W
    expect<pair<int64_t, int64_t>>({0x70000000000000FFLL, 1}, []{AMOMAX_W(int64_t, 0x7000000000000001LL, 0x7FFFFFFF000000FFLL, 0);}, "amomax.w, truncate"); // AMOMAX.W
    expect<pair<int64_t, int64_t>>({0x00000000FFFFFFFFLL, numeric_limits<int32_t>::min()}, []{AMOMAX_W(int32_t, 0x80000000, -1, -1);}, "amomax.w, sign extend"); // AMOMAX.W
    expect<pair<int64_t, int64_t>>({0x0FFFFFFF000000FFLL, -1}, []{AMOMINU_W(int64_t, 0x0FFFFFFFFFFFFFFFLL, 0xFFFFFFFF000000FF, 0);}, "amominu.w, truncate"); // AMOMINU.W
    expect<pair<int64_t, int64_t>>({0x0000000080000000LL, -1}, []{AMOMINU_W(int32_t, 0x00000000FFFFFFFFLL, 0x80000000, 0);}, "amominu.w, sign extend"); // AMOMINU.W
    expect<pair<int64_t, int64_t>>({-1, 0}, []{AMOMAXU_W(int64_t, 0xFFFFFFFF00000000LL, 0x00000000FFFFFFFFLL, -1);}, "amomaxu.w, truncate"); // AMOMAXU.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF, numeric_limits<int32_t>::min()}, []{AMOMAXU_W(int32_t, 0x80000000, 0xFFFFFFFF, -1);}, "amomaxu.w, sign extend"); // AMOMAXU.W

    // RV64A extension
    // TODO: LR.D, SC.D
    expect<pair<int64_t, int64_t>>({1, -1}, []{AMOSWAP_D(-1, 1, 0);}, "amoswap.d"); // AMOSWAP.D
    expect<pair<int64_t, int64_t>>({0x7000000000000000LL, 0x0FFFFFFFFFFFFFFFLL}, []{AMOADD_D(0x0FFFFFFFFFFFFFFFLL, 0x6000000000000001LL, 0);}, "amoadd.d"); // AMOADD.D
    expect<pair<int64_t, int64_t>>({0, 0x7FFFFFFFFFFFFFFFLL}, []{AMOADD_D(0x7FFFFFFFFFFFFFFFLL, 0x8000000000000001LL, 0);}, "amoadd.d, overflow"); // AMOADD.D
    expect<pair<int64_t, int64_t>>({-1, 0xAAAAAAAAAAAAAAAALL}, []{AMOXOR_D(0xAAAAAAAAAAAAAAAALL, 0x5555555555555555LL, 0);}, "amoxor.d (1)"); // AMOXOR.D
    expect<pair<int64_t, int64_t>>({0, 0xAAAAAAAAAAAAAAAALL}, []{AMOXOR_D(0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0);}, "amoxor.d (0)"); // AMOXOR.D
    expect<pair<int64_t, int64_t>>({0xAAAAAAAAAAAAAAAALL, -1}, []{AMOAND_D(-1, 0xAAAAAAAAAAAAAAAALL, 0);}, "amoand.d"); // AMOAND.D
    expect<pair<int64_t, int64_t>>({-1, 0xAAAAAAAAAAAAAAAALL}, []{AMOOR_D(0xAAAAAAAAAAAAAAAALL, 0x5555555555555555LL, 0);}, "amoor.d"); // AMOOR.D
    expect<pair<int64_t, int64_t>>({-1, -1}, []{AMOMIN_D(-1, 0, 0);}, "amomin.d"); // AMOMIN.D
    expect<pair<int64_t, int64_t>>({0, -1}, []{AMOMAX_D(-1, 0, 0);}, "amomax.d"); // AMOMAX.D
    expect<pair<uint64_t, uint64_t>>({0, -1}, []{AMOMINU_D(-1, 0, 0);}, "amominu.d"); // AMOMINU.D
    expect<pair<uint64_t, uint64_t>>({-1, -1}, []{AMOMAXU_D(-1, 0, 0);}, "amomaxu.d"); // AMOMAXU.D

    // RV32F extension
    // TODO: Figure out how to test the rounding mode capabilities
    expect<float>(3.14, []{return rv32_64f::load(3.14);}, "flw"); // FLW
    expect<float>(1.816, []{return rv32_64f::store(1.816);}, "fsw"); // FSW
    expect<float>(7.11624, []{return rv32_64f::fmadd_s(3.14, 1.816, 1.414);}, "fmadd.s"); // FMADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmadd_s(numeric_limits<float>::quiet_NaN(), 3.14, 1.816));}, "fmadd.s, quiet NaN"); // FMADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmadd_s(3.14, numeric_limits<float>::signaling_NaN(), 1.816));}, "fmadd.s, signaling NaN"); // FMADD.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fmadd_s(3.14, numeric_limits<float>::infinity(), 1.414);}, "fmadd.s, infinity"); // FMADD.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fmadd_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fmadd.s, -infinity"); // FMADD.S
    expect<float>(4.28824, []{return rv32_64f::fmsub_s(3.14, 1.816, 1.414);}, "fmsub.s"); // FMSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmsub_s(3.14, numeric_limits<float>::quiet_NaN(), 1.414));}, "fmsub.s, quiet NaN"); // FMSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmsub_s(3.14, 1.816, numeric_limits<float>::signaling_NaN()));}, "fmsub.s, signaling NaN"); // FMSUB.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fmsub_s(numeric_limits<float>::infinity(), 1.816, 1.414);}, "fmsub.s, infinity"); // FMSUB.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fmsub_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fmsub.s, -infinity"); // FMSUB.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fmsub_s(3.14, 1.816, numeric_limits<float>::infinity());}, "fmsub.s, subtract infinity"); // FMSUB.S
    expect<float>(-4.28824, []{return rv32_64f::fnmsub_s(3.14, 1.816, 1.414);}, "fnmsub.s"); // FNMSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fnmsub_s(3.14, 1.816, numeric_limits<float>::quiet_NaN()));}, "fnmsub.s, quiet NaN"); // FNMSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fnmsub_s(numeric_limits<float>::signaling_NaN(), 1.816, 1.414));}, "fnmsub.s, signaling NaN"); // FNMSUB.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fnmsub_s(numeric_limits<float>::infinity(), 1.816, 1.414);}, "fnmsub.s, infinity"); // FNMSUB.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fnmsub_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fnmsub.s, -infinity"); // FNMSUB.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fnmsub_s(3.14, 1.816, numeric_limits<float>::infinity());}, "fnmsub.s, subtract infinity"); // FNMSUB.S
    expect<float>(-7.11624, []{return rv32_64f::fnmadd_s(3.14, 1.816, 1.414);}, "fnmadd.s"); // FNMADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fnmadd_s(numeric_limits<float>::quiet_NaN(), 3.14, 1.816));}, "fnmadd.s, quiet NaN"); // FNMADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fnmadd_s(3.14, numeric_limits<float>::signaling_NaN(), 1.816));}, "fnmadd.s, signaling NaN"); // FNMADD.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fnmadd_s(3.14, numeric_limits<float>::infinity(), 1.414);}, "fnmadd.s, infinity"); // FNMADD.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fnmadd_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fnmadd.s, -infinity"); // FNMADD.S
    expect<float>(4.554, []{return rv32_64f::fadd_s(3.14, 1.414);}, "fadd.s"); // FADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fadd_s(numeric_limits<float>::quiet_NaN(), 1.414));}, "fadd.s, quiet NaN"); // FADD.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fadd_s(3.14, numeric_limits<float>::signaling_NaN()));}, "fadd.s, signaling NaN"); // FADD.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fadd_s(3.14, numeric_limits<float>::infinity());}, "fadd.s, infinity"); // FADD.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fadd_s(-numeric_limits<float>::infinity(), 1.816);}, "fadd.s, -infinity"); // FADD.S
    expect<float>(rv32_64f::number(0xbfdced92), []{return rv32_64f::fsub_s(1.414, 3.14);}, "fsub.s"); // FSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsub_s(numeric_limits<float>::quiet_NaN(), 1.414));}, "fsub.s, quiet NaN"); // FSUB.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsub_s(3.14, numeric_limits<float>::signaling_NaN()));}, "fsub.s, signaling NaN"); // FSUB.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fsub_s(numeric_limits<float>::infinity(), 3.14);}, "fsub.s, infinity"); // FSUB.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fsub_s(-numeric_limits<float>::infinity(), 3.14);}, "fsub.s, -infinity"); // FSUB.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fsub_s(1.414, numeric_limits<float>::infinity());}, "fsub.s, subtract infinity"); // FSUB.S
    expect<float>(rv32_64f::number(0x4024573b), []{return rv32_64f::fmul_s(1.816, 1.414);}, "fmul.s"); // FMUL.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmul_s(numeric_limits<float>::quiet_NaN(), 1.414));}, "fmul.s, quiet NaN"); // FMUL.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmul_s(1.816, numeric_limits<float>::signaling_NaN()));}, "fmul.s, signaling NaN"); // FMUL.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fmul_s(numeric_limits<float>::infinity(), 2.718);}, "fmul.s, infinity"); // FMUL.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fmul_s(2.5966, -numeric_limits<float>::infinity());}, "fmul.s, -infinity"); // FMUL.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmul_s(0.0, numeric_limits<float>::infinity()));}, "fmul.s, 0*infinity"); // FMUL.S
    expect<float>(2.5, []{return rv32_64f::fdiv_s(10.0, 4.0);}, "fdiv.s"); // FDIV.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fdiv_s(numeric_limits<float>::quiet_NaN(), 4.0));}, "fdiv.s, quiet NaN"); // FDIV.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fdiv_s(10.0, numeric_limits<float>::signaling_NaN()));}, "fdiv.s, signaling NaN"); // FDIV.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fdiv_s(10.0, 0.0);}, "fdiv.s/0"); // FDIV.S
    expect<float>(0.0, []{return rv32_64f::fdiv_s(10.0, numeric_limits<float>::infinity());}, "fdiv.s/infinity"); // FDIV.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fdiv_s(numeric_limits<float>::infinity(), numeric_limits<float>::infinity()));}, "fdiv.s, infinity/infinity"); // FDIV.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fdiv_s(0.0, 0.0));}, "fdiv.s, 0/0"); // FDIV.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fdiv_s(numeric_limits<float>::infinity(), 0.0);}, "fdiv.s, infinity/0"); // FDIV.S
    expect<float>(0.0, []{return rv32_64f::fdiv_s(0.0, numeric_limits<float>::infinity());}, "fdiv.s, 0/infinity"); // FDIV.S
    expect<float>(0.3, []{return rv32_64f::fsqrt_s(0.09);}, "fsqrt.s"); // FSQRT.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsqrt_s(-numeric_limits<float>::infinity()));}, "fsqrt.s, NaN"); // FSQRT.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsqrt_s(numeric_limits<float>::quiet_NaN()));}, "fsqrt.s, quiet NaN"); // FSQRT.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsqrt_s(numeric_limits<float>::signaling_NaN()));}, "fsqrt.s, signaling NaN"); // FSQRT.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fsqrt_s(numeric_limits<float>::infinity());}, "fsqrt.s, infinity"); // FSQRT.S
    expect<float>(-1.0, []{return rv32_64f::fsgnj_s(1.0, -25.0);}, "fsgnj.s"); // FSGNJ.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsgnj_s(numeric_limits<float>::quiet_NaN(), -4.0));}, "fsgnj.s, quiet NaN"); // FSGNJ.S
    expect<bool>(true, []{return rv32_64f::issignalingnan(rv32_64f::fsgnj_s(numeric_limits<float>::signaling_NaN(), -4.0));}, "fsgnj.s, signaling NaN"); // FSGNJ.S
    expect<float>(4.0, []{return rv32_64f::fsgnj_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnj.s, inject NaN"); // FSGNJ.S
    expect<float>(-4.0, []{return rv32_64f::fsgnj_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnj.s, inject NaN"); // FSGNJ.S
    expect<float>(1.0, []{return rv32_64f::fsgnjn_s(1.0, -25.0);}, "fsgnjn.s"); // FSGNJN.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsgnjn_s(numeric_limits<float>::quiet_NaN(), -4.0));}, "fsgnjn.s, quiet NaN"); // FSGNJN.S
    expect<bool>(true, []{return rv32_64f::issignalingnan(rv32_64f::fsgnjn_s(numeric_limits<float>::signaling_NaN(), -4.0));}, "fsgnjn.s, signaling NaN"); // FSGNJN.S
    expect<float>(-4.0, []{return rv32_64f::fsgnjn_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnjn.s, inject NaN"); // FSGNJN.S
    expect<float>(4.0, []{return rv32_64f::fsgnjn_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnjn.s, inject NaN"); // FSGNJN.S
    expect<float>(1.0, []{return rv32_64f::fsgnjx_s(1.0, 25.0);}, "fsgnjx.s, ++"); // FSGNJX.S
    expect<float>(-1.0, []{return rv32_64f::fsgnjx_s(1.0, -25.0);}, "fsgnjx.s, +-"); // FSGNJX.S
    expect<float>(-1.0, []{return rv32_64f::fsgnjx_s(-1.0, 25.0);}, "fsgnjx.s, -+"); // FSGNJX.S
    expect<float>(1.0, []{return rv32_64f::fsgnjx_s(-1.0, -25.0);}, "fsgnjx.s, --"); // FSGNJX.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fsgnjx_s(numeric_limits<float>::quiet_NaN(), -4.0));}, "fsgnjx.s, quiet NaN"); // FSGNJX.S
    expect<bool>(true, []{return rv32_64f::issignalingnan(rv32_64f::fsgnjx_s(numeric_limits<float>::signaling_NaN(), -4.0));}, "fsgnjx.s, signaling NaN"); // FSGNJX.S
    expect<float>(4.0, []{return rv32_64f::fsgnjx_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnjx.s, inject NaN"); // FSGNJX.S
    expect<float>(-4.0, []{return rv32_64f::fsgnjx_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnjx.s, inject NaN"); // FSGNJX.S
    expect<float>(2.718, []{return rv32_64f::fmin_s(3.14, 2.718);}, "fmin.s"); // FMIN.S
    expect<float>(-numeric_limits<float>::infinity(), []{return rv32_64f::fmin_s(-numeric_limits<float>::infinity(), numeric_limits<float>::min());}, "fmin.s, -infinity"); // FMIN.S
    expect<float>(numeric_limits<float>::max(), []{return rv32_64f::fmin_s(numeric_limits<float>::infinity(), numeric_limits<float>::max());}, "fmin.s, infinity"); // FMIN.S
    expect<float>(-1.414, []{return rv32_64f::fmin_s(numeric_limits<float>::quiet_NaN(), -1.414);}, "fmin.s, quiet NaN first"); // FMIN.S
    expect<float>(2.718, []{return rv32_64f::fmin_s(2.718, numeric_limits<float>::quiet_NaN());}, "fmin.s, quiet NaN second"); // FMIN.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmin_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN()));}, "fmin.s, quiet NaN both"); // FMIN.S
    expect<float>(3.14, []{return rv32_64f::fmin_s(numeric_limits<float>::signaling_NaN(), 3.14);}, "fmin.s, signaling NaN first"); // FMIN.S
    expect<float>(1.816, []{return rv32_64f::fmin_s(1.816, numeric_limits<float>::signaling_NaN());}, "fmin.s, signaling NaN second"); // FMIN.S
    expect<bool>(true, []{return rv32_64f::issignalingnan(rv32_64f::fmin_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN()));}, "fmin.s, signaling NaN both"); // FMIN.S
    expect<float>(3.14, []{return rv32_64f::fmax_s(3.14, 2.718);}, "fmax.s"); // FMAX.S
    expect<float>(numeric_limits<float>::min(), []{return rv32_64f::fmax_s(-numeric_limits<float>::infinity(), numeric_limits<float>::min());}, "fmax.s, -infinity"); // FMAX.S
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fmax_s(numeric_limits<float>::infinity(), numeric_limits<float>::max());}, "fmax.s, infinity"); // FMAX.S
    expect<float>(-1.414, []{return rv32_64f::fmax_s(numeric_limits<float>::quiet_NaN(), -1.414);}, "fmax.s, quiet NaN first"); // FMAX.S
    expect<float>(2.718, []{return rv32_64f::fmax_s(2.718, numeric_limits<float>::quiet_NaN());}, "fmax.s, quiet NaN second"); // FMAX.S
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64f::fmax_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN()));}, "fmax.s, quiet NaN both"); // FMAX.S
    expect<float>(3.14, []{return rv32_64f::fmax_s(numeric_limits<float>::signaling_NaN(), 3.14);}, "fmax.s, signaling NaN first"); // FMAX.S
    expect<float>(1.816, []{return rv32_64f::fmax_s(1.816, numeric_limits<float>::signaling_NaN());}, "fmax.s, signaling NaN second"); // FMAX.S
    expect<bool>(true, []{return rv32_64f::issignalingnan(rv32_64f::fmax_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN()));}, "fmax.s, signaling NaN both"); // FMAX.S
    expect<int64_t>(256, []{return rv32_64f::fcvt_w_s(256.3);}, "fcvt.w.s, truncate positive"); // FCVT.W.S
    expect<int64_t>(-256, []{return rv32_64f::fcvt_w_s(-256.2);}, "fcvt.w.s, truncate negative"); // FCVT.W.S
    expect<int64_t>(0, []{return rv32_64f::fcvt_w_s(0.0);}, "fcvt.w.s, 0.0"); // FCVT.W.S
    expect<int64_t>(0, []{return rv32_64f::fcvt_w_s(-0.0);}, "fcvt.w.s, -0.0"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::max(), []{return rv32_64f::fcvt_w_s(numeric_limits<float>::max());}, "fcvt.w.s, overflow"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::max(), []{return rv32_64f::fcvt_w_s(numeric_limits<float>::infinity());}, "fcvt.w.s, infinity"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64f::fcvt_w_s(-numeric_limits<float>::infinity());}, "fcvt.w.s, -infinity"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::max(), []{return rv32_64f::fcvt_w_s(numeric_limits<float>::quiet_NaN());}, "fcvt.w.s, quiet NaN"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::max(), []{return rv32_64f::fcvt_w_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.w.s, quiet -NaN"); // FCVT.W.S
    expect<int64_t>(numeric_limits<int32_t>::max(), []{return rv32_64f::fcvt_w_s(numeric_limits<float>::signaling_NaN());}, "fcvt.w.s, signaling NaN"); // FCVT.W.S
    expect<uint64_t>(256, []{return rv32_64f::fcvt_wu_s(256.3);}, "fcvt.wu.s, truncate positive"); // FCVT.WU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_wu_s(-256.2);}, "fcvt.wu.s, truncate negative"); // FCVT.WU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_wu_s(0.0);}, "fcvt.wu.s, 0.0"); // FCVT.WU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_wu_s(-0.0);}, "fcvt.wu.s, -0.0"); // FCVT.WU.S
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::max());}, "fcvt.wu.s, overflow"); // FCVT.WU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::infinity());}, "fcvt.wu.s, infinity"); // FCVT.WU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_wu_s(-numeric_limits<float>::infinity());}, "fcvt.wu.s, -infinity"); // FCVT.WU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::quiet_NaN());}, "fcvt.wu.s, quiet NaN"); // FCVT.WU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_wu_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.wu.s, quiet -NaN"); // FCVT.WU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::signaling_NaN());}, "fcvt.wu.s, signaling NaN"); // FCVT.WU.S
    expect<uint64_t>(0x000000004048F5C3ULL, []{return rv32_64f::fmv_x_s(3.14);}, "fmv.x.s, positive"); // FMV.X.S
    expect<uint64_t>(0xFFFFFFFFC048F5C3ULL, []{return rv32_64f::fmv_x_s(-3.14);}, "fmv.x.s, negative"); // FMV.X.S
    expect<uint64_t>(0x0000000000000000ULL, []{return rv32_64f::fmv_x_s(0.0);}, "fmv.x.s, 0.0"); // FMV.X.S
    expect<uint64_t>(0xFFFFFFFF80000000ULL, []{return rv32_64f::fmv_x_s(-0.0);}, "fmv.x.s, -0.0"); // FMV.X.S
    expect<bool>(true, []{return rv32_64f::feq_s(1.414, 1.414);}, "feq.s, equal"); // FEQ.S
    expect<bool>(false, []{return rv32_64f::feq_s(2.718, 1.816);}, "feq.s, not equal"); // FEQ.S
    expect<bool>(false, []{return rv32_64f::feq_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "feq.s, NaN first"); // FEQ.S
    expect<bool>(false, []{return rv32_64f::feq_s(2.0, numeric_limits<float>::quiet_NaN());}, "feq.s, NaN second"); // FEQ.S
    expect<bool>(false, []{return rv32_64f::feq_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "feq.s, NaN both"); // FEQ.S
    expect<bool>(false, []{return rv32_64f::flt_s(1.414, 1.414);}, "flt.s, equal"); // FLT.S
    expect<bool>(true, []{return rv32_64f::flt_s(1.816, 2.718);}, "flt.s, less"); // FLT.S
    expect<bool>(false, []{return rv32_64f::flt_s(2.718, 1.816);}, "flt.s, greater"); // FLT.S
    expect<bool>(false, []{return rv32_64f::flt_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "flt.s, NaN first"); // FLT.S
    expect<bool>(false, []{return rv32_64f::flt_s(2.0, numeric_limits<float>::quiet_NaN());}, "flt.s, NaN second"); // FLT.S
    expect<bool>(false, []{return rv32_64f::flt_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "flt.s, NaN both"); // FLT.S
    expect<bool>(true, []{return rv32_64f::fle_s(1.414, 1.414);}, "fle.s, equal"); // FLE.S
    expect<bool>(true, []{return rv32_64f::fle_s(1.816, 2.718);}, "fle.s, less"); // FLE.S
    expect<bool>(false, []{return rv32_64f::fle_s(2.718, 1.816);}, "fle.s, greater"); // FLE.S
    expect<bool>(false, []{return rv32_64f::fle_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "fle.s, NaN first"); // FLE.S
    expect<bool>(false, []{return rv32_64f::fle_s(2.0, numeric_limits<float>::quiet_NaN());}, "fle.s, NaN second"); // FLE.S
    expect<bool>(false, []{return rv32_64f::fle_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "fle.s, NaN both"); // FLE.S
    expect<uint64_t>(0x1, []{return rv32_64f::fclass_s(-numeric_limits<float>::infinity());}, "fclass.s, -infinity"); // FCLASS.S
    expect<uint64_t>(0x2, []{return rv32_64f::fclass_s(-3.14);}, "fclass.s, -normal"); // FCLASS.S
    expect<uint64_t>(0x4, []{return rv32_64f::fclass_s(rv32_64f::number(0x807FFFFF));}, "fclass.s, -subnormal"); // FCLASS.S
    expect<uint64_t>(0x8, []{return rv32_64f::fclass_s(-0.0);}, "fclass.s, -0.0"); // FCLASS.S
    expect<uint64_t>(0x10, []{return rv32_64f::fclass_s(0.0);}, "fclass.s, 0.0"); // FCLASS.S
    expect<uint64_t>(0x20, []{return rv32_64f::fclass_s(rv32_64f::number(0x007FFFFF));}, "fclass.s, subnormal"); // FCLASS.S
    expect<uint64_t>(0x40, []{return rv32_64f::fclass_s(1.816);}, "fclass.s, normal"); // FCLASS.S
    expect<uint64_t>(0x80, []{return rv32_64f::fclass_s(numeric_limits<float>::infinity());}, "fclass.s, infinity"); // FCLASS.S
    expect<uint64_t>(0x100, []{return rv32_64f::fclass_s(numeric_limits<float>::signaling_NaN());}, "fclass.s, signaling NaN"); // FCLASS.S
    expect<uint64_t>(0x200, []{return rv32_64f::fclass_s(numeric_limits<float>::quiet_NaN());}, "fclass.s, quiet NaN"); // FCLASS.S
    expect<float>(0.0, []{return rv32_64f::fcvt_s_w(0);}, "fcvt.s.w, 0"); // FCVT.S.W
    expect<float>(-2147483648.0, []{return rv32_64f::fcvt_s_w(numeric_limits<int32_t>::min());}, "fcvt.s.w, negative"); // FCVT.S.W
    expect<float>(255.0, []{return rv32_64f::fcvt_s_w(0xFFFFFFFF000000FFLL);}, "fcvt.s.w, truncate"); // FCVT.S.W
    expect<float>(0.0, []{return rv32_64f::fcvt_s_wu(0);}, "fcvt.s.wu, 0"); // FCVT.S.WU
    expect<float>(2147483648.0, []{return rv32_64f::fcvt_s_wu(numeric_limits<int32_t>::min());}, "fcvt.s.wu"); // FCVT.S.WU
    expect<float>(255.0, []{return rv32_64f::fcvt_s_wu(0xFFFFFFFF000000FFLL);}, "fcvt.s.wu, truncate"); // FCVT.S.WU
    expect<float>(numeric_limits<float>::infinity(), []{return rv32_64f::fmv_s_x(0x7F800000);}, "fmv.s.x"); // FMV.S.X
    expect<float>(-0.0, []{return rv32_64f::fmv_s_x(0xFFFFFFFF80000000ULL);}, "fmv.s.x, truncate"); // FMV.S.X
    uint8_t rm = rv32_64f::frrm();
    expect<uint64_t>(0x8, []{ // FRCSR, DZ
        asm("fscsr zero,zero");
        rv32_64f::fdiv_s(1.0, 0.0);
        return rv32_64f::frcsr();
    }, "frcsr, dz");
    expect<uint64_t>(0x10, []{ // FRFLAGS, NV FLT.S
        asm("fscsr zero,zero");
        rv32_64f::flt_s(numeric_limits<float>::quiet_NaN(), 1.0);
        return rv32_64f::frflags();
    }, "frflags, nv flt.s");
    expect<pair<uint64_t, uint64_t>>({0x10, 0x1F}, []{ // FSFLAGS, NV FLE.S
        asm("fscsr zero,zero");
        rv32_64f::fle_s(numeric_limits<float>::quiet_NaN(), 1.0);
        return pair<uint64_t, uint64_t>(rv32_64f::fsflags(0xFF), rv32_64f::frflags());
    }, "fsflags, nv fle.s");
    expect<tuple<uint64_t, uint64_t, uint64_t>>(tuple<uint64_t, uint64_t, uint64_t>(0, 0x10, 0x1F), []{ // FSFLAGS, FEQ.S TODO: change this to FSFLAGSI
        asm("fscsr zero,zero");
        uint64_t results[3] = {numeric_limits<uint64_t>::max(), numeric_limits<uint64_t>::max(), numeric_limits<uint64_t>::max()};
        rv32_64f::feq_s(numeric_limits<float>::quiet_NaN(), 1.0);
        results[0] = rv32_64f::fsflags(0);
//        asm("fsflagsi %0,0" : "=r" (results[0]));
        rv32_64f::feq_s(-1.0, numeric_limits<float>::signaling_NaN());
        results[1] = rv32_64f::fsflags(0xFF);
//        asm("fsflagsi %0,0xFF" : "=r" (results[1]));
        results[2] = rv32_64f::frflags();
        return tuple<uint64_t, uint64_t, uint64_t>(results[0], results[1], results[2]);
    }, "fsflags, feq.s");
    expect<uint64_t>(0xFF, []{ // FSCSR
        uint64_t rd = -1;
        asm("fscsr zero,zero;"
            "addi t0,zero,-1;"
            "fscsr zero,t0;"
            "frcsr %0"
            : "=r" (rd));
        return rd;
    }, "fscsr, truncate");
    expect<pair<uint64_t, uint64_t>>({0, 0x7}, []{ // FSRM, FRRM
        asm("fscsr zero,zero");
        return pair<uint64_t, uint64_t>(rv32_64f::fsrm(0xF), rv32_64f::frrm());
    }, "fsrm, frrm");
    asm("fscsr zero,zero");
    rv32_64f::fsrm(rm);

    // RV64F extension
    expect<int64_t>(256, []{return rv32_64f::fcvt_l_s(256.3);}, "fcvt.l.s, truncate positive"); // FCVT.L.S
    expect<int64_t>(-256, []{return rv32_64f::fcvt_l_s(-256.2);}, "fcvt.l.s, truncate negative"); // FCVT.L.S
    expect<int64_t>(0, []{return rv32_64f::fcvt_l_s(0.0);}, "fcvt.l.s, 0.0"); // FCVT.L.S
    expect<int64_t>(0, []{return rv32_64f::fcvt_l_s(-0.0);}, "fcvt.l.s, -0.0"); // FCVT.L.S
    expect<int64_t>(-8589934592LL, []{return rv32_64f::fcvt_l_s(-8589934592.0);}, "fcvt.l.s, 32-bit overflow"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::max(), []{return rv32_64f::fcvt_l_s(numeric_limits<float>::max());}, "fcvt.l.s, overflow"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::max(), []{return rv32_64f::fcvt_l_s(numeric_limits<float>::infinity());}, "fcvt.l.s, infinity"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::min(), []{return rv32_64f::fcvt_l_s(-numeric_limits<float>::infinity());}, "fcvt.l.s, -infinity"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::max(), []{return rv32_64f::fcvt_l_s(numeric_limits<float>::quiet_NaN());}, "fcvt.l.s, quiet NaN"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::max(), []{return rv32_64f::fcvt_l_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.l.s, quiet -NaN"); // FCVT.L.S
    expect<int64_t>(numeric_limits<int64_t>::max(), []{return rv32_64f::fcvt_l_s(numeric_limits<float>::signaling_NaN());}, "fcvt.l.s, signaling NaN"); // FCVT.L.S
    expect<uint64_t>(256, []{return rv32_64f::fcvt_lu_s(256.3);}, "fcvt.lu.s, truncate positive"); // FCVT.LU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_lu_s(-256.2);}, "fcvt.lu.s, truncate negative"); // FCVT.LU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_lu_s(0.0);}, "fcvt.lu.s, 0.0"); // FCVT.LU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_lu_s(-0.0);}, "fcvt.lu.s, -0.0"); // FCVT.LU.S
    expect<uint64_t>(8589934592LL, []{return rv32_64f::fcvt_lu_s(8589934592.0);}, "fcvt.lu.s, 32-bit overflow"); // FCVT.LU.S
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::max());}, "fcvt.lu.s, overflow"); // FCVT.LU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::infinity());}, "fcvt.lu.s, infinity"); // FCVT.LU.S
    expect<uint64_t>(0, []{return rv32_64f::fcvt_lu_s(-numeric_limits<float>::infinity());}, "fcvt.lu.s, -infinity"); // FCVT.LU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::quiet_NaN());}, "fcvt.lu.s, quiet NaN"); // FCVT.LU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_lu_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.lu.s, quiet -NaN"); // FCVT.LU.S
    expect<uint64_t>(0xFFFFFFFFFFFFFFFFULL, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::signaling_NaN());}, "fcvt.lu.s, signaling NaN"); // FCVT.LU.S
    expect<float>(0.0, []{return rv32_64f::fcvt_s_l(0);}, "fcvt.s.l, 0"); // FCVT.S.L
    expect<float>(-9.223372e18, []{return rv32_64f::fcvt_s_l(numeric_limits<int64_t>::min());}, "fcvt.s.l, negative"); // FCVT.S.L
    expect<float>(-4.29496704e9, []{return rv32_64f::fcvt_s_l(0xFFFFFFFF000000FFLL);}, "fcvt.s.l, 32-bit truncate"); // FCVT.S.L
    expect<float>(0.0, []{return rv32_64f::fcvt_s_lu(0);}, "fcvt.s.lu, 0"); // FCVT.S.LU
    expect<float>(9.223372e18, []{return rv32_64f::fcvt_s_lu(numeric_limits<int64_t>::min());}, "fcvt.s.lu"); // FCVT.S.LU
    expect<float>(1.8446744e19, []{return rv32_64f::fcvt_s_lu(0xFFFFFFFF000000FFLL);}, "fcvt.s.lu, 32-bit truncate"); // FCVT.S.LU

    // RV32D extension
    // TODO: rounding mode
    expect<double>(3.1415926, []{return rv32_64d::load(3.1415926);}, "fld"); // FLD
    expect<float>(1.61803398875, []{return rv32_64d::store(1.61803398875);}, "fsd"); // FSD
    expect<double>(rv32_64d::number(0x4019FD5AED13B1CEULL), []{return rv32_64d::fmadd_d(3.1415926, 1.61803398875, 1.41421356237);}, "fmadd.d"); // FMADD.D
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64d::fmadd_d(numeric_limits<double>::quiet_NaN(), 3.14, 1.816));}, "fmadd.d, quiet NaN"); // FMADD.D
    expect<bool>(true, []{return rv32_64f::isquietnan(rv32_64d::fmadd_d(3.14, numeric_limits<double>::signaling_NaN(), 1.816));}, "fmadd.d, signaling NaN"); // FMADD.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fmadd_d(3.14, numeric_limits<double>::infinity(), 1.414);}, "fmadd.d, infinity"); // FMADD.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fmadd_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fmadd.d, -infinity"); // FMADD.D
    expect<double>(rv32_64d::number(0x400d5A1773A85E43ULL), []{return rv32_64d::fmsub_d(3.1415926, 1.61803398875, 1.41421356237);}, "fmsub.d"); // FMSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fmsub_d(3.14, numeric_limits<double>::quiet_NaN(), 1.414));}, "fmsub.d, quiet NaN"); // FMSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fmsub_d(3.14, 1.816, numeric_limits<double>::signaling_NaN()));}, "fmsub.d, signaling NaN"); // FMSUB.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fmsub_d(numeric_limits<double>::infinity(), 1.816, 1.414);}, "fmsub.d, infinity"); // FMSUB.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fmsub_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fmsub.d, -infinity"); // FMSUB.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fmsub_d(3.14, 1.816, numeric_limits<double>::infinity());}, "fmsub.d, subtract infinity"); // FMSUB.D
    expect<double>(rv32_64d::number(0xC00D5A1773A85E43ULL), []{return rv32_64d::fnmsub_d(3.1415926, 1.61803398875, 1.41421356237);}, "fnmsub.d"); // FNMSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fnmsub_d(3.14, 1.816, numeric_limits<double>::quiet_NaN()));}, "fnmsub.d, quiet NaN"); // FNMSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fnmsub_d(numeric_limits<double>::signaling_NaN(), 1.816, 1.414));}, "fnmsub.d, signaling NaN"); // FNMSUB.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fnmsub_d(numeric_limits<double>::infinity(), 1.816, 1.414);}, "fnmsub.d, infinity"); // FNMSUB.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fnmsub_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fnmsub.d, -infinity"); // FNMSUB.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fnmsub_d(3.14, 1.816, numeric_limits<double>::infinity());}, "fnmsub.d, subtract infinity"); // FNMSUB.D
    expect<double>(rv32_64d::number(0xC019FD5AED13B1CEULL), []{return rv32_64d::fnmadd_d(3.1415926, 1.61803398875, 1.41421356237);}, "fnmadd.d"); // FNMADD.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fnmadd_d(numeric_limits<double>::quiet_NaN(), 3.14, 1.816));}, "fnmadd.d, quiet NaN"); // FNMADD.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fnmadd_d(3.14, numeric_limits<double>::signaling_NaN(), 1.816));}, "fnmadd.d, signaling NaN"); // FNMADD.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fnmadd_d(3.14, numeric_limits<double>::infinity(), 1.414);}, "fnmadd.d, infinity"); // FNMADD.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fnmadd_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fnmadd.d, -infinity"); // FNMADD.D
    expect<double>(rv32_64d::number(0x4012392540292D7CULL), []{return rv32_64d::fadd_d(3.1415926, 1.41421356237);}, "fadd.d"); // FADD.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fadd_d(numeric_limits<double>::quiet_NaN(), 1.414));}, "fadd.d, quiet NaN"); // FADD.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fadd_d(3.14, numeric_limits<double>::signaling_NaN()));}, "fadd.d, signaling NaN"); // FADD.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fadd_d(3.14, numeric_limits<double>::infinity());}, "fadd.d, infinity"); // FADD.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fadd_d(-numeric_limits<double>::infinity(), 1.816);}, "fadd.d, -infinity"); // FADD.D
    expect<double>(rv32_64d::number(0xBFFBA35833AB7AAEULL), []{return rv32_64d::fsub_d(1.4142135623, 3.1415926);}, "fsub.d"); // FSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fsub_d(numeric_limits<double>::quiet_NaN(), 1.414));}, "fsub.d, quiet NaN"); // FSUB.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fsub_d(3.14, numeric_limits<double>::signaling_NaN()));}, "fsub.d, signaling NaN"); // FSUB.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fsub_d(numeric_limits<double>::infinity(), 3.14);}, "fsub.d, infinity"); // FSUB.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fsub_d(-numeric_limits<double>::infinity(), 3.14);}, "fsub.d, -infinity"); // FSUB.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fsub_d(1.414, numeric_limits<double>::infinity());}, "fsub.d, subtract infinity"); // FSUB.D
    expect<double>(rv32_64d::number(0x40024E53B708ED9AULL), []{return rv32_64d::fmul_d(1.61803398875, 1.4142135623);}, "fmul.d"); // FMUL.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fmul_d(numeric_limits<double>::quiet_NaN(), 1.414));}, "fmul.d, quiet NaN"); // FMUL.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fmul_d(1.816, numeric_limits<double>::signaling_NaN()));}, "fmul.d, signaling NaN"); // FMUL.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fmul_d(numeric_limits<double>::infinity(), 2.718);}, "fmul.d, infinity"); // FMUL.D
    expect<double>(-numeric_limits<double>::infinity(), []{return rv32_64d::fmul_d(2.5966, -numeric_limits<double>::infinity());}, "fmul.d, -infinity"); // FMUL.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fmul_d(0.0, numeric_limits<double>::infinity()));}, "fmul.d, 0*infinity"); // FMUL.D
    expect<double>(2.5, []{return rv32_64d::fdiv_d(10.0, 4.0);}, "fdiv.d"); // FDIV.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fdiv_d(numeric_limits<double>::quiet_NaN(), 4.0));}, "fdiv.d, quiet NaN"); // FDIV.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fdiv_d(10.0, numeric_limits<double>::signaling_NaN()));}, "fdiv.d, signaling NaN"); // FDIV.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fdiv_d(10.0, 0.0);}, "fdiv.d/0"); // FDIV.D
    expect<double>(0.0, []{return rv32_64d::fdiv_d(10.0, numeric_limits<double>::infinity());}, "fdiv.d/infinity"); // FDIV.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fdiv_d(numeric_limits<double>::infinity(), numeric_limits<double>::infinity()));}, "fdiv.d, infinity/infinity"); // FDIV.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fdiv_d(0.0, 0.0));}, "fdiv.d, 0/0"); // FDIV.D
    expect<double>(numeric_limits<double>::infinity(), []{return rv32_64d::fdiv_d(numeric_limits<double>::infinity(), 0.0);}, "fdiv.d, infinity/0"); // FDIV.D
    expect<double>(0.0, []{return rv32_64d::fdiv_d(0.0, numeric_limits<double>::infinity());}, "fdiv.d, 0/infinity"); // FDIV.D
    expect<double>(1e154, []{return rv32_64d::fsqrt_d(1e308);}, "fsqrt.d"); // FSQRT.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fsqrt_d(-numeric_limits<double>::infinity()));}, "fsqrt.d, NaN"); // FSQRT.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fsqrt_d(numeric_limits<double>::quiet_NaN()));}, "fsqrt.d, quiet NaN"); // FSQRT.D
    expect<bool>(true, []{return rv32_64d::isquietnan(rv32_64d::fsqrt_d(numeric_limits<double>::signaling_NaN()));}, "fsqrt.d, signaling NaN"); // FSQRT.D

    cout << passes << " tests passed; " << failures << " failed." << endl;

    return 0;
}
