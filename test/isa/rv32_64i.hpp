#pragma once

#include <type_traits>

#define ROP(inst, rd, rs1, rs2) asm(inst " %0,%1,%2" : "=r" (rd) : "r" (rs1), "r" (rs2))

namespace rv32_64i
{
    template<typename M, typename R>
    R load(M b)
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
    uint64_t store(M b)
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
}

#define REG_IMM(rs1_type, rd_type, reg, result, inst, imm)  \
do                                                          \
{                                                           \
    rs1_type rs1 = (reg);                                   \
    rd_type rd = (result);                                  \
    asm(inst " %0,%1," #imm                                 \
        : "=r" (rd)                                         \
        : "r" (rs1));                                       \
    return rd;                                              \
}                                                           \
while (false)
#define ADDI(type, reg, result, imm) REG_IMM(type, int64_t, reg, result, "addi", imm)
#define SLTI(reg, result, imm) REG_IMM(int64_t, bool, reg, result, "slti", imm)
#define SLTIU(reg, result, imm) REG_IMM(int64_t, bool, reg, result, "sltiu", imm)
#define BITI(inst, reg, result, imm) REG_IMM(uint64_t, uint64_t, reg, result, inst, imm)
#define SHIFTI(inst, reg, result, imm) REG_IMM(int64_t, int64_t, reg, result, inst, imm)

#define REG_REG(rs1_type, rs2_type, rd_type, s1, s2, result, inst)  \
do                                                                  \
{                                                                   \
    rs1_type rs1 = (s1);                                            \
    rs2_type rs2 = (s2);                                            \
    rd_type rd = (result);                                          \
    asm(inst " %0,%1,%2"                                            \
        : "=r" (rd)                                                 \
        : "r" (rs1), "r" (rs2));                                    \
    return rd;                                                      \
} while (false)
#define ADD(rs_type, rs1, rs2, result) REG_REG(rs_type, rs_type, int64_t, rs1, rs2, result, "add")
#define SUB(rs_type, rs1, rs2, result) REG_REG(rs_type, rs_type, int64_t, rs1, rs2, result, "sub")
#define SHIFT(inst, rs1, rs2, result) REG_REG(int64_t, int64_t, int64_t, rs1, rs2, result, inst)
#define SLT(rs1, rs2, result) REG_REG(int64_t, int64_t, bool, rs1, rs2, result, "slt")
#define SLTU(rs1, rs2, result) REG_REG(int64_t, int64_t, bool, rs1, rs2, result, "sltu")
#define BIT(inst, rs1, rs2, result) REG_REG(uint64_t, uint64_t, uint64_t, rs1, rs2, result, inst)

#define ADDIW(type, reg, result, imm) REG_IMM(type, int64_t, reg, result, "addiw", imm)
#define SHIFTIW(inst, type, reg, result, imm) REG_IMM(type, int64_t, reg, result, inst, imm)
#define ADDW(rs_type, rs1, rs2, result) REG_REG(rs_type, rs_type, int64_t, rs1, rs2, result, "addw")
#define SUBW(rs_type, rs1, rs2, result) REG_REG(rs_type, rs_type, int64_t, rs1, rs2, result, "subw")
#define SHIFTW(inst, rs_type, rs1, rs2, result) REG_REG(rs_type, rs_type, int64_t, rs1, rs2, result, inst)
