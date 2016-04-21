#pragma once

#include <type_traits>

#define ROP(inst, rd, rs1, rs2) asm volatile(inst " %0,%1,%2" : "=r" (rd) : "r" (rs1), "r" (rs2))

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
                asm volatile("lb %0,%1"
                    : "=r" (a)
                    : "m" (b));
            else
                asm volatile("lbu %0,%1"
                    : "=r" (a)
                    : "m" (b));
            break;
        case 2:
            if (std::is_signed<M>::value)
                asm volatile("lh %0,%1"
                    : "=r" (a)
                    : "m" (b));
            else
                asm volatile("lhu %0,%1"
                    : "=r" (a)
                    : "m" (b));
            break;
        case 4:
            if (std::is_signed<M>::value)
                asm volatile("lw %0,%1"
                    : "=r" (a)
                    : "m" (b));
            else
                asm volatile("lwu %0,%1"
                    : "=r" (a)
                    : "m" (b));
            break;
        case 8:
            asm volatile("ld %0,%1"
                : "=r" (a)
                : "m" (b));
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
            asm volatile("sb %0,%1"
                :
                : "r" (b), "m" (a));
            break;
        case 2:
            asm volatile("sh %0,%1"
                :
                : "r" (b), "m" (a));
            break;
        case 4:
            asm volatile("sw %0,%1"
                :
                : "r" (b), "m" (a));
            break;
        case 8:
            asm volatile("sd %0,%1"
                :
                : "r" (b), "m" (a));
            break;
        }
        return a;
    }

    inline int64_t add(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("add", rd, rs1, rs2);
        return rd;
    }

    inline int64_t sub(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("sub", rd, rs1, rs2);
        return rd;
    }

    inline int64_t sll(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("sll", rd, rs1, rs2);
        return rd;
    }

    inline bool slt(int64_t rs1, int64_t rs2)
    {
        bool rd = false;
        ROP("slt", rd, rs1, rs2);
        return rd;
    }

    inline bool sltu(uint64_t rs1, uint64_t rs2)
    {
        bool rd = false;
        ROP("sltu", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t xor_inst(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("xor", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t srl(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("srl", rd, rs1, rs2);
        return rd;
    }
    
    inline int64_t sra(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("sra", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t or_inst(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("or", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t and_inst(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("and", rd, rs1, rs2);
        return rd;
    }

    inline int64_t addw(int64_t rs1,  int64_t rs2)
    {
        int64_t rd = 0;
        ROP("addw", rd, rs1, rs2);
        return rd;
    }

    inline int64_t subw(int64_t rs1,  int64_t rs2)
    {
        int64_t rd = 0;
        ROP("subw", rd, rs1, rs2);
        return rd;
    }

    inline int64_t sllw(int64_t rs1,  int64_t rs2)
    {
        int64_t rd = 0;
        ROP("sllw", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t srlw(uint64_t rs1,  uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("srlw", rd, rs1, rs2);
        return rd;
    }

    inline int64_t sraw(int64_t rs1,  int64_t rs2)
    {
        int64_t rd = 0;
        ROP("sraw", rd, rs1, rs2);
        return rd;
    }
}

#define REG_IMM(rs1_type, rd_type, reg, result, inst, imm)  \
do                                                          \
{                                                           \
    rs1_type rs1 = (reg);                                   \
    rd_type rd = (result);                                  \
    asm volatile(inst " %0,%1," #imm                                 \
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
    asm volatile(inst " %0,%1,%2"                                            \
        : "=r" (rd)                                                 \
        : "r" (rs1), "r" (rs2));                                    \
    return rd;                                                      \
} while (false)

#define ADDIW(type, reg, result, imm) REG_IMM(type, int64_t, reg, result, "addiw", imm)
#define SHIFTIW(inst, type, reg, result, imm) REG_IMM(type, int64_t, reg, result, inst, imm)
