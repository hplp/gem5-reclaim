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
    expect<int64_t>(4096, []{return rv32_64i::lui(1);}, "lui"); // LUI
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::lui(0x80000);}, "lui, negative"); // LUI
    expect<bool>(true, []{return rv32_64i::auipc(3);}, "auipc"); // AUIPC
    expect<bool>(true, []{return rv32_64i::jal();}, "jal"); // JAL
    expect<bool>(true, []{return rv32_64i::jalr();}, "jalr"); // JALR
    expect<bool>(true, []{return rv32_64i::beq(5, 5);}, "beq, equal"); // BEQ
    expect<bool>(false, []{return rv32_64i::beq(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "beq, not equal"); // BEQ
    expect<bool>(false, []{return rv32_64i::bne(5, 5);}, "bne, equal"); // BNE
    expect<bool>(true, []{return rv32_64i::bne(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "bne, not equal"); // BNE
    expect<bool>(true, []{return rv32_64i::blt(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::max());}, "blt, less"); // BLT
    expect<bool>(false, []{return rv32_64i::blt(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::min());}, "blt, equal"); // BLT
    expect<bool>(false, []{return rv32_64i::blt(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "blt, greater"); // BLT
    expect<bool>(false, []{return rv32_64i::bge(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::max());}, "bge, less"); // BGE
    expect<bool>(true, []{return rv32_64i::bge(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::min());}, "bge, equal"); // BGE
    expect<bool>(true, []{return rv32_64i::bge(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "bge, greater"); // BGE
    expect<bool>(true, []{return rv32_64i::blt(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::max());}, "bltu, greater"); // BLTU
    expect<bool>(false, []{return rv32_64i::blt(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::min());}, "bltu, equal"); // BLTU
    expect<bool>(false, []{return rv32_64i::blt(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "bltu, less"); // BLTU
    expect<bool>(false, []{return rv32_64i::bge(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::max());}, "bgeu, greater"); // BGEU
    expect<bool>(true, []{return rv32_64i::bge(numeric_limits<int64_t>::min(), numeric_limits<int64_t>::min());}, "bgeu, equal"); // BGEU
    expect<bool>(true, []{return rv32_64i::bge(numeric_limits<int64_t>::max(), numeric_limits<int64_t>::min());}, "bgeu, less"); // BGEU
    expect<int64_t>(7, []{return rv32_64i::load<int8_t, int64_t>(0x07);}, "lb, positive"); // LB
    expect<int64_t>(numeric_limits<int8_t>::min(), []{return rv32_64i::load<int8_t, int64_t>(0x80);}, "lb, negative"); // LB
    expect<int64_t>(1792, []{return rv32_64i::load<int16_t, int64_t>(0x0700);}, "lh, positive"); // LH
    expect<int64_t>(numeric_limits<int16_t>::min(), []{return rv32_64i::load<int16_t, int64_t>(0x8000);}, "lh, negative"); // LH
    expect<int64_t>(458752, []{return rv32_64i::load<int32_t, int64_t>(0x00070000);}, "lw, positive"); // LW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::load<int32_t, int64_t>(0x80000000);}, "lw, negative"); // LW
    expect<uint64_t>(128, []{return rv32_64i::load<uint8_t, uint64_t>(0x80);}, "lbu"); // LBU
    expect<uint64_t>(32768, []{return rv32_64i::load<uint16_t, uint64_t>(0x8000);}, "lhu"); // LHU
    expect<uint8_t>(0xFF, []{return rv32_64i::store<int8_t>(-1);}, "sb"); // SB
    expect<uint16_t>(0xFFFF, []{return rv32_64i::store<int16_t>(-1);}, "sh"); // SH
    expect<uint32_t>(0xFFFFFFFF, []{return rv32_64i::store<int32_t>(-1);}, "sw"); // SW
    expect<int64_t>(1073742078, []{return rv32_64i::addi(0x3FFFFFFF, 255);}, "addi"); // ADDI
    expect<int64_t>(1, []{return rv32_64i::addi(-1, 2);}, "addi, overflow"); // ADDI
    expect<bool>(true, []{return rv32_64i::slti(-1, 0);}, "slti, true"); // SLTI
    expect<bool>(false, []{return rv32_64i::slti(0, -1);}, "slti, false"); // SLTI
    expect<bool>(false, []{return rv32_64i::sltiu(-1, 0);}, "sltiu, false"); // SLTIU
    expect<bool>(true, []{return rv32_64i::sltiu(0, -1);}, "sltiu, true"); // SLTIU
    expect<uint64_t>(0xFF, []{return rv32_64i::xori(0xAA, 0x55);}, "xori (1)"); // XORI
    expect<uint64_t>(0, []{return rv32_64i::xori(0xAA, 0xAA);}, "xori (0)"); // XORI
    expect<uint64_t>(0xFF, []{return rv32_64i::ori(0xAA, 0x55);}, "ori (1)"); // ORI
    expect<uint64_t>(0xAA, []{return rv32_64i::ori(0xAA, 0xAA);}, "ori (A)"); // ORI
    expect<uint64_t>(0, []{return rv32_64i::andi(-1, 0);}, "andi (0)"); // ANDI
    expect<uint64_t>(0x1234567812345678ULL, []{return rv32_64i::andi(0x1234567812345678ULL, -1);}, "andi (1)"); // ANDI
    expect<int64_t>(65280, []{return rv32_64i::slli(255, 8);}, "slli, general"); // SLLI
    expect<int64_t>(numeric_limits<int64_t>::min(), []{return rv32_64i::slli(255, 63);}, "slli, erase"); // SLLI
    expect<int64_t>(255, []{return rv32_64i::srli(65280, 8);}, "srli, general"); // SRLI
    expect<int64_t>(0, []{return rv32_64i::srli(255, 8);}, "srli, erase"); // SRLI
    expect<int64_t>(1, []{return rv32_64i::srli(numeric_limits<int64_t>::min(), 63);}, "srli, negative"); // SRLI
    expect<int64_t>(255, []{return rv32_64i::srai(65280, 8);}, "srai, general"); // SRAI
    expect<int64_t>(0, []{return rv32_64i::srai(255, 8);}, "srai, erase"); // SRAI
    expect<int64_t>(-1, []{return rv32_64i::srai(numeric_limits<int64_t>::min(), 63);}, "srai, negative"); // SRAI
    expect<int64_t>(1073742078, []{return rv32_64i::add(0x3FFFFFFF, 255);}, "add"); // ADD
    expect<int64_t>(-1, []{return rv32_64i::add(0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000LL);}, "add, overflow"); // ADD
    expect<int64_t>(65535, []{return rv32_64i::sub(65536, 1);}, "sub"); // SUB
    expect<int64_t>(-1, []{return rv32_64i::sub(0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000LL);}, "sub, \"overflow\""); // SUB
    expect<int64_t>(65280, []{return rv32_64i::sll(255, 8);}, "sll, general"); // SLL
    expect<int64_t>(numeric_limits<int64_t>::min(), []{return rv32_64i::sll(255, 63);}, "sll, erase"); // SLL
    expect<bool>(true, []{return rv32_64i::slt(-1, 0);}, "slt, true"); // SLT
    expect<bool>(false, []{return rv32_64i::slt(0, -1);}, "slt, false"); // SLT
    expect<bool>(false, []{return rv32_64i::sltu(-1, 0);}, "sltu, false"); // SLTU
    expect<bool>(true, []{return rv32_64i::sltu(0, -1);}, "sltu, true"); // SLTU
    expect<uint64_t>(-1, []{return rv32_64i::xor_inst(0xAAAAAAAAAAAAAAAAULL, 0x5555555555555555ULL);}, "xor (1)"); // XOR
    expect<uint64_t>(0, []{return rv32_64i::xor_inst(0xAAAAAAAAAAAAAAAAULL, 0xAAAAAAAAAAAAAAAAULL);}, "xor(0)"); // XOR
    expect<uint64_t>(255, []{return rv32_64i::srl(65280, 8);}, "srl, general"); // SRL
    expect<uint64_t>(0, []{return rv32_64i::srl(255, 8);}, "srl, erase"); // SRL
    expect<uint64_t>(1, []{return rv32_64i::srl(numeric_limits<int64_t>::min(), 63);}, "srl, negative"); // SRL
    expect<int64_t>(255, []{return rv32_64i::sra(65280, 8);}, "sra, general"); // SRA
    expect<int64_t>(0, []{return rv32_64i::sra(255, 8);}, "sra, erase"); // SRA
    expect<int64_t>(-1, []{return rv32_64i::sra(numeric_limits<int64_t>::min(), 63);}, "sra, negative"); // SRA
    expect<uint64_t>(-1, []{return rv32_64i::or_inst(0xAAAAAAAAAAAAAAAAULL, 0x5555555555555555ULL);}, "or (1)"); // OR
    expect<uint64_t>(0xAAAAAAAAAAAAAAAAULL, []{return rv32_64i::or_inst(0xAAAAAAAAAAAAAAAAULL, 0xAAAAAAAAAAAAAAAAULL);}, "or (A)"); // OR
    expect<uint64_t>(0, []{return rv32_64i::and_inst(-1, 0);}, "and (0)"); // AND
    expect<uint64_t>(0x1234567812345678ULL, []{return rv32_64i::and_inst(0x1234567812345678ULL, -1);}, "and (-1)"); // AND
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
    expect<int64_t>(268435710, []{return rv32_64i::addiw(0x0FFFFFFF, 255);}, "addiw"); // ADDIW
    expect<int64_t>(-2147481602, []{return rv32_64i::addiw(0x7FFFFFFF, 0x7FF);}, "addiw, overflow"); // ADDIW
    expect<int64_t>(0, []{return rv32_64i::addiw(0x7FFFFFFFFFFFFFFFLL, 1);}, "addiw, truncate"); // ADDIW
    expect<int64_t>(65280, []{return rv32_64i::slliw(255, 8);}, "slliw, general"); // SLLIW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::slliw(255, 31);}, "slliw, erase"); // SLLIW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::slliw(0xFFFFFFFF00800000LL, 8);}, "slliw, truncate"); // SLLIW
    expect<int64_t>(255, []{return rv32_64i::srliw(65280, 8);}, "srliw, general"); // SRLIW
    expect<int64_t>(0, []{return rv32_64i::srliw(255, 8);}, "srliw, erase"); // SRLIW
    expect<int64_t>(1, []{return rv32_64i::srliw(numeric_limits<int32_t>::min(), 31);}, "srliw, negative"); // SRLIW
    expect<int64_t>(1, []{return rv32_64i::srliw(0xFFFFFFFF80000000LL, 31);}, "srliw, truncate"); // SRLIW
    expect<int64_t>(255, []{return rv32_64i::sraiw(65280, 8);}, "sraiw, general"); // SRAIW
    expect<int64_t>(0, []{return rv32_64i::sraiw(255, 8);}, "sraiw, erase"); // SRAIW
    expect<int64_t>(-1, []{return rv32_64i::sraiw(numeric_limits<int32_t>::min(), 31);}, "sraiw, negative"); // SRAIW
    expect<int64_t>(-1, []{return rv32_64i::sraiw(0x0000000180000000LL, 31);}, "sraiw, truncate"); // SRAIW
    expect<int64_t>(1073742078, []{return rv32_64i::addw(0x3FFFFFFF, 255);}, "addw"); // ADDW
    expect<int64_t>(-1, []{return rv32_64i::addw(0x7FFFFFFF, 0x80000000);}, "addw, overflow"); // ADDW
    expect<int64_t>(65536, []{return rv32_64i::addw(0xFFFFFFFF0000FFFFLL, 1);}, "addw, truncate"); // ADDW
    expect<int64_t>(65535, []{return rv32_64i::subw(65536, 1);}, "subw"); // SUBW
    expect<int64_t>(-1, []{return rv32_64i::subw(0x7FFFFFFF, 0x80000000);}, "subw, \"overflow\""); // SUBW
    expect<int64_t>(0, []{return rv32_64i::subw(0xAAAAAAAAFFFFFFFFULL, 0x55555555FFFFFFFFULL);}, "subw, truncate"); // SUBW
    expect<int64_t>(65280, []{return rv32_64i::sllw(255, 8);}, "sllw, general"); // SLLW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::sllw(255, 31);}, "sllw, erase"); // SLLW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64i::sllw(0xFFFFFFFF00008000LL, 16);}, "sllw, truncate"); // SLLW
    expect<uint64_t>(255, []{return rv32_64i::srlw(65280, 8);}, "srlw, general"); // SRLW
    expect<uint64_t>(0, []{return rv32_64i::srlw(255, 8);}, "srlw, erase"); // SRLW
    expect<uint64_t>(1, []{return rv32_64i::srlw(numeric_limits<int32_t>::min(), 31);}, "srlw, negative"); // SRLW
    expect<uint64_t>(1, []{return rv32_64i::srlw(0x0000000180000000LL, 31);}, "srlw, truncate"); // SRLW
    expect<int64_t>(255, []{return rv32_64i::sraw(65280, 8);}, "sraw, general"); // SRAW
    expect<int64_t>(0, []{return rv32_64i::sraw(255, 8);}, "sraw, erase"); // SRAW
    expect<int64_t>(-1, []{return rv32_64i::sraw(numeric_limits<int32_t>::min(), 31);}, "sraw, negative"); // SRAW
    expect<int64_t>(1, []{return rv32_64i::sraw(0xFFFFFFFF40000000LL, 30);}, "sraw, truncate"); // SRAW

    // RV32M extension
    expect<int64_t>(39285, []{return rv32_64m::mul(873, 45);}, "mul"); // MUL
    expect<int64_t>(0, []{return rv32_64m::mul(0x4000000000000000LL, 4);}, "mul, overflow"); // MUL
    expect<int64_t>(1, []{return rv32_64m::mulh(0x4000000000000000LL, 4);}, "mulh"); // MULH
    expect<int64_t>(-1, []{return rv32_64m::mulh(numeric_limits<int64_t>::min(), 2);}, "mulh, negative"); // MULH
    expect<int64_t>(0, []{return rv32_64m::mulh(-1, -1);}, "mulh, all bits set"); // MULH
    expect<int64_t>(-1, []{return rv32_64m::mulhsu(-1, -1);}, "mulhsu, all bits set"); // MULHSU
    expect<int64_t>(-1, []{return rv32_64m::mulhsu(numeric_limits<int64_t>::min(), 2);}, "mulhsu"); // MULHSU
    expect<uint64_t>(1, []{return rv32_64m::mulhu(0x8000000000000000ULL, 2);}, "mulhu"); // MULHU
    expect<uint64_t>(0xFFFFFFFFFFFFFFFEULL, []{return rv32_64m::mulhu(-1, -1);}, "mulhu, all bits set"); // MULHU
    expect<int64_t>(-7, []{return rv32_64m::div(-59, 8);}, "div"); // DIV
    expect<int64_t>(-1, []{return rv32_64m::div(255, 0);}, "div/0"); // DIV
    expect<int64_t>(numeric_limits<int64_t>::min(), []{return rv32_64m::div(numeric_limits<int64_t>::min(), -1);}, "div, overflow"); // DIV
    expect<uint64_t>(2305843009213693944LL, []{return rv32_64m::divu(-59, 8);}, "divu"); // DIVU
    expect<uint64_t>(numeric_limits<uint64_t>::max(), []{return rv32_64m::divu(255, 0);}, "divu/0"); // DIVU
    expect<uint64_t>(0, []{return rv32_64m::divu(numeric_limits<uint64_t>::min(), -1);}, "divu, \"overflow\""); // DIVU
    expect<int64_t>(-3, []{return rv32_64m::rem(-59, 8);}, "rem"); // REM
    expect<int64_t>(255, []{return rv32_64m::rem(255, 0);}, "rem/0"); // REM
    expect<int64_t>(0, []{return rv32_64m::rem(numeric_limits<int64_t>::min(), -1);}, "rem, overflow"); // REM
    expect<uint64_t>(5, []{return rv32_64m::remu(-59, 8);}, "remu"); // REMU
    expect<uint64_t>(255, []{return rv32_64m::remu(255, 0);}, "remu/0"); // REMU
    expect<uint64_t>(0x8000000000000000ULL, []{return rv32_64m::remu(0x8000000000000000ULL, -1);}, "remu, \"overflow\""); // REMU

    // RV64M extension
    expect<int64_t>(-100, []{return rv32_64m::mulw(0x7FFFFFFF00000005LL, 0x80000000FFFFFFECLL);}, "mulw, truncate"); // MULW
    expect<int64_t>(0, []{return rv32_64m::mulw(0x40000000, 4);}, "mulw, overflow"); // MULW
    expect<int64_t>(-7, []{return rv32_64m::divw(0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL);}, "divw, truncate"); // DIVW
    expect<int64_t>(-1, []{return rv32_64m::divw(65535, 0);}, "divw/0"); // DIVW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64m::divw(numeric_limits<int32_t>::min(), -1);}, "divw, overflow"); // DIVW
    expect<int64_t>(536870904, []{return rv32_64m::divuw(0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL);}, "divuw, truncate"); // DIVUW
    expect<int64_t>(numeric_limits<uint64_t>::max(), []{return rv32_64m::divuw(65535, 0);}, "divuw/0"); // DIVUW
    expect<int64_t>(0, []{return rv32_64m::divuw(numeric_limits<int32_t>::min(), -1);}, "divuw, \"overflow\""); // DIVUW
    expect<int64_t>(-1, []{return rv32_64m::divuw(numeric_limits<uint32_t>::max(), 1);}, "divuw, sign extend"); // DIVUW
    expect<int64_t>(-3, []{return rv32_64m::remw(0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL);}, "remw, truncate"); // REMW
    expect<int64_t>(65535, []{return rv32_64m::remw(65535, 0);}, "remw/0"); // REMW
    expect<int64_t>(0, []{return rv32_64m::remw(numeric_limits<int32_t>::min(), -1);}, "remw, overflow"); // REMW
    expect<int64_t>(5, []{return rv32_64m::remuw(0x7FFFFFFFFFFFFFC5LL, 0xFFFFFFFF00000008LL);}, "remuw, truncate"); // REMUW
    expect<int64_t>(65535, []{return rv32_64m::remuw(65535, 0);}, "remuw/0"); // REMUW
    expect<int64_t>(numeric_limits<int32_t>::min(), []{return rv32_64m::remuw(numeric_limits<int32_t>::min(), -1);}, "remuw, \"overflow\""); // REMUW
    expect<int64_t>(0xFFFFFFFF80000000, []{return rv32_64m::remuw(0x80000000, 0xFFFFFFFF);}, "remuw, sign extend"); // REMUW

    // RV32A extension
    // TODO: Test that these are actually atomic (add aq and rl instruction extensions)
    // TODO: LR.W, SC.W
    expect<pair<int64_t, int64_t>>({65535, 255}, []{return rv32_64a::amoswap_w(255, 65535);}, "amoswap.w"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF, -1}, []{return rv32_64a::amoswap_w(0xFFFFFFFF, 0xFFFFFFFF);}, "amoswap.w, sign extend"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({0x0000000180000000LL, -1}, []{return rv32_64a::amoswap_w(0x00000001FFFFFFFFLL, 0x7FFFFFFF80000000LL);}, "amoswap.w, truncate"); // AMOSWAP.W
    expect<pair<int64_t, int64_t>>({256, 255}, []{return rv32_64a::amoadd_w(255, 1);}, "amoadd.w"); // AMOADD.W
    expect<pair<int64_t, int64_t>>({0, -1}, []{return rv32_64a::amoadd_w(0xFFFFFFFF, 1);}, "amoadd.w, truncate/overflow"); // AMOADD.W
    expect<pair<int64_t, int64_t>>({0xFFFFFFFF, 0x7FFFFFFF}, []{return rv32_64a::amoadd_w(0x7FFFFFFF, 0x80000000);}, "amoadd.w, sign extend"); // AMOADD.W
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFAAAAAAAALL, -1}, []{return rv32_64a::amoxor_w(-1, 0x5555555555555555LL);}, "amoxor.w, truncate"); // AMOXOR.W
    expect<pair<uint64_t, uint64_t>>({0x80000000, -1}, []{return rv32_64a::amoxor_w(0xFFFFFFFF, 0x7FFFFFFF);}, "amoxor.w, sign extend"); // AMOXOR.W
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFF00000000LL, -1}, []{return rv32_64a::amoand_w(-1, 0);}, "amoand.w, truncate"); // AMOAND.W
    expect<pair<uint64_t, uint64_t>>({0x0000000080000000LL, -1}, []{return rv32_64a::amoand_w(0xFFFFFFFF, numeric_limits<int32_t>::min());}, "amoand.w, sign extend"); // AMOAND.W
    expect<pair<uint64_t, uint64_t>>({0x00000000FFFFFFFFLL, 0}, []{return rv32_64a::amoor_w(0, -1);}, "amoor.w, truncate"); // AMOOR.W
    expect<pair<uint64_t, uint64_t>>({0x0000000080000000LL, 0}, []{return rv32_64a::amoor_w(0, numeric_limits<int32_t>::min());}, "amoor.w, sign extend"); // AMOOR.W
    expect<pair<int64_t, int64_t>>({0x7FFFFFFF00000001LL, 1}, []{return rv32_64a::amomin_w(0x7FFFFFFF00000001LL, 0xFFFFFFFF000000FF);}, "amomin.w, truncate"); // AMOMIN.W
    expect<pair<int64_t, int64_t>>({0x00000000FFFFFFFELL, -1}, []{return rv32_64a::amomin_w(0xFFFFFFFF, -2);}, "amomin.w, sign extend"); // AMOMIN.W
    expect<pair<int64_t, int64_t>>({0x70000000000000FFLL, 1}, []{return rv32_64a::amomax_w(0x7000000000000001LL, 0x7FFFFFFF000000FFLL);}, "amomax.w, truncate"); // AMOMAX.W
    expect<pair<int64_t, int64_t>>({-1, numeric_limits<int32_t>::min()}, []{return rv32_64a::amomax_w(numeric_limits<int32_t>::min(), -1);}, "amomax.w, sign extend"); // AMOMAX.W
    expect<pair<uint64_t, uint64_t>>({0x0FFFFFFF000000FFLL, -1}, []{return rv32_64a::amominu_w(0x0FFFFFFFFFFFFFFFLL, 0xFFFFFFFF000000FF);}, "amominu.w, truncate"); // AMOMINU.W
    expect<pair<uint64_t, uint64_t>>({0x0000000080000000LL, -1}, []{return rv32_64a::amominu_w(0x00000000FFFFFFFFLL, 0x80000000);}, "amominu.w, sign extend"); // AMOMINU.W
    expect<pair<uint64_t, uint64_t>>({-1, 0}, []{return rv32_64a::amomaxu_w(0xFFFFFFFF00000000LL, 0x00000000FFFFFFFFLL);}, "amomaxu.w, truncate"); // AMOMAXU.W
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFF, numeric_limits<int32_t>::min()}, []{return rv32_64a::amomaxu_w(0x80000000, 0xFFFFFFFF);}, "amomaxu.w, sign extend"); // AMOMAXU.W

    // RV64A extension
    // TODO: LR.D, SC.D
    expect<pair<int64_t, int64_t>>({1, -1}, []{return rv32_64a::amoswap_d(-1, 1);}, "amoswap.d"); // AMOSWAP.D
    expect<pair<int64_t, int64_t>>({0x7000000000000000LL, 0x0FFFFFFFFFFFFFFFLL}, []{return rv32_64a::amoadd_d(0x0FFFFFFFFFFFFFFFLL, 0x6000000000000001LL);}, "amoadd.d"); // AMOADD.D
    expect<pair<int64_t, int64_t>>({0, 0x7FFFFFFFFFFFFFFFLL}, []{return rv32_64a::amoadd_d(0x7FFFFFFFFFFFFFFFLL, 0x8000000000000001LL);}, "amoadd.d, overflow"); // AMOADD.D
    expect<pair<int64_t, int64_t>>({-1, 0xAAAAAAAAAAAAAAAALL}, []{return rv32_64a::amoxor_d(0xAAAAAAAAAAAAAAAALL, 0x5555555555555555LL);}, "amoxor.d (1)"); // AMOXOR.D
    expect<pair<int64_t, int64_t>>({0, 0xAAAAAAAAAAAAAAAALL}, []{return rv32_64a::amoxor_d(0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);}, "amoxor.d (0)"); // AMOXOR.D
    expect<pair<int64_t, int64_t>>({0xAAAAAAAAAAAAAAAALL, -1}, []{return rv32_64a::amoand_d(-1, 0xAAAAAAAAAAAAAAAALL);}, "amoand.d"); // AMOAND.D
    expect<pair<int64_t, int64_t>>({-1, 0xAAAAAAAAAAAAAAAALL}, []{return rv32_64a::amoor_d(0xAAAAAAAAAAAAAAAALL, 0x5555555555555555LL);}, "amoor.d"); // AMOOR.D
    expect<pair<int64_t, int64_t>>({-1, -1}, []{return rv32_64a::amomin_d(-1, 0);}, "amomin.d"); // AMOMIN.D
    expect<pair<int64_t, int64_t>>({0, -1}, []{return rv32_64a::amomax_d(-1, 0);}, "amomax.d"); // AMOMAX.D
    expect<pair<uint64_t, uint64_t>>({0, -1}, []{return rv32_64a::amominu_d(-1, 0);}, "amominu.d"); // AMOMINU.D
    expect<pair<uint64_t, uint64_t>>({-1, -1}, []{return rv32_64a::amomaxu_d(-1, 0);}, "amomaxu.d"); // AMOMAXU.D

    // RV32F extension
    // TODO: Figure out how to test the rounding mode capabilities
    expect<uint64_t>(0, []{
        uint64_t rd = numeric_limits<uint64_t>::max();
        asm("fsflags zero,zero;frflags %0" : "=r" (rd));
        return rd;
    }, "clear fsflags");
    expect<float>(3.14, []{return rv32_64f::load(3.14);}, "flw"); // FLW
    expect<float>(1.816, []{return rv32_64f::store(1.816);}, "fsw"); // FSW
    expect<pair<float, uint64_t>>({7.11624, 0x1}, []{return rv32_64f::fmadd_s(3.14, 1.816, 1.414);}, "fmadd.s"); // FMADD.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMADD.S
        pair<float, uint64_t> fd = rv32_64f::fmadd_s(numeric_limits<float>::quiet_NaN(), 3.14, 1.816);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmadd.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMADD.S
        pair<float, uint64_t> fd = rv32_64f::fmadd_s(3.14, numeric_limits<float>::signaling_NaN(), 1.816);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmadd.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmadd_s(3.14, numeric_limits<float>::infinity(), 1.414);}, "fmadd.s, infinity"); // FMADD.S
    expect<pair<float,uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmadd_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fmadd.s, -infinity"); // FMADD.S
    expect<pair<float, uint64_t>>({4.28824, 0x1}, []{return rv32_64f::fmsub_s(3.14, 1.816, 1.414);}, "fmsub.s"); // FMSUB.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMSUB.S
        pair<float, uint64_t> fd = rv32_64f::fmsub_s(3.14, numeric_limits<float>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmsub.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMSUB.S
        pair<float, uint64_t> fd = rv32_64f::fmsub_s(3.14, 1.816, numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmsub.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmsub_s(numeric_limits<float>::infinity(), 1.816, 1.414);}, "fmsub.s, infinity"); // FMSUB.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmsub_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fmsub.s, -infinity"); // FMSUB.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmsub_s(3.14, 1.816, numeric_limits<float>::infinity());}, "fmsub.s, subtract infinity"); // FMSUB.S
    expect<pair<float, uint64_t>>({-4.28824, 0x1}, []{return rv32_64f::fnmsub_s(3.14, 1.816, 1.414);}, "fnmsub.s"); // FNMSUB.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FNMSUB.S
        pair<float, uint64_t> fd = rv32_64f::fnmsub_s(3.14, 1.816, numeric_limits<float>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fnmsub.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FNMSUB.S
        pair<float, uint64_t> fd = rv32_64f::fnmsub_s(numeric_limits<float>::signaling_NaN(), 1.816, 1.414);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fnmsub.s, signaling NaN");
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fnmsub_s(numeric_limits<float>::infinity(), 1.816, 1.414);}, "fnmsub.s, infinity"); // FNMSUB.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fnmsub_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fnmsub.s, -infinity"); // FNMSUB.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fnmsub_s(3.14, 1.816, numeric_limits<float>::infinity());}, "fnmsub.s, subtract infinity"); // FNMSUB.S
    expect<pair<float, uint64_t>>({-7.11624, 0x1}, []{return rv32_64f::fnmadd_s(3.14, 1.816, 1.414);}, "fnmadd.s"); // FNMADD.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FNMADD.S
        pair<float, uint64_t> fd = rv32_64f::fnmadd_s(numeric_limits<float>::quiet_NaN(), 3.14, 1.816);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fnmadd.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FNMADD.S
        pair<float, uint64_t> fd = rv32_64f::fnmadd_s(3.14, numeric_limits<float>::signaling_NaN(), 1.816);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fnmadd.s, signaling NaN");
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fnmadd_s(3.14, numeric_limits<float>::infinity(), 1.414);}, "fnmadd.s, infinity"); // FNMADD.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fnmadd_s(3.14, -numeric_limits<float>::infinity(), 1.414);}, "fnmadd.s, -infinity"); // FNMADD.S
    expect<pair<float, uint64_t>>({4.554, 0x1}, []{return rv32_64f::fadd_s(3.14, 1.414);}, "fadd.s"); // FADD.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FADD.S
        pair<float, uint64_t> fd = rv32_64f::fadd_s(numeric_limits<float>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fadd.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FADD.S
        pair<float, uint64_t> fd = rv32_64f::fadd_s(3.14, numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fadd.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fadd_s(3.14, numeric_limits<float>::infinity());}, "fadd.s, infinity"); // FADD.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fadd_s(-numeric_limits<float>::infinity(), 1.816);}, "fadd.s, -infinity"); // FADD.S
    expect<pair<float, uint64_t>>({rv32_64f::number(0xbfdced92), 0}, []{return rv32_64f::fsub_s(1.414, 3.14);}, "fsub.s"); // FSUB.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSUB.S
        pair<float, uint64_t> fd = rv32_64f::fsub_s(numeric_limits<float>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsub.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSUB.S
        pair<float, uint64_t> fd = rv32_64f::fsub_s(3.14, numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsub.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fsub_s(numeric_limits<float>::infinity(), 3.14);}, "fsub.s, infinity"); // FSUB.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fsub_s(-numeric_limits<float>::infinity(), 3.14);}, "fsub.s, -infinity"); // FSUB.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fsub_s(1.414, numeric_limits<float>::infinity());}, "fsub.s, subtract infinity"); // FSUB.S
    expect<pair<float, uint64_t>>({rv32_64f::number(0x4024573b), 0x1}, []{return rv32_64f::fmul_s(1.816, 1.414);}, "fmul.s"); // FMUL.S
    expect<pair<bool, uint64_t>>({true, 0}, []{  // FMUL.S
        pair<float, uint64_t> fd = rv32_64f::fmul_s(numeric_limits<float>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmul.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMUL.S
        pair<float, uint64_t> fd = rv32_64f::fmul_s(1.816, numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmul.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmul_s(numeric_limits<float>::infinity(), 2.718);}, "fmul.s, infinity"); // FMUL.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmul_s(2.5966, -numeric_limits<float>::infinity());}, "fmul.s, -infinity"); // FMUL.S
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMUL.S
        pair<float, uint64_t> fd = rv32_64f::fmul_s(0.0, numeric_limits<float>::infinity());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmul.s, 0*infinity");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0x5}, []{return rv32_64f::fmul_s(numeric_limits<float>::max(), 2.0);}, "fmul.s, overflow"); // FMUL.S
    expect<pair<float, uint64_t>>({0.0, 0x3}, []{return rv32_64f::fmul_s(numeric_limits<float>::min(), numeric_limits<float>::min());}, "fmul.s, underflow"); // FMUL.S
    expect<pair<float, uint64_t>>({2.5, 0}, []{return rv32_64f::fdiv_s(10.0, 4.0);}, "fdiv.s"); // FDIV.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FDIV.S
        pair<float, uint64_t> fd = rv32_64f::fdiv_s(numeric_limits<float>::quiet_NaN(), 4.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fdiv.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.S
        pair<float, uint64_t> fd = rv32_64f::fdiv_s(10.0, numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fdiv.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0x8}, []{return rv32_64f::fdiv_s(10.0, 0.0);}, "fdiv.s/0"); // FDIV.S
    expect<pair<float,uint64_t>>({0.0, 0}, []{return rv32_64f::fdiv_s(10.0, numeric_limits<float>::infinity());}, "fdiv.s/infinity"); // FDIV.S
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.S
        pair<float, uint64_t> fd = rv32_64f::fdiv_s(numeric_limits<float>::infinity(), numeric_limits<float>::infinity());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fdiv.s, infinity/infinity");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.S
        pair<float, uint64_t> fd = rv32_64f::fdiv_s(0.0, 0.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fdiv.s, 0/0");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fdiv_s(numeric_limits<float>::infinity(), 0.0);}, "fdiv.s, infinity/0"); // FDIV.S
    expect<pair<float, uint64_t>>({0.0, 0}, []{return rv32_64f::fdiv_s(0.0, numeric_limits<float>::infinity());}, "fdiv.s, 0/infinity"); // FDIV.S
    expect<pair<float, uint64_t>>({0.0, 0x3}, []{return rv32_64f::fdiv_s(numeric_limits<float>::min(), numeric_limits<float>::max());}, "fdiv.s, underflow"); // FDIV.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0x5}, []{return rv32_64f::fdiv_s(numeric_limits<float>::max(), numeric_limits<float>::min());}, "fdiv.s, overflow"); // FDIV.S
    expect<pair<float, uint64_t>>({0.3, 0x1}, []{return rv32_64f::fsqrt_s(0.09);}, "fsqrt.s"); // FSQRT.S
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSQRT.S
        pair<float, uint64_t> fd = rv32_64f::fsqrt_s(-1.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsqrt.s, NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSQRT.S
        pair<float, uint64_t> fd = rv32_64f::fsqrt_s(numeric_limits<float>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsqrt.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSQRT.S
        pair<float, uint64_t> fd = rv32_64f::fsqrt_s(numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsqrt.s, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fsqrt_s(numeric_limits<float>::infinity());}, "fsqrt.s, infinity"); // FSQRT.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnj_s(1.0, 25.0);}, "fsgnj.s, ++"); // FSGNJ.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnj_s(1.0, -25.0);}, "fsgnj.s, +-"); // FSGNJ.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnj_s(-1.0, 25.0);}, "fsgnj.s, -+"); // FSGNJ.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnj_s(-1.0, -25.0);}, "fsgnj.s, --"); // FSGNJ.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJ.S
        pair<float, uint64_t> fd = rv32_64f::fsgnj_s(numeric_limits<float>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsgnj.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJ.S
        pair<float, uint64_t> fd = rv32_64f::fsgnj_s(numeric_limits<float>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::issignalingnan(fd.first), fd.second);
    }, "fsgnj.s, signaling NaN");
    expect<pair<float, uint64_t>>({4.0, 0}, []{return rv32_64f::fsgnj_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnj.s, inject NaN"); // FSGNJ.S
    expect<pair<float, uint64_t>>({-4.0, 0}, []{return rv32_64f::fsgnj_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnj.s, inject NaN"); // FSGNJ.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnjn_s(1.0, 25.0);}, "fsgnjn.s, ++"); // FSGNJN.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnjn_s(1.0, -25.0);}, "fsgnjn.s, +-"); // FSGNJN.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnjn_s(-1.0, 25.0);}, "fsgnjn.s, -+"); // FSGNJN.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnjn_s(-1.0, -25.0);}, "fsgnjn.s, --"); // FSGNJN.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJN.S
        pair<float, uint64_t> fd = rv32_64f::fsgnjn_s(numeric_limits<float>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsgnjn.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJN.S
        pair<float, uint64_t> fd = rv32_64f::fsgnjn_s(numeric_limits<float>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::issignalingnan(fd.first), fd.second);
    }, "fsgnjn.s, signaling NaN");
    expect<pair<float, uint64_t>>({-4.0, 0}, []{return rv32_64f::fsgnjn_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnjn.s, inject NaN"); // FSGNJN.S
    expect<pair<float, uint64_t>>({4.0, 0}, []{return rv32_64f::fsgnjn_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnjn.s, inject NaN"); // FSGNJN.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnjx_s(1.0, 25.0);}, "fsgnjx.s, ++"); // FSGNJX.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnjx_s(1.0, -25.0);}, "fsgnjx.s, +-"); // FSGNJX.S
    expect<pair<float, uint64_t>>({-1.0, 0}, []{return rv32_64f::fsgnjx_s(-1.0, 25.0);}, "fsgnjx.s, -+"); // FSGNJX.S
    expect<pair<float, uint64_t>>({1.0, 0}, []{return rv32_64f::fsgnjx_s(-1.0, -25.0);}, "fsgnjx.s, --"); // FSGNJX.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNFX.S
        pair<float, uint64_t> fd = rv32_64f::fsgnjx_s(numeric_limits<float>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsgnjx.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJX.S
        pair<float, uint64_t> fd = rv32_64f::fsgnjx_s(numeric_limits<float>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::issignalingnan(fd.first), fd.second);
    }, "fsgnjx.s, signaling NaN");
    expect<pair<float, uint64_t>>({4.0, 0}, []{return rv32_64f::fsgnjx_s(4.0, numeric_limits<float>::quiet_NaN());}, "fsgnjx.s, inject NaN"); // FSGNJX.S
    expect<pair<float, uint64_t>>({-4.0, 0}, []{return rv32_64f::fsgnjx_s(4.0, -numeric_limits<float>::quiet_NaN());}, "fsgnjx.s, inject -NaN"); // FSGNJX.S
    expect<pair<float, uint64_t>>({2.718, 0}, []{return rv32_64f::fmin_s(3.14, 2.718);}, "fmin.s"); // FMIN.S
    expect<pair<float, uint64_t>>({-numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmin_s(-numeric_limits<float>::infinity(), numeric_limits<float>::min());}, "fmin.s, -infinity"); // FMIN.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::max(), 0}, []{return rv32_64f::fmin_s(numeric_limits<float>::infinity(), numeric_limits<float>::max());}, "fmin.s, infinity"); // FMIN.S
    expect<pair<float, uint64_t>>({-1.414, 0}, []{return rv32_64f::fmin_s(numeric_limits<float>::quiet_NaN(), -1.414);}, "fmin.s, quiet NaN first"); // FMIN.S
    expect<pair<float, uint64_t>>({2.718, 0}, []{return rv32_64f::fmin_s(2.718, numeric_limits<float>::quiet_NaN());}, "fmin.s, quiet NaN second"); // FMIN.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMIN.S
        pair<float, uint64_t> fd = rv32_64f::fmin_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmin.s, quiet NaN both");
    expect<pair<float, uint64_t>>({3.14, 0x10}, []{return rv32_64f::fmin_s(numeric_limits<float>::signaling_NaN(), 3.14);}, "fmin.s, signaling NaN first"); // FMIN.S
    expect<pair<float, uint64_t>>({1.816, 0}, []{return rv32_64f::fmin_s(1.816, numeric_limits<float>::signaling_NaN());}, "fmin.s, signaling NaN second"); // FMIN.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMIN.S
        pair<float, uint64_t> fd = rv32_64f::fmin_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::issignalingnan(fd.first), fd.second);
    }, "fmin.s, signaling NaN both");
    expect<pair<float, uint64_t>>({3.14, 0}, []{return rv32_64f::fmax_s(3.14, 2.718);}, "fmax.s"); // FMAX.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::min(), 0}, []{return rv32_64f::fmax_s(-numeric_limits<float>::infinity(), numeric_limits<float>::min());}, "fmax.s, -infinity"); // FMAX.S
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64f::fmax_s(numeric_limits<float>::infinity(), numeric_limits<float>::max());}, "fmax.s, infinity"); // FMAX.S
    expect<pair<float, uint64_t>>({-1.414, 0}, []{return rv32_64f::fmax_s(numeric_limits<float>::quiet_NaN(), -1.414);}, "fmax.s, quiet NaN first"); // FMAX.S
    expect<pair<float, uint64_t>>({2.718, 0}, []{return rv32_64f::fmax_s(2.718, numeric_limits<float>::quiet_NaN());}, "fmax.s, quiet NaN second"); // FMAX.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMAX.S
        pair<float, uint64_t> fd = rv32_64f::fmax_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fmax.s, quiet NaN both");
    expect<pair<float, uint64_t>>({3.14, 0x10}, []{return rv32_64f::fmax_s(numeric_limits<float>::signaling_NaN(), 3.14);}, "fmax.s, signaling NaN first"); // FMAX.S
    expect<pair<float, uint64_t>>({1.816, 0}, []{return rv32_64f::fmax_s(1.816, numeric_limits<float>::signaling_NaN());}, "fmax.s, signaling NaN second"); // FMAX.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMAX.S
        pair<float, uint64_t> fd = rv32_64f::fmax_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::issignalingnan(fd.first), fd.second);
    }, "fmax.s, signaling NaN both");
    expect<pair<int64_t, uint64_t>>({256, 0x1}, []{return rv32_64f::fcvt_w_s(256.3);}, "fcvt.w.s, truncate positive"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({-256, 0x1}, []{return rv32_64f::fcvt_w_s(-256.2);}, "fcvt.w.s, truncate negative"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_w_s(0.0);}, "fcvt.w.s, 0.0"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_w_s(-0.0);}, "fcvt.w.s, -0.0"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64f::fcvt_w_s(numeric_limits<float>::max());}, "fcvt.w.s, overflow"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({0, 0x1}, []{return rv32_64f::fcvt_w_s(numeric_limits<float>::min());}, "fcvt.w.s, underflow"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64f::fcvt_w_s(numeric_limits<float>::infinity());}, "fcvt.w.s, infinity"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::min(), 0x10}, []{return rv32_64f::fcvt_w_s(-numeric_limits<float>::infinity());}, "fcvt.w.s, -infinity"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64f::fcvt_w_s(numeric_limits<float>::quiet_NaN());}, "fcvt.w.s, quiet NaN"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64f::fcvt_w_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.w.s, quiet -NaN"); // FCVT.W.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64f::fcvt_w_s(numeric_limits<float>::signaling_NaN());}, "fcvt.w.s, signaling NaN"); // FCVT.W.S
    expect<pair<uint64_t, uint64_t>>({256, 0x1}, []{return rv32_64f::fcvt_wu_s(256.3);}, "fcvt.wu.s, truncate positive"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64f::fcvt_wu_s(-256.2);}, "fcvt.wu.s, truncate negative"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_wu_s(0.0);}, "fcvt.wu.s, 0.0"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_wu_s(-0.0);}, "fcvt.wu.s, -0.0"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::max());}, "fcvt.wu.s, overflow"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x1}, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::min());}, "fcvt.wu.s, underflow"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::infinity());}, "fcvt.wu.s, infinity"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64f::fcvt_wu_s(-numeric_limits<float>::infinity());}, "fcvt.wu.s, -infinity"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::quiet_NaN());}, "fcvt.wu.s, quiet NaN"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_wu_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.wu.s, quiet -NaN"); // FCVT.WU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_wu_s(numeric_limits<float>::signaling_NaN());}, "fcvt.wu.s, signaling NaN"); // FCVT.WU.S
    expect<uint64_t>(0x000000004048F5C3ULL, []{return rv32_64f::fmv_x_s(3.14);}, "fmv.x.s, positive"); // FMV.X.S
    expect<uint64_t>(0xFFFFFFFFC048F5C3ULL, []{return rv32_64f::fmv_x_s(-3.14);}, "fmv.x.s, negative"); // FMV.X.S
    expect<uint64_t>(0x0000000000000000ULL, []{return rv32_64f::fmv_x_s(0.0);}, "fmv.x.s, 0.0"); // FMV.X.S
    expect<uint64_t>(0xFFFFFFFF80000000ULL, []{return rv32_64f::fmv_x_s(-0.0);}, "fmv.x.s, -0.0"); // FMV.X.S
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64f::feq_s(1.414, 1.414);}, "feq.s, equal"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::feq_s(2.718, 1.816);}, "feq.s, not equal"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::feq_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "feq.s, quiet NaN first"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::feq_s(2.0, numeric_limits<float>::quiet_NaN());}, "feq.s, quiet NaN second"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::feq_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "feq.s, quiet NaN both"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::feq_s(numeric_limits<float>::signaling_NaN(), -1.0);}, "feq.s, signaling NaN first"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::feq_s(2.0, numeric_limits<float>::signaling_NaN());}, "feq.s, signaling NaN second"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::feq_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN());}, "feq.s, signaling NaN both"); // FEQ.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::flt_s(1.414, 1.414);}, "flt.s, equal"); // FLT.S
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64f::flt_s(1.816, 2.718);}, "flt.s, less"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::flt_s(2.718, 1.816);}, "flt.s, greater"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "flt.s, quiet NaN first"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(2.0, numeric_limits<float>::quiet_NaN());}, "flt.s, quiet NaN second"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "flt.s, quiet NaN both"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(numeric_limits<float>::signaling_NaN(), -1.0);}, "flt.s, signaling NaN first"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(2.0, numeric_limits<float>::signaling_NaN());}, "flt.s, signaling NaN second"); // FLT.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::flt_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN());}, "flt.s, signaling NaN both"); // FLT.S
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64f::fle_s(1.414, 1.414);}, "fle.s, equal"); // FLE.S
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64f::fle_s(1.816, 2.718);}, "fle.s, less"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64f::fle_s(2.718, 1.816);}, "fle.s, greater"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(numeric_limits<float>::quiet_NaN(), -1.0);}, "fle.s, quiet NaN first"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(2.0, numeric_limits<float>::quiet_NaN());}, "fle.s, quiet NaN second"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(numeric_limits<float>::quiet_NaN(), numeric_limits<float>::quiet_NaN());}, "fle.s, quiet NaN both"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(numeric_limits<float>::signaling_NaN(), -1.0);}, "fle.s, signaling NaN first"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(2.0, numeric_limits<float>::signaling_NaN());}, "fle.s, signaling NaN second"); // FLE.S
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64f::fle_s(numeric_limits<float>::signaling_NaN(), numeric_limits<float>::signaling_NaN());}, "fle.s, signaling NaN both"); // FLE.S
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
    int rm = rv32_64f::frrm();
    expect<uint64_t>(0x7, []{ // FSRM
        rv32_64f::fsrm(-1);
        return rv32_64f::frrm();
    }, "fsrm");
    expect<uint64_t>(0x1F, []{ // FSFLAGS
        rv32_64f::fsflags(0);
        rv32_64f::fsflags(-1);
        return rv32_64f::frflags();
    }, "fsflags");
    expect<uint64_t>(0xFF, []{ // FSCSR
        rv32_64f::fsflags(0);
        rv32_64f::fsrm(0);
        rv32_64f::fscsr(-1);
        return rv32_64f::frcsr();
    }, "fscsr");
    expect<int>(rm << 5, [=]{
        rv32_64f::fscsr(0);
        rv32_64f::fsrm(rm);
        return rv32_64f::frcsr();
    }, "restore initial round mode");
    // TODO: FSFLAGSI and FSRMI

    // RV64F extension
    expect<pair<int64_t, uint64_t>>({256, 0x1}, []{return rv32_64f::fcvt_l_s(256.3);}, "fcvt.l.s, truncate positive"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({-256, 0x1}, []{return rv32_64f::fcvt_l_s(-256.2);}, "fcvt.l.s, truncate negative"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_l_s(0.0);}, "fcvt.l.s, 0.0"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_l_s(-0.0);}, "fcvt.l.s, -0.0"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({-8589934592LL, 0}, []{return rv32_64f::fcvt_l_s(-8589934592.0);}, "fcvt.l.s, 32-bit overflow"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64f::fcvt_l_s(numeric_limits<float>::max());}, "fcvt.l.s, overflow"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({0, 0x1}, []{return rv32_64f::fcvt_l_s(numeric_limits<float>::min());}, "fcvt.l.s, underflow"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64f::fcvt_l_s(numeric_limits<float>::infinity());}, "fcvt.l.s, infinity"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::min(), 0x10}, []{return rv32_64f::fcvt_l_s(-numeric_limits<float>::infinity());}, "fcvt.l.s, -infinity"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64f::fcvt_l_s(numeric_limits<float>::quiet_NaN());}, "fcvt.l.s, quiet NaN"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64f::fcvt_l_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.l.s, quiet -NaN"); // FCVT.L.S
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64f::fcvt_l_s(numeric_limits<float>::signaling_NaN());}, "fcvt.l.s, signaling NaN"); // FCVT.L.S
    expect<pair<uint64_t, uint64_t>>({256, 0x1}, []{return rv32_64f::fcvt_lu_s(256.3);}, "fcvt.lu.s, truncate positive"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64f::fcvt_lu_s(-256.2);}, "fcvt.lu.s, truncate negative"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_lu_s(0.0);}, "fcvt.lu.s, 0.0"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64f::fcvt_lu_s(-0.0);}, "fcvt.lu.s, -0.0"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({8589934592LL, 0}, []{return rv32_64f::fcvt_lu_s(8589934592.0);}, "fcvt.lu.s, 32-bit overflow"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::max());}, "fcvt.lu.s, overflow"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x1}, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::min());}, "fcvt.lu.s, underflow"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::infinity());}, "fcvt.lu.s, infinity"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64f::fcvt_lu_s(-numeric_limits<float>::infinity());}, "fcvt.lu.s, -infinity"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::quiet_NaN());}, "fcvt.lu.s, quiet NaN"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_lu_s(-numeric_limits<float>::quiet_NaN());}, "fcvt.lu.s, quiet -NaN"); // FCVT.LU.S
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64f::fcvt_lu_s(numeric_limits<float>::signaling_NaN());}, "fcvt.lu.s, signaling NaN"); // FCVT.LU.S
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
    expect<pair<double, uint64_t>>({rv32_64d::number(0x4019FD5AED13B1CEULL), 0x1}, []{return rv32_64d::fmadd_d(3.1415926, 1.61803398875, 1.41421356237);}, "fmadd.d"); // FMADD.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMADD.D
        pair<double, uint64_t> fd = rv32_64d::fmadd_d(numeric_limits<double>::quiet_NaN(), 3.14, 1.816);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmadd.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMADD.D
        pair<double, uint64_t> fd = rv32_64d::fmadd_d(3.14, numeric_limits<double>::signaling_NaN(), 1.816);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmadd.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmadd_d(3.14, numeric_limits<double>::infinity(), 1.414);}, "fmadd.d, infinity"); // FMADD.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmadd_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fmadd.d, -infinity"); // FMADD.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0x400d5A1773A85E43ULL), 0x1}, []{return rv32_64d::fmsub_d(3.1415926, 1.61803398875, 1.41421356237);}, "fmsub.d"); // FMSUB.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMSUB.D
        pair<double, uint64_t> fd = rv32_64d::fmsub_d(3.14, numeric_limits<double>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmsub.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMSUB.D
        pair<double, uint64_t> fd = rv32_64d::fmsub_d(3.14, 1.816, numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmsub.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmsub_d(numeric_limits<double>::infinity(), 1.816, 1.414);}, "fmsub.d, infinity"); // FMSUB.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmsub_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fmsub.d, -infinity"); // FMSUB.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmsub_d(3.14, 1.816, numeric_limits<double>::infinity());}, "fmsub.d, subtract infinity"); // FMSUB.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0xC00D5A1773A85E43ULL), 0x1}, []{return rv32_64d::fnmsub_d(3.1415926, 1.61803398875, 1.41421356237);}, "fnmsub.d"); // FNMSUB.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FNMSUB.D
        pair<double, uint64_t> fd = rv32_64d::fnmsub_d(3.14, 1.816, numeric_limits<double>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fnmsub.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FNMSUB.D
        pair<double, uint64_t> fd = rv32_64d::fnmsub_d(numeric_limits<double>::signaling_NaN(), 1.816, 1.414);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fnmsub.d, signaling NaN");
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fnmsub_d(numeric_limits<double>::infinity(), 1.816, 1.414);}, "fnmsub.d, infinity"); // FNMSUB.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fnmsub_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fnmsub.d, -infinity"); // FNMSUB.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fnmsub_d(3.14, 1.816, numeric_limits<double>::infinity());}, "fnmsub.d, subtract infinity"); // FNMSUB.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0xC019FD5AED13B1CEULL), 0x1}, []{return rv32_64d::fnmadd_d(3.1415926, 1.61803398875, 1.41421356237);}, "fnmadd.d"); // FNMADD.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FNMADD.D
        pair<double, uint64_t> fd = rv32_64d::fnmadd_d(numeric_limits<double>::quiet_NaN(), 3.14, 1.816);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fnmadd.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FNMADD.D
        pair<double, uint64_t> fd = rv32_64d::fnmadd_d(3.14, numeric_limits<double>::signaling_NaN(), 1.816);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fnmadd.d, signaling NaN");
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fnmadd_d(3.14, numeric_limits<double>::infinity(), 1.414);}, "fnmadd.d, infinity"); // FNMADD.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fnmadd_d(3.14, -numeric_limits<double>::infinity(), 1.414);}, "fnmadd.d, -infinity"); // FNMADD.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0x4012392540292D7CULL), 0x1}, []{return rv32_64d::fadd_d(3.1415926, 1.41421356237);}, "fadd.d"); // FADD.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FADD.D
        pair<double, uint64_t> fd = rv32_64d::fadd_d(numeric_limits<double>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fadd.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FADD.D
        pair<double, uint64_t> fd = rv32_64d::fadd_d(3.14, numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fadd.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fadd_d(3.14, numeric_limits<double>::infinity());}, "fadd.d, infinity"); // FADD.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fadd_d(-numeric_limits<double>::infinity(), 1.816);}, "fadd.d, -infinity"); // FADD.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0xBFFBA35833AB7AAEULL), 0}, []{return rv32_64d::fsub_d(1.4142135623, 3.1415926);}, "fsub.d"); // FSUB.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSUB.D
        pair<double, uint64_t> fd = rv32_64d::fsub_d(numeric_limits<double>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsub.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSUB.D
        pair<double, uint64_t> fd = rv32_64d::fsub_d(3.14, numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsub.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fsub_d(numeric_limits<double>::infinity(), 3.14);}, "fsub.d, infinity"); // FSUB.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fsub_d(-numeric_limits<double>::infinity(), 3.14);}, "fsub.d, -infinity"); // FSUB.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fsub_d(1.414, numeric_limits<double>::infinity());}, "fsub.d, subtract infinity"); // FSUB.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0x40024E53B708ED9AULL), 0x1}, []{return rv32_64d::fmul_d(1.61803398875, 1.4142135623);}, "fmul.d"); // FMUL.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMUL.D
        pair<double, uint64_t> fd = rv32_64d::fmul_d(numeric_limits<double>::quiet_NaN(), 1.414);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmul.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMUL.D
        pair<double, uint64_t> fd = rv32_64d::fmul_d(1.816, numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmul.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmul_d(numeric_limits<double>::infinity(), 2.718);}, "fmul.d, infinity"); // FMUL.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmul_d(2.5966, -numeric_limits<double>::infinity());}, "fmul.d, -infinity"); // FMUL.D
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FMUL.D
        pair<double, uint64_t> fd = rv32_64d::fmul_d(0.0, numeric_limits<double>::infinity());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmul.d, 0*infinity");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0x5}, []{return rv32_64d::fmul_d(numeric_limits<double>::max(), 2.0);}, "fmul.d, overflow"); // FMUL.D
    expect<pair<double, uint64_t>>({0.0, 0x3}, []{return rv32_64d::fmul_d(numeric_limits<double>::min(), numeric_limits<double>::min());}, "fmul.d, underflow"); // FMUL.D
    expect<pair<double, uint64_t>>({2.5, 0}, []{return rv32_64d::fdiv_d(10.0, 4.0);}, "fdiv.d"); // FDIV.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FDIV.D
        pair<double, uint64_t> fd = rv32_64d::fdiv_d(numeric_limits<double>::quiet_NaN(), 4.0);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fdiv.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.D
        pair<double, uint64_t> fd = rv32_64d::fdiv_d(10.0, numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fdiv.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0x8}, []{return rv32_64d::fdiv_d(10.0, 0.0);}, "fdiv.d/0"); // FDIV.D
    expect<pair<double, uint64_t>>({0.0, 0}, []{return rv32_64d::fdiv_d(10.0, numeric_limits<double>::infinity());}, "fdiv.d/infinity"); // FDIV.D
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.D
        pair<double, uint64_t> fd = rv32_64d::fdiv_d(numeric_limits<double>::infinity(), numeric_limits<double>::infinity());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fdiv.d, infinity/infinity");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FDIV.D
        pair<double, uint64_t> fd = rv32_64d::fdiv_d(0.0, 0.0);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fdiv.d, 0/0");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fdiv_d(numeric_limits<double>::infinity(), 0.0);}, "fdiv.d, infinity/0"); // FDIV.D
    expect<pair<double, uint64_t>>({0.0, 0}, []{return rv32_64d::fdiv_d(0.0, numeric_limits<double>::infinity());}, "fdiv.d, 0/infinity"); // FDIV.D
    expect<pair<double, uint64_t>>({0.0, 0x3}, []{return rv32_64d::fdiv_d(numeric_limits<double>::min(), numeric_limits<double>::max());}, "fdiv.d, underflow"); // FDIV.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0x5}, []{return rv32_64d::fdiv_d(numeric_limits<double>::max(), numeric_limits<double>::min());}, "fdiv.d, overflow"); // FDIV.D
    expect<pair<double, uint64_t>>({1e154, 0x1}, []{return rv32_64d::fsqrt_d(1e308);}, "fsqrt.d"); // FSQRT.D
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSQRT.D
        pair<double, uint64_t> fd = rv32_64d::fsqrt_d(-1.0);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsqrt.d, NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSQRT.D
        pair<double, uint64_t> fd = rv32_64d::fsqrt_d(numeric_limits<double>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsqrt.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FSQRT.D
        pair<double, uint64_t> fd = rv32_64d::fsqrt_d(numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsqrt.d, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fsqrt_d(numeric_limits<double>::infinity());}, "fsqrt.d, infinity"); // FSQRT.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnj_d(1.0, 25.0);}, "fsgnj.d, ++"); // FSGNJ.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnj_d(1.0, -25.0);}, "fsgnj.d, +-"); // FSGNJ.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnj_d(-1.0, 25.0);}, "fsgnj.d, -+"); // FSGNJ.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnj_d(-1.0, -25.0);}, "fsgnj.d, --"); // FSGNJ.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJ.D
        pair<double, uint64_t> fd = rv32_64d::fsgnj_d(numeric_limits<double>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fsgnj.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJ.D
        pair<double, uint64_t> fd = rv32_64d::fsgnj_d(numeric_limits<double>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64d::issignalingnan(fd.first), fd.second);
    }, "fsgnj.d, signaling NaN");
    expect<pair<double, uint64_t>>({4.0, 0}, []{return rv32_64d::fsgnj_d(4.0, numeric_limits<double>::quiet_NaN());}, "fsgnj.d, inject NaN"); // FSGNJ.D
    expect<pair<double, uint64_t>>({-4.0, 0}, []{return rv32_64d::fsgnj_d(4.0, -numeric_limits<double>::quiet_NaN());}, "fsgnj.d, inject -NaN"); // FSGNJ.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnjn_d(1.0, 25.0);}, "fsgnjn.d, ++"); // FSGNJN.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnjn_d(1.0, -25.0);}, "fsgnjn.d, +-"); // FSGNJN.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnjn_d(-1.0, 25.0);}, "fsgnjn.d, -+"); // FSGNJN.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnjn_d(-1.0, -25.0);}, "fsgnjn.d, --"); // FSGNJN.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJN.D
        pair<double, uint64_t> fd = rv32_64d::fsgnjn_d(numeric_limits<double>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsgnjn.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJN.D
        pair<double, uint64_t> fd = rv32_64d::fsgnjn_d(numeric_limits<double>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64d::issignalingnan(fd.first), fd.second);
    }, "fsgnjn.d, signaling NaN");
    expect<pair<double, uint64_t>>({-4.0, 0}, []{return rv32_64d::fsgnjn_d(4.0, numeric_limits<double>::quiet_NaN());}, "fsgnjn.d, inject NaN"); // FSGNJN.D
    expect<pair<double, uint64_t>>({4.0, 0}, []{return rv32_64d::fsgnjn_d(4.0, -numeric_limits<double>::quiet_NaN());}, "fsgnjn.d, inject NaN"); // FSGNJN.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnjx_d(1.0, 25.0);}, "fsgnjx.d, ++"); // FSGNJX.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnjx_d(1.0, -25.0);}, "fsgnjx.d, +-"); // FSGNJX.D
    expect<pair<double, uint64_t>>({-1.0, 0}, []{return rv32_64d::fsgnjx_d(-1.0, 25.0);}, "fsgnjx.d, -+"); // FSGNJX.D
    expect<pair<double, uint64_t>>({1.0, 0}, []{return rv32_64d::fsgnjx_d(-1.0, -25.0);}, "fsgnjx.d, --"); // FSGNJX.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJX.D
        pair<double, uint64_t> fd = rv32_64d::fsgnjx_d(numeric_limits<double>::quiet_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fsgnjx.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FSGNJX.D
        pair<double, uint64_t> fd = rv32_64d::fsgnjx_d(numeric_limits<double>::signaling_NaN(), -4.0);
        return pair<bool, uint64_t>(rv32_64d::issignalingnan(fd.first), fd.second);
    }, "fsgnjx.d, signaling NaN");
    expect<pair<double, uint64_t>>({4.0, 0}, []{return rv32_64d::fsgnjx_d(4.0, numeric_limits<double>::quiet_NaN());}, "fsgnjx.d, inject NaN"); // FSGNJX.D
    expect<pair<double, uint64_t>>({-4.0, 0}, []{return rv32_64d::fsgnjx_d(4.0, -numeric_limits<double>::quiet_NaN());}, "fsgnjx.d, inject NaN"); // FSGNJX.D
    expect<pair<double, uint64_t>>({2.718, 0}, []{return rv32_64d::fmin_d(3.14, 2.718);}, "fmin.d"); // FMIN.D
    expect<pair<double, uint64_t>>({-numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmin_d(-numeric_limits<double>::infinity(), numeric_limits<double>::min());}, "fmin.d, -infinity"); // FMIN.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::max(), 0}, []{return rv32_64d::fmin_d(numeric_limits<double>::infinity(), numeric_limits<double>::max());}, "fmin.d, infinity"); // FMIN.D
    expect<pair<double, uint64_t>>({-1.414, 0}, []{return rv32_64d::fmin_d(numeric_limits<double>::quiet_NaN(), -1.414);}, "fmin.d, quiet NaN first"); // FMIN.D
    expect<pair<double, uint64_t>>({2.718, 0}, []{return rv32_64d::fmin_d(2.718, numeric_limits<double>::quiet_NaN());}, "fmin.d, quiet NaN second"); // FMIN.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMIN.D
        pair<double, uint64_t> fd = rv32_64d::fmin_d(numeric_limits<double>::quiet_NaN(), numeric_limits<double>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmin.d, quiet NaN both");
    expect<pair<double, uint64_t>>({3.14, 0x10}, []{return rv32_64d::fmin_d(numeric_limits<double>::signaling_NaN(), 3.14);}, "fmin.d, signaling NaN first"); // FMIN.D
    expect<pair<double, uint64_t>>({1.816, 0}, []{return rv32_64d::fmin_d(1.816, numeric_limits<double>::signaling_NaN());}, "fmin.d, signaling NaN second"); // FMIN.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMIN.D
        pair<double, uint64_t> fd = rv32_64d::fmin_d(numeric_limits<double>::signaling_NaN(), numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::issignalingnan(fd.first), fd.second);
    }, "fmin.d, signaling NaN both");
    expect<pair<double, uint64_t>>({3.14, 0}, []{return rv32_64d::fmax_d(3.14, 2.718);}, "fmax.d"); // FMAX.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::min(), 0}, []{return rv32_64d::fmax_d(-numeric_limits<double>::infinity(), numeric_limits<double>::min());}, "fmax.d, -infinity"); // FMAX.D
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fmax_d(numeric_limits<double>::infinity(), numeric_limits<double>::max());}, "fmax.d, infinity"); // FMAX.D
    expect<pair<double, uint64_t>>({-1.414, 0}, []{return rv32_64d::fmax_d(numeric_limits<double>::quiet_NaN(), -1.414);}, "fmax.d, quiet NaN first"); // FMAX.D
    expect<pair<double, uint64_t>>({2.718, 0}, []{return rv32_64d::fmax_d(2.718, numeric_limits<double>::quiet_NaN());}, "fmax.d, quiet NaN second"); // FMAX.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMAX.D
        pair<double, uint64_t> fd = rv32_64d::fmax_d(numeric_limits<double>::quiet_NaN(), numeric_limits<double>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fmax.d, quiet NaN both");
    expect<pair<double, uint64_t>>({3.14, 0x10}, []{return rv32_64d::fmax_d(numeric_limits<double>::signaling_NaN(), 3.14);}, "fmax.d, signaling NaN first"); // FMAX.D
    expect<pair<double, uint64_t>>({1.816, 0}, []{return rv32_64d::fmax_d(1.816, numeric_limits<double>::signaling_NaN());}, "fmax.d, signaling NaN second"); // FMAX.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FMAX.D
        pair<double, uint64_t> fd = rv32_64d::fmax_d(numeric_limits<double>::signaling_NaN(), numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::issignalingnan(fd.first), fd.second);
    }, "fmax.d, signaling NaN both");
    expect<pair<float, uint64_t>>({4.0, 0}, []{return rv32_64d::fcvt_s_d(4.0);}, "fcvt.s.d"); // FCVT.S.D
    expect<pair<float, uint64_t>>({rv32_64f::number(0x3FCF1BBD), 0x1}, []{return rv32_64d::fcvt_s_d(1.61803398875);}, "fcvt.s.d, inexact"); // FCVT.S.D
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FCVT.S.D
        pair<float, uint64_t> fd = rv32_64d::fcvt_s_d(numeric_limits<double>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fcvt.s.d, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FCVT.S.D
        pair<float, uint64_t> fd = rv32_64d::fcvt_s_d(numeric_limits<double>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64f::isquietnan(fd.first), fd.second);
    }, "fcvt.s.d, signaling NaN");
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0}, []{return rv32_64d::fcvt_s_d(numeric_limits<double>::infinity());}, "fcvt.s.d, infinity"); // FCVT.S.D
    expect<pair<float, uint64_t>>({numeric_limits<float>::infinity(), 0x5}, []{return rv32_64d::fcvt_s_d(numeric_limits<double>::max());}, "fcvt.s.d, overflow"); // FCVT.S.D
    expect<pair<float, uint64_t>>({0.0, 0x3}, []{return rv32_64d::fcvt_s_d(numeric_limits<double>::min());}, "fcvt.s.d, underflow"); // FCVT.S.D
    expect<pair<double, uint64_t>>({rv32_64d::number(0x4005BE76C0000000), 0}, []{return rv32_64d::fcvt_d_s(2.718);}, "fcvt.d.s"); // FCVT.D.S
    expect<pair<bool, uint64_t>>({true, 0}, []{ // FCVT.D.S
        pair<double, uint64_t> fd = rv32_64d::fcvt_d_s(numeric_limits<float>::quiet_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fcvt.d.s, quiet NaN");
    expect<pair<bool, uint64_t>>({true, 0x10}, []{ // FCVT.D.S
        pair<double, uint64_t> fd = rv32_64d::fcvt_d_s(numeric_limits<float>::signaling_NaN());
        return pair<bool, uint64_t>(rv32_64d::isquietnan(fd.first), fd.second);
    }, "fcvt.d.s, signaling NaN");
    expect<pair<double, uint64_t>>({numeric_limits<double>::infinity(), 0}, []{return rv32_64d::fcvt_d_s(numeric_limits<float>::infinity());}, "fcvt.d.s, infinity"); // FCVT.D.S
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64d::feq_d(1.414, 1.414);}, "feq.d, equal"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::feq_d(2.718, 1.816);}, "feq.d, not equal"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::feq_d(numeric_limits<double>::quiet_NaN(), -1.0);}, "feq.d, quiet NaN first"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::feq_d(2.0, numeric_limits<double>::quiet_NaN());}, "feq.d, quiet NaN second"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::feq_d(numeric_limits<double>::quiet_NaN(), numeric_limits<double>::quiet_NaN());}, "feq.d, quiet NaN both"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::feq_d(numeric_limits<double>::signaling_NaN(), -1.0);}, "feq.d, signaling NaN first"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::feq_d(2.0, numeric_limits<double>::signaling_NaN());}, "feq.d, signaling NaN second"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::feq_d(numeric_limits<double>::signaling_NaN(), numeric_limits<double>::signaling_NaN());}, "feq.d, signaling NaN both"); // FEQ.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::flt_d(1.414, 1.414);}, "flt.d, equal"); // FLT.D
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64d::flt_d(1.816, 2.718);}, "flt.d, less"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::flt_d(2.718, 1.816);}, "flt.d, greater"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(numeric_limits<double>::quiet_NaN(), -1.0);}, "flt.d, quiet NaN first"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(2.0, numeric_limits<double>::quiet_NaN());}, "flt.d, quiet NaN second"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(numeric_limits<double>::quiet_NaN(), numeric_limits<double>::quiet_NaN());}, "flt.d, quiet NaN both"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(numeric_limits<double>::signaling_NaN(), -1.0);}, "flt.d, signaling NaN first"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(2.0, numeric_limits<double>::signaling_NaN());}, "flt.d, signaling NaN second"); // FLT.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::flt_d(numeric_limits<double>::signaling_NaN(), numeric_limits<double>::signaling_NaN());}, "flt.d, signaling NaN both"); // FLT.D
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64d::fle_d(1.414, 1.414);}, "fle.d, equal"); // FLE.D
    expect<pair<bool, uint64_t>>({true, 0}, []{return rv32_64d::fle_d(1.816, 2.718);}, "fle.d, less"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0}, []{return rv32_64d::fle_d(2.718, 1.816);}, "fle.d, greater"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(numeric_limits<double>::quiet_NaN(), -1.0);}, "fle.d, quiet NaN first"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(2.0, numeric_limits<double>::quiet_NaN());}, "fle.d, quiet NaN second"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(numeric_limits<double>::quiet_NaN(), numeric_limits<double>::quiet_NaN());}, "fle.d, quiet NaN both"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(numeric_limits<double>::signaling_NaN(), -1.0);}, "fle.d, signaling NaN first"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(2.0, numeric_limits<double>::signaling_NaN());}, "fle.d, signaling NaN second"); // FLE.D
    expect<pair<bool, uint64_t>>({false, 0x10}, []{return rv32_64d::fle_d(numeric_limits<double>::signaling_NaN(), numeric_limits<double>::signaling_NaN());}, "fle.d, signaling NaN both"); // FLE.D
    expect<uint64_t>(0x1, []{return rv32_64d::fclass_d(-numeric_limits<double>::infinity());}, "fclass.d, -infinity"); // FCLASS.D
    expect<uint64_t>(0x2, []{return rv32_64d::fclass_d(-3.14);}, "fclass.d, -normal"); // FCLASS.D
    expect<uint64_t>(0x4, []{return rv32_64d::fclass_d(rv32_64d::number(0x800FFFFFFFFFFFFFULL));}, "fclass.d, -subnormal"); // FCLASS.D
    expect<uint64_t>(0x8, []{return rv32_64d::fclass_d(-0.0);}, "fclass.d, -0.0"); // FCLASS.D
    expect<uint64_t>(0x10, []{return rv32_64d::fclass_d(0.0);}, "fclass.d, 0.0"); // FCLASS.D
    expect<uint64_t>(0x20, []{return rv32_64d::fclass_d(rv32_64d::number(0x000FFFFFFFFFFFFFULL));}, "fclass.d, subnormal"); // FCLASS.D
    expect<uint64_t>(0x40, []{return rv32_64d::fclass_d(1.816);}, "fclass.d, normal"); // FCLASS.D
    expect<uint64_t>(0x80, []{return rv32_64d::fclass_d(numeric_limits<double>::infinity());}, "fclass.d, infinity"); // FCLASS.D
    expect<uint64_t>(0x100, []{return rv32_64d::fclass_d(numeric_limits<double>::signaling_NaN());}, "fclass.d, signaling NaN"); // FCLASS.D
    expect<uint64_t>(0x200, []{return rv32_64d::fclass_d(numeric_limits<double>::quiet_NaN());}, "fclass.s, quiet NaN"); // FCLASS.D
    expect<pair<int64_t, uint64_t>>({256, 0x1}, []{return rv32_64d::fcvt_w_d(256.3);}, "fcvt.w.d, truncate positive"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({-256, 0x1}, []{return rv32_64d::fcvt_w_d(-256.2);}, "fcvt.w.d, truncate negative"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_w_d(0.0);}, "fcvt.w.d, 0.0"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_w_d(-0.0);}, "fcvt.w.d, -0.0"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64d::fcvt_w_d(numeric_limits<double>::max());}, "fcvt.w.d, overflow"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({0, 0x1}, []{return rv32_64d::fcvt_w_d(numeric_limits<double>::min());}, "fcvt.w.d, underflow"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64d::fcvt_w_d(numeric_limits<double>::infinity());}, "fcvt.w.d, infinity"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::min(), 0x10}, []{return rv32_64d::fcvt_w_d(-numeric_limits<double>::infinity());}, "fcvt.w.d, -infinity"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64d::fcvt_w_d(numeric_limits<double>::quiet_NaN());}, "fcvt.w.d, quiet NaN"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64d::fcvt_w_d(-numeric_limits<double>::quiet_NaN());}, "fcvt.w.d, quiet -NaN"); // FCVT.W.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int32_t>::max(), 0x10}, []{return rv32_64d::fcvt_w_d(numeric_limits<double>::signaling_NaN());}, "fcvt.w.d, signaling NaN"); // FCVT.W.D
    expect<pair<uint64_t, uint64_t>>({256, 0x1}, []{return rv32_64d::fcvt_wu_d(256.3);}, "fcvt.wu.d, truncate positive"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64d::fcvt_wu_d(-256.2);}, "fcvt.wu.d, truncate negative"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_wu_d(0.0);}, "fcvt.wu.d, 0.0"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_wu_d(-0.0);}, "fcvt.wu.d, -0.0"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64d::fcvt_wu_d(numeric_limits<double>::max());}, "fcvt.wu.d, overflow"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x1}, []{return rv32_64d::fcvt_wu_d(numeric_limits<double>::min());}, "fcvt.wu.d, underflow"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64d::fcvt_wu_d(numeric_limits<double>::infinity());}, "fcvt.wu.d, infinity"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64d::fcvt_wu_d(-numeric_limits<double>::infinity());}, "fcvt.wu.d, -infinity"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_wu_d(numeric_limits<double>::quiet_NaN());}, "fcvt.wu.d, quiet NaN"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_wu_d(-numeric_limits<double>::quiet_NaN());}, "fcvt.wu.d, quiet -NaN"); // FCVT.WU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_wu_d(numeric_limits<double>::signaling_NaN());}, "fcvt.wu.d, signaling NaN"); // FCVT.WU.D
    expect<double>(0.0, []{return rv32_64d::fcvt_d_w(0);}, "fcvt.d.w, 0"); // FCVT.D.W
    expect<double>(-2147483648.0, []{return rv32_64d::fcvt_d_w(numeric_limits<int32_t>::min());}, "fcvt.d.w, negative"); // FCVT.D.W
    expect<double>(255.0, []{return rv32_64d::fcvt_d_w(0xFFFFFFFF000000FFLL);}, "fcvt.d.w, truncate"); // FCVT.D.W
    expect<double>(0.0, []{return rv32_64d::fcvt_d_wu(0);}, "fcvt.d.wu, 0"); // FCVT.D.WU
    expect<double>(2147483648.0, []{return rv32_64d::fcvt_d_wu(numeric_limits<int32_t>::min());}, "fcvt.d.wu"); // FCVT.D.WU
    expect<double>(255.0, []{return rv32_64d::fcvt_d_wu(0xFFFFFFFF000000FFLL);}, "fcvt.d.wu, truncate"); // FCVT.D.WU

    // RV64D extension
    expect<pair<int64_t, uint64_t>>({256, 0x1}, []{return rv32_64d::fcvt_l_d(256.3);}, "fcvt.l.d, truncate positive"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({-256, 0x1}, []{return rv32_64d::fcvt_l_d(-256.2);}, "fcvt.l.s, truncate negative"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_l_d(0.0);}, "fcvt.l.d, 0.0"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_l_d(-0.0);}, "fcvt.l.d, -0.0"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({-8589934592LL, 0}, []{return rv32_64d::fcvt_l_d(-8589934592.0);}, "fcvt.l.d, 32-bit overflow"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64d::fcvt_l_d(numeric_limits<double>::max());}, "fcvt.l.d, overflow"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({0, 0x1}, []{return rv32_64d::fcvt_l_d(numeric_limits<double>::min());}, "fcvt.l.d, underflow"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64d::fcvt_l_d(numeric_limits<double>::infinity());}, "fcvt.l.d, infinity"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::min(), 0x10}, []{return rv32_64d::fcvt_l_d(-numeric_limits<double>::infinity());}, "fcvt.l.d, -infinity"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64d::fcvt_l_d(numeric_limits<double>::quiet_NaN());}, "fcvt.l.d, quiet NaN"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64d::fcvt_l_d(-numeric_limits<double>::quiet_NaN());}, "fcvt.l.d, quiet -NaN"); // FCVT.L.D
    expect<pair<int64_t, uint64_t>>({numeric_limits<int64_t>::max(), 0x10}, []{return rv32_64d::fcvt_l_d(numeric_limits<double>::signaling_NaN());}, "fcvt.l.d, signaling NaN"); // FCVT.L.D
    expect<pair<uint64_t, uint64_t>>({256, 0x1}, []{return rv32_64d::fcvt_lu_d(256.3);}, "fcvt.lu.d, truncate positive"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64d::fcvt_lu_d(-256.2);}, "fcvt.lu.d, truncate negative"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_lu_d(0.0);}, "fcvt.lu.d, 0.0"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0, 0}, []{return rv32_64d::fcvt_lu_d(-0.0);}, "fcvt.lu.d, -0.0"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({8589934592LL, 0}, []{return rv32_64d::fcvt_lu_d(8589934592.0);}, "fcvt.lu.d, 32-bit overflow"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64d::fcvt_lu_d(numeric_limits<double>::max());}, "fcvt.lu.d, overflow"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x1}, []{return rv32_64d::fcvt_lu_d(numeric_limits<double>::min());}, "fcvt.lu.d, underflow"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({numeric_limits<uint64_t>::max(), 0x10}, []{return rv32_64d::fcvt_lu_d(numeric_limits<double>::infinity());}, "fcvt.lu.d, infinity"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0, 0x10}, []{return rv32_64d::fcvt_lu_d(-numeric_limits<double>::infinity());}, "fcvt.lu.d, -infinity"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_lu_d(numeric_limits<double>::quiet_NaN());}, "fcvt.lu.d, quiet NaN"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_lu_d(-numeric_limits<double>::quiet_NaN());}, "fcvt.lu.d, quiet -NaN"); // FCVT.LU.D
    expect<pair<uint64_t, uint64_t>>({0xFFFFFFFFFFFFFFFFULL, 0x10}, []{return rv32_64d::fcvt_lu_d(numeric_limits<double>::signaling_NaN());}, "fcvt.lu.d, signaling NaN"); // FCVT.LU.D
    expect<uint64_t>(0x40091EB851EB851FULL, []{return rv32_64d::fmv_x_d(3.14);}, "fmv.x.d, positive"); // FMV.X.D
    expect<uint64_t>(0xC0091EB851EB851FULL, []{return rv32_64d::fmv_x_d(-3.14);}, "fmv.x.d, negative"); // FMV.X.D
    expect<uint64_t>(0x0000000000000000ULL, []{return rv32_64d::fmv_x_d(0.0);}, "fmv.x.d, 0.0"); // FMV.X.D
    expect<uint64_t>(0x8000000000000000ULL, []{return rv32_64d::fmv_x_d(-0.0);}, "fmv.x.d, -0.0"); // FMV.X.D
    expect<double>(0.0, []{return rv32_64d::fcvt_d_l(0);}, "fcvt.d.l, 0"); // FCVT.D.L
    expect<double>(rv32_64d::number(0xC3E0000000000000), []{return rv32_64d::fcvt_d_l(numeric_limits<int64_t>::min());}, "fcvt.d.l, negative"); // FCVT.D.L
    expect<double>(rv32_64d::number(0xC1EFFFFFE0200000), []{return rv32_64d::fcvt_d_l(0xFFFFFFFF000000FFLL);}, "fcvt.d.l, 32-bit truncate"); // FCVT.D.L
    expect<double>(0.0, []{return rv32_64d::fcvt_d_lu(0);}, "fcvt.d.lu, 0"); // FCVT.D.LU
    expect<double>(rv32_64d::number(0x43E0000000000000), []{return rv32_64d::fcvt_d_lu(numeric_limits<int64_t>::min());}, "fcvt.d.lu"); // FCVT.D.LU
    expect<double>(rv32_64d::number(0x43EFFFFFFFE00000), []{return rv32_64d::fcvt_d_lu(0xFFFFFFFF000000FFLL);}, "fcvt.d.lu, 32-bit truncate"); // FCVT.D.LU
    expect<double>(-numeric_limits<float>::infinity(), []{return rv32_64d::fmv_d_x(0xFFF0000000000000ULL);}, "fmv.d.x"); // FMV.D.X

    cout << passes << " tests passed; " << failures << " failed." << endl;

    return 0;
}
